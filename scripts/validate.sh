#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SKILLS_DIR="${REPO_ROOT}/skills"
EVALS_DIR="${REPO_ROOT}/scripts/evals"
PLUGINS_DIR="${REPO_ROOT}/plugins"

if [[ ! -d "${SKILLS_DIR}" ]]; then
  echo "ERROR: skills directory not found at ${SKILLS_DIR}" >&2
  exit 1
fi

if [[ ! -d "${EVALS_DIR}/skills" ]]; then
  echo "ERROR: eval artifacts directory not found at ${EVALS_DIR}/skills" >&2
  exit 1
fi

if [[ ! -d "${PLUGINS_DIR}" ]]; then
  echo "ERROR: plugins directory not found at ${PLUGINS_DIR}" >&2
  exit 1
fi

echo "==> Running read-only repository checks"
REPO_ROOT="${REPO_ROOT}" python3 - <<'PY'
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit


repo_root = Path(os.environ["REPO_ROOT"])
skills_dir = repo_root / "skills"
evals_dir = repo_root / "scripts" / "evals" / "skills"
plugins_dir = repo_root / "plugins"
versions_md = repo_root / "VERSIONS.md"
bundles_md = plugins_dir / "BUNDLES.md"
marketplace_json = repo_root / ".claude-plugin" / "marketplace.json"

required_sections = [
    "## Confirm Inputs First",
    "## Default Workflow",
    "## Output Contract",
    "## Quality Bar",
]

placeholder_markers = [
    "[REQUIRED]",
    "Describe what this skill does here",
    "Describe what this skill does and when to use it",
    "Add a one-line mission for the skill here",
    "Use $",
]

marketplace_schema = "https://json.schemastore.org/claude-code-marketplace.json"
required_plugin_metadata = ["author", "homepage", "repository", "license"]
errors: list[str] = []
warnings: list[str] = []

skill_dirs = sorted(p for p in skills_dir.iterdir() if p.is_dir())
skill_names = {p.name for p in skill_dirs}


def load_json(path: Path, label: str) -> dict | None:
    try:
        value = json.loads(path.read_text())
    except FileNotFoundError:
        errors.append(f"Missing {label}: {path.relative_to(repo_root)}")
        return None
    except json.JSONDecodeError as exc:
        errors.append(f"Invalid JSON in {label} ({exc})")
        return None
    if not isinstance(value, dict):
        errors.append(f"{label} must contain a JSON object")
        return None
    return value


def unquote_scalar(value: str) -> str:
    value = value.strip()
    if len(value) >= 2 and value[0] == value[-1] and value[0] in {"'", '"'}:
        return value[1:-1]
    return value


def parse_frontmatter(text: str, skill_name: str) -> dict[str, str] | None:
    match = re.match(r"^---\r?\n(.*?)\r?\n---\r?\n", text, flags=re.S)
    if not match:
        errors.append(f"{skill_name}: invalid or missing YAML frontmatter block")
        return None

    values: dict[str, str] = {}
    keys: list[str] = []
    for line in match.group(1).splitlines():
        if not line.strip():
            continue
        if line.startswith((" ", "\t")) or ":" not in line:
            errors.append(f"{skill_name}: frontmatter must use one-line top-level name and description fields")
            return None
        key, raw_value = line.split(":", 1)
        key = key.strip()
        keys.append(key)
        values[key] = unquote_scalar(raw_value)

    if len(keys) != len(set(keys)):
        errors.append(f"{skill_name}: frontmatter contains duplicate keys")
    if set(keys) != {"name", "description"}:
        errors.append(
            f"{skill_name}: frontmatter keys must be exactly name+description, got {sorted(set(keys))}"
        )
    return values


def extract_route_candidates(text: str) -> set[str]:
    candidates = set()
    for line in text.splitlines():
        for candidate in re.findall(
            r"\b[Rr]oute\b.*?\bto ([a-z0-9]+(?:-[a-z0-9]+)+)\b",
            line,
        ):
            candidates.add(candidate)
        for candidate in re.findall(
            r"\b[Ff]or\b.*?\buse ([a-z0-9]+(?:-[a-z0-9]+)+)\b",
            line,
        ):
            candidates.add(candidate)
    return candidates


def parse_bundle_versions(text: str) -> dict[str, str]:
    versions: dict[str, str] = {}
    for line in text.splitlines():
        match = re.match(r"\| `([^`]+)` \| `([^`]+)` \|", line.strip())
        if match and match.group(1) != "repo":
            versions[match.group(1)] = match.group(2)
    return versions


def parse_bundle_members(text: str) -> dict[str, set[str]]:
    bundles: dict[str, set[str]] = {}
    current_bundle: str | None = None
    for line in text.splitlines():
        heading = re.match(r"## ([a-z0-9-]+)$", line.strip())
        if heading:
            current_bundle = heading.group(1)
            bundles[current_bundle] = set()
            continue
        bullet = re.match(r"- `([^`]+)`$", line.strip())
        if bullet and current_bundle:
            bundles[current_bundle].add(bullet.group(1))
    return bundles


