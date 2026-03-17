#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SKILLS_DIR="${REPO_ROOT}/skills"
EVALS_DIR="${REPO_ROOT}/scripts/evals/skills"
PLUGINS_DIR="${REPO_ROOT}/plugins"

if [[ ! -d "${SKILLS_DIR}" ]]; then
  echo "ERROR: skills directory not found at ${SKILLS_DIR}" >&2
  exit 1
fi

if [[ ! -f "${REPO_ROOT}/scripts/evals/generate_starter_evals.py" ]]; then
  echo "ERROR: starter eval generator not found at scripts/evals/generate_starter_evals.py" >&2
  exit 1
fi

echo "==> Regenerating starter eval artifacts"
python3 "${REPO_ROOT}/scripts/evals/generate_starter_evals.py"

echo "==> Running structural checks"
REPO_ROOT="${REPO_ROOT}" python3 - <<'PY'
import json
import os
import re
import sys
from pathlib import Path

repo_root = Path(os.environ["REPO_ROOT"])
skills_dir = repo_root / "skills"
evals_dir = repo_root / "scripts" / "evals" / "skills"
plugins_dir = repo_root / "plugins"
versions_md = repo_root / "VERSIONS.md"
bundles_md = plugins_dir / "BUNDLES.md"

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

errors: list[str] = []
warnings: list[str] = []

skill_dirs = sorted([p for p in skills_dir.iterdir() if p.is_dir()])
skill_names = {p.name for p in skill_dirs}

if not evals_dir.is_dir():
    errors.append(f"Missing evals directory: {evals_dir}")

if not plugins_dir.is_dir():
    errors.append(f"Missing plugins directory: {plugins_dir}")
if not versions_md.is_file():
    errors.append(f"Missing versions file: {versions_md}")
if not bundles_md.is_file():
    errors.append(f"Missing bundle definition file: {bundles_md}")


def check_relative_links(base_path: Path, text: str) -> list[str]:
    missing = []
    for target in re.findall(r"\[[^\]]+\]\(([^)]+)\)", text):
        if "://" in target or target.startswith("#"):
            continue
        resolved = (base_path.parent / target).resolve()
        if not resolved.exists():
            missing.append(target)
    return missing


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
        m = re.match(r"\| `([^`]+)` \| `([^`]+)` \|", line.strip())
        if m and m.group(1) != "repo":
            versions[m.group(1)] = m.group(2)
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

for skill_dir in skill_dirs:
    skill_name = skill_dir.name
    skill_md = skill_dir / "SKILL.md"
    openai_yaml = skill_dir / "agents" / "openai.yaml"
    eval_json = evals_dir / f"{skill_name}.json"

    if not skill_md.exists():
        errors.append(f"{skill_name}: missing SKILL.md")
        continue
    if not openai_yaml.exists():
        errors.append(f"{skill_name}: missing agents/openai.yaml")
    if not eval_json.exists():
        errors.append(f"{skill_name}: missing eval artifact at scripts/evals/skills/{skill_name}.json")

    text = skill_md.read_text()
    if "[TODO" in text or "Structuring This Skill" in text:
        errors.append(f"{skill_name}: contains scaffold placeholders")
    if any(marker in text for marker in placeholder_markers):
        errors.append(f"{skill_name}: contains unresolved scaffold placeholders")

    missing_links = check_relative_links(skill_md, text)
    for target in missing_links:
        errors.append(f"{skill_name}: broken relative link '{target}'")

    fm = re.match(r"^---\n(.*?)\n---\n", text, flags=re.S)
    if not fm:
        errors.append(f"{skill_name}: invalid or missing YAML frontmatter block")
    else:
        frontmatter = fm.group(1)
        keys = []
        for line in frontmatter.splitlines():
            if ":" not in line:
                continue
            keys.append(line.split(":", 1)[0].strip())
        if set(keys) != {"name", "description"}:
            errors.append(f"{skill_name}: frontmatter keys must be exactly name+description, got {sorted(set(keys))}")

        route_refs = extract_route_candidates(frontmatter)
        for candidate in sorted(route_refs):
            if candidate != skill_name and candidate not in skill_names:
                errors.append(f"{skill_name}: references missing skill '{candidate}' in frontmatter/route text")

    for section in required_sections:
        if section not in text:
            errors.append(f"{skill_name}: missing required section '{section}'")

    body_route_refs = extract_route_candidates(text)
    for candidate in sorted(body_route_refs):
        if candidate != skill_name and candidate not in skill_names:
            errors.append(f"{skill_name}: references missing skill '{candidate}' in body/route text")

    yaml_text = openai_yaml.read_text() if openai_yaml.exists() else ""
    m_display = re.search(r'display_name:\s*"([^"]+)"', yaml_text)
    m_short = re.search(r'short_description:\s*"([^"]+)"', yaml_text)
    m_prompt = re.search(r'default_prompt:\s*"([^"]+)"', yaml_text)

    if not m_display:
        errors.append(f"{skill_name}: openai.yaml missing interface.display_name")
    if not m_short:
        errors.append(f"{skill_name}: openai.yaml missing interface.short_description")
    if not m_prompt:
        errors.append(f"{skill_name}: openai.yaml missing interface.default_prompt")
    else:
        prompt = m_prompt.group(1)
        if f"${skill_name}" not in prompt:
            errors.append(f"{skill_name}: default_prompt must reference ${skill_name}")
        if "[REQUIRED]" in prompt or prompt == f"Use ${skill_name} for this task.":
            errors.append(f"{skill_name}: default_prompt contains unresolved scaffold placeholders")
    if m_short:
        short_desc = m_short.group(1)
        if not (25 <= len(short_desc) <= 64):
            warnings.append(f"{skill_name}: short_description length is {len(short_desc)} (recommended 25-64)")
        if "[REQUIRED]" in short_desc or short_desc == "Describe what this skill does here":
            errors.append(f"{skill_name}: short_description contains unresolved scaffold placeholders")

    if eval_json.exists():
        try:
            eval_doc = json.loads(eval_json.read_text())
        except json.JSONDecodeError as exc:
            errors.append(f"{skill_name}: invalid JSON in eval artifact ({exc})")
            continue

        if eval_doc.get("skill") != skill_name:
            errors.append(f"{skill_name}: eval 'skill' field mismatch")

        should_trigger = eval_doc.get("should_trigger")
        should_not_trigger = eval_doc.get("should_not_trigger")
        output_checks = eval_doc.get("output_structure_checks")

        if not isinstance(should_trigger, list) or len(should_trigger) < 3:
            errors.append(f"{skill_name}: should_trigger must have at least 3 prompts")
        if not isinstance(should_not_trigger, list) or len(should_not_trigger) < 3:
            errors.append(f"{skill_name}: should_not_trigger must have at least 3 prompts")
        if not isinstance(output_checks, list) or len(output_checks) < 1:
            errors.append(f"{skill_name}: output_structure_checks must have at least 1 check")