def tracked_markdown_files() -> list[Path]:
    try:
        result = subprocess.run(
            ["git", "-C", str(repo_root), "ls-files", "-z", "--", "*.md"],
            check=False,
            capture_output=True,
        )
    except FileNotFoundError:
        result = None

    if result is not None and result.returncode == 0:
        files = []
        for raw_path in result.stdout.split(b"\0"):
            if not raw_path:
                continue
            path = repo_root / raw_path.decode()
            if path.is_file():
                files.append(path)
        return sorted(files)

    return sorted(
        p for p in repo_root.rglob("*.md") if ".git" not in p.relative_to(repo_root).parts
    )


def markdown_link_target(raw_target: str) -> str | None:
    target = raw_target.strip()
    if not target:
        return None
    if target.startswith("<") and ">" in target:
        target = target[1 : target.index(">")]
    else:
        target = target.split(maxsplit=1)[0]
    target = unquote(target)
    if target.startswith("#"):
        return None
    parsed = urlsplit(target)
    if parsed.scheme or target.startswith("//"):
        return None
    local_target = target.split("#", 1)[0].split("?", 1)[0]
    return local_target or None


for markdown_path in tracked_markdown_files():
    text = markdown_path.read_text(errors="replace")
    for raw_target in re.findall(r"!?\[[^\]]*\]\(([^)]+)\)", text):
        target = markdown_link_target(raw_target)
        if target is None:
            continue
        resolved = Path(target) if target.startswith("/") else markdown_path.parent / target
        if not resolved.resolve().exists():
            errors.append(
                f"{markdown_path.relative_to(repo_root)}: broken relative link '{target}'"
            )


for skill_dir in skill_dirs:
    skill_name = skill_dir.name
    skill_md = skill_dir / "SKILL.md"
    openai_yaml = skill_dir / "agents" / "openai.yaml"
    eval_json = evals_dir / f"{skill_name}.json"

    if not skill_md.is_file():
        errors.append(f"{skill_name}: missing SKILL.md")
        continue
    if not openai_yaml.is_file():
        errors.append(f"{skill_name}: missing agents/openai.yaml")
    if not eval_json.is_file():
        errors.append(f"{skill_name}: missing eval artifact at scripts/evals/skills/{skill_name}.json")

    text = skill_md.read_text()
    if "[TODO" in text or "Structuring This Skill" in text:
        errors.append(f"{skill_name}: contains scaffold placeholders")
    if any(marker in text for marker in placeholder_markers):
        errors.append(f"{skill_name}: contains unresolved scaffold placeholders")

    frontmatter = parse_frontmatter(text, skill_name)
    if frontmatter is not None:
        frontmatter_name = frontmatter.get("name", "")
        description = frontmatter.get("description", "")
        if frontmatter_name != skill_name:
            errors.append(
                f"{skill_name}: frontmatter name '{frontmatter_name}' must match its directory"
            )
        if not re.fullmatch(r"[a-z0-9]+(?:-[a-z0-9]+)*", frontmatter_name):
            errors.append(f"{skill_name}: frontmatter name is not lowercase kebab-case")
        if not (1 <= len(frontmatter_name) <= 64):
            errors.append(f"{skill_name}: frontmatter name must be 1-64 characters")
        if not (1 <= len(description) <= 1024):
            errors.append(f"{skill_name}: description must be 1-1024 characters")

        for candidate in sorted(extract_route_candidates(description)):
            if candidate != skill_name and candidate not in skill_names:
                errors.append(f"{skill_name}: references missing skill '{candidate}' in description")

    section_positions: dict[str, int] = {}
    for section in required_sections:
        position = text.find(section)
        if position < 0:
            errors.append(f"{skill_name}: missing required section '{section}'")
        else:
            section_positions[section] = position
    if len(section_positions) == len(required_sections):
        ordered_positions = [section_positions[section] for section in required_sections]
        if ordered_positions != sorted(ordered_positions):
            errors.append(f"{skill_name}: required sections are out of order")

    confirm_position = text.find("## Confirm Inputs First")
    workflow_position = text.find("## Default Workflow")
    output_position = text.find("## Output Contract")
    reference_position = text.find("## Read The Right Reference")
    tool_position = text.find("## Tool Notes")
    if reference_position >= 0 and not (
        confirm_position < reference_position < workflow_position
    ):
        warnings.append(
            f"{skill_name}: 'Read The Right Reference' should appear between input confirmation and the workflow"
        )
    if tool_position >= 0 and not (workflow_position < tool_position < output_position):
        warnings.append(
            f"{skill_name}: 'Tool Notes' should appear between the workflow and output contract"
        )

    for candidate in sorted(extract_route_candidates(text)):
        if candidate != skill_name and candidate not in skill_names:
            errors.append(f"{skill_name}: references missing skill '{candidate}' in body/route text")

    yaml_text = openai_yaml.read_text() if openai_yaml.is_file() else ""
    if yaml_text and not re.search(r"^interface:\s*$", yaml_text, flags=re.M):
        errors.append(f"{skill_name}: openai.yaml missing top-level interface block")
    display_match = re.search(r'display_name:\s*"([^"]+)"', yaml_text)
    short_match = re.search(r'short_description:\s*"([^"]+)"', yaml_text)
    prompt_match = re.search(r'default_prompt:\s*"([^"]+)"', yaml_text)

    if not display_match:
        errors.append(f"{skill_name}: openai.yaml missing interface.display_name")
    if not short_match:
        errors.append(f"{skill_name}: openai.yaml missing interface.short_description")
    if not prompt_match:
        errors.append(f"{skill_name}: openai.yaml missing interface.default_prompt")
    else:
        prompt = prompt_match.group(1)
        if f"${skill_name}" not in prompt:
            errors.append(f"{skill_name}: default_prompt must reference ${skill_name}")
        if "[REQUIRED]" in prompt or prompt == f"Use ${skill_name} for this task.":
            errors.append(f"{skill_name}: default_prompt contains unresolved scaffold placeholders")
    if short_match:
        short_description = short_match.group(1)
        if not (25 <= len(short_description) <= 64):
            warnings.append(
                f"{skill_name}: short_description length is {len(short_description)} (recommended 25-64)"
            )
        if "[REQUIRED]" in short_description or short_description == "Describe what this skill does here":
            errors.append(f"{skill_name}: short_description contains unresolved scaffold placeholders")

for eval_file in sorted(evals_dir.glob("*.json")):
    if not (skills_dir / eval_file.stem).is_dir():
        errors.append(f"orphan eval artifact: scripts/evals/skills/{eval_file.name}")


bundle_versions: dict[str, str] = {}
bundle_members: dict[str, set[str]] = {}
if versions_md.is_file():
    bundle_versions = parse_bundle_versions(versions_md.read_text())
else:
    errors.append("Missing versions file: VERSIONS.md")
if bundles_md.is_file():
    bundle_members = parse_bundle_members(bundles_md.read_text())
else:
    errors.append("Missing bundle definition file: plugins/BUNDLES.md")

marketplace_names: set[str] = set()
marketplace_sources: dict[str, str] = {}
marketplace_doc = load_json(marketplace_json, "Claude marketplace manifest")
if marketplace_doc is not None:
    if marketplace_doc.get("$schema") != marketplace_schema:
        errors.append(f"marketplace: $schema must be '{marketplace_schema}'")
    if not isinstance(marketplace_doc.get("name"), str) or not marketplace_doc["name"].strip():
        errors.append("marketplace: missing non-empty name")
    if not isinstance(marketplace_doc.get("description"), str) or not marketplace_doc["description"].strip():
        errors.append("marketplace: missing non-empty description")
    owner = marketplace_doc.get("owner")
    if not isinstance(owner, dict) or not isinstance(owner.get("name"), str) or not owner["name"].strip():
        errors.append("marketplace: owner.name is required")
    if "strict" in marketplace_doc:
        errors.append("marketplace: top-level strict is unsupported; set it per plugin entry if needed")

    plugin_entries = marketplace_doc.get("plugins")
    if not isinstance(plugin_entries, list) or not plugin_entries:
        errors.append("marketplace: plugins must be a non-empty array")
    else:
        for index, entry in enumerate(plugin_entries):
            if not isinstance(entry, dict):
                errors.append(f"marketplace: plugins[{index}] must be an object")
                continue
            name = entry.get("name")
            source = entry.get("source")
            if not isinstance(name, str) or not re.fullmatch(
                r"[a-z0-9]+(?:-[a-z0-9]+)*", name
            ):
                errors.append(f"marketplace: plugins[{index}].name must be kebab-case")
                continue
            if name in marketplace_names:
                errors.append(f"marketplace: duplicate plugin name '{name}'")
            marketplace_names.add(name)
            if not isinstance(source, str) or not source.startswith("./") or ".." in Path(source).parts:
                errors.append(
                    f"marketplace: plugin '{name}' source must be a local './' path without '..'"
                )
            else:
                marketplace_sources[name] = source
            if "releaseChannel" in entry:
                errors.append(f"marketplace: plugin '{name}' uses unsupported releaseChannel")
            if entry.get("version") == "latest":
                errors.append(
                    f"marketplace: plugin '{name}' must use semver or defer to plugin.json, not 'latest'"
                )