for eval_file in sorted(evals_dir.glob("*.json")):
    skill_name = eval_file.stem
    if not (skills_dir / skill_name).is_dir():
        warnings.append(f"orphan eval artifact: scripts/evals/skills/{eval_file.name}")

if versions_md.is_file() and bundles_md.is_file() and plugins_dir.is_dir():
    bundle_versions = parse_bundle_versions(versions_md.read_text())
    bundle_members = parse_bundle_members(bundles_md.read_text())

    plugin_dirs = sorted(
        [
            p
            for p in plugins_dir.iterdir()
            if p.is_dir() and p.name != "__pycache__"
        ]
    )

    for plugin_dir in plugin_dirs:
        bundle_name = plugin_dir.name
        if bundle_name not in bundle_members:
            errors.append(f"{bundle_name}: missing from plugins/BUNDLES.md")

        plugin_json = plugin_dir / ".claude-plugin" / "plugin.json"
        if not plugin_json.is_file():
            errors.append(f"{bundle_name}: missing .claude-plugin/plugin.json")
            continue

        try:
            plugin_doc = json.loads(plugin_json.read_text())
        except json.JSONDecodeError as exc:
            errors.append(f"{bundle_name}: invalid JSON in plugin manifest ({exc})")
            continue

        plugin_version = plugin_doc.get("version")
        expected_version = bundle_versions.get(bundle_name)
        if not expected_version:
            errors.append(f"{bundle_name}: missing version entry in VERSIONS.md")
        elif plugin_version != expected_version:
            errors.append(
                f"{bundle_name}: plugin.json version '{plugin_version}' does not match VERSIONS.md '{expected_version}'"
            )

        skills_symlink_dir = plugin_dir / "skills"
        if not skills_symlink_dir.is_dir():
            errors.append(f"{bundle_name}: missing skills directory")
            continue

        actual_members = set()
        for entry in sorted(skills_symlink_dir.iterdir()):
            actual_members.add(entry.name)
            if not entry.exists():
                errors.append(f"{bundle_name}: broken skill link '{entry.name}'")
            elif entry.resolve().parent != skills_dir.resolve():
                warnings.append(f"{bundle_name}: skill link '{entry.name}' does not resolve under skills/")

        expected_members = bundle_members.get(bundle_name, set())
        if actual_members != expected_members:
            missing = sorted(expected_members - actual_members)
            extra = sorted(actual_members - expected_members)
            if missing:
                errors.append(f"{bundle_name}: missing skills from bundle symlinks: {', '.join(missing)}")
            if extra:
                errors.append(f"{bundle_name}: extra skills in bundle symlinks: {', '.join(extra)}")

if errors:
    print("VALIDATION FAILED")
    for err in errors:
        print(f"ERROR: {err}")
    if warnings:
        for warn in warnings:
            print(f"WARN: {warn}")
    sys.exit(1)

print(f"VALIDATION PASSED: {len(skill_dirs)} skills checked")
if warnings:
    for warn in warnings:
        print(f"WARN: {warn}")
PY