plugin_dirs = sorted(p for p in plugins_dir.iterdir() if p.is_dir())
plugin_names = {p.name for p in plugin_dirs}
closure_sets = {
    "plugins/BUNDLES.md": set(bundle_members),
    "VERSIONS.md": set(bundle_versions),
    "marketplace.json": marketplace_names,
}
for label, names in closure_sets.items():
    missing = sorted(plugin_names - names)
    extra = sorted(names - plugin_names)
    if missing:
        errors.append(f"{label}: missing bundles: {', '.join(missing)}")
    if extra:
        errors.append(f"{label}: unknown bundles: {', '.join(extra)}")

all_bundled_skills: set[str] = set()
for plugin_dir in plugin_dirs:
    bundle_name = plugin_dir.name
    expected_source = f"./plugins/{bundle_name}"
    if marketplace_sources.get(bundle_name) != expected_source:
        errors.append(
            f"{bundle_name}: marketplace source must be '{expected_source}'"
        )

    plugin_json = plugin_dir / ".claude-plugin" / "plugin.json"
    plugin_doc = load_json(plugin_json, f"{bundle_name} plugin manifest")
    if plugin_doc is None:
        continue
    if plugin_doc.get("name") != bundle_name:
        errors.append(f"{bundle_name}: plugin.json name must match its directory")
    plugin_version = plugin_doc.get("version")
    if not isinstance(plugin_version, str) or not re.fullmatch(r"\d+\.\d+\.\d+", plugin_version):
        errors.append(f"{bundle_name}: plugin.json version must be semantic versioning")
    expected_version = bundle_versions.get(bundle_name)
    if expected_version and plugin_version != expected_version:
        errors.append(
            f"{bundle_name}: plugin.json version '{plugin_version}' does not match VERSIONS.md '{expected_version}'"
        )
    if not isinstance(plugin_doc.get("description"), str) or not plugin_doc["description"].strip():
        errors.append(f"{bundle_name}: plugin.json needs a non-empty description")
    for field in required_plugin_metadata:
        value = plugin_doc.get(field)
        if field == "author":
            if not isinstance(value, dict) or not isinstance(value.get("name"), str) or not value["name"].strip():
                errors.append(f"{bundle_name}: plugin.json author.name is required")
        elif not isinstance(value, str) or not value.strip():
            errors.append(f"{bundle_name}: plugin.json {field} is required")

    skills_link_dir = plugin_dir / "skills"
    if not skills_link_dir.is_dir():
        errors.append(f"{bundle_name}: missing skills directory")
        continue

    actual_members: set[str] = set()
    for entry in sorted(skills_link_dir.iterdir()):
        actual_members.add(entry.name)
        if not entry.is_symlink():
            errors.append(f"{bundle_name}: skill entry '{entry.name}' must be a symlink")
            continue
        if not entry.exists():
            errors.append(f"{bundle_name}: broken skill link '{entry.name}'")
            continue
        canonical_target = skills_dir / entry.name
        if not canonical_target.is_dir():
            errors.append(f"{bundle_name}: skill link '{entry.name}' has no canonical skill")
        elif entry.resolve() != canonical_target.resolve():
            errors.append(
                f"{bundle_name}: skill link '{entry.name}' must resolve to skills/{entry.name}"
            )

    expected_members = bundle_members.get(bundle_name, set())
    all_bundled_skills.update(expected_members)
    missing = sorted(expected_members - actual_members)
    extra = sorted(actual_members - expected_members)
    if missing:
        errors.append(f"{bundle_name}: missing bundle links: {', '.join(missing)}")
    if extra:
        errors.append(f"{bundle_name}: undocumented bundle links: {', '.join(extra)}")
    unknown = sorted(expected_members - skill_names)
    if unknown:
        errors.append(f"{bundle_name}: references unknown skills: {', '.join(unknown)}")
    if "revenue-enablement-context" not in expected_members:
        errors.append(f"{bundle_name}: must include revenue-enablement-context")

unbundled = sorted(skill_names - all_bundled_skills)
if unbundled:
    errors.append(f"skills missing from all bundles: {', '.join(unbundled)}")

if errors:
    print("VALIDATION FAILED")
    for error in errors:
        print(f"ERROR: {error}")
    for warning in warnings:
        print(f"WARN: {warning}")
    sys.exit(1)

print(
    f"VALIDATION PASSED: {len(skill_dirs)} skills, {len(plugin_dirs)} bundles, "
    f"{len(tracked_markdown_files())} Markdown files checked"
)
for warning in warnings:
    print(f"WARN: {warning}")
PY

echo "==> Running eval definition checks"
python3 "${EVALS_DIR}/validate_evals.py"
python3 "${EVALS_DIR}/generate_starter_evals.py" --check
python3 -m unittest discover -s "${EVALS_DIR}/tests"
