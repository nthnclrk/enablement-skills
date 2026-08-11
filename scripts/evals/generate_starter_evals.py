#!/usr/bin/env python3
"""Check or explicitly generate compact starter eval definitions.

The default action is read-only. ``--generate`` writes only missing or
starter-managed definitions; curated definitions are always preserved.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any

from validate_evals import SCHEMA_VERSION, format_errors, validate_repository


REPO_ROOT = Path(__file__).resolve().parents[2]
SKILLS_DIR = REPO_ROOT / "skills"
EVALS_DIR = REPO_ROOT / "scripts" / "evals" / "skills"
WORD_RE = re.compile(r"[a-z][a-z0-9]+")
STOPWORDS = {
    "and", "are", "for", "from", "into", "not", "that", "the", "this",
    "use", "uses", "using", "when", "with", "without", "skill", "builder",
}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--check", action="store_true", help="Read-only check (default).")
    mode.add_argument(
        "--generate",
        action="store_true",
        help="Write missing and starter-managed definitions; preserve curated files.",
    )
    return parser.parse_args()


def parse_frontmatter(text: str) -> dict[str, str]:
    match = re.search(r"\A---\n(.*?)\n---\n", text, flags=re.S)
    if not match:
        return {}
    values: dict[str, str] = {}
    for line in match.group(1).splitlines():
        if ":" in line:
            key, value = line.split(":", 1)
            values[key.strip()] = value.strip().strip('"')
    return values


def clean_markdown(value: str) -> str:
    value = re.sub(r"\[([^]]+)]\([^)]+\)", r"\1", value)
    value = re.sub(r"[*_`]", "", value)
    return re.sub(r"\s+", " ", value.strip().strip(".;:"))


def first_sentence(value: str) -> str:
    return re.split(r"(?<=[.!?])\s+", value.strip(), maxsplit=1)[0].rstrip(".")


def humanize_skill_name(skill_name: str) -> str:
    words = skill_name.split("-")
    if words[-1] in {"builder", "coach", "extractor", "planner", "synthesizer"}:
        words.pop()
    elif words[-1] == "auditor":
        words[-1] = "audit"
    elif words[-1] == "orchestrator":
        words[-1] = "workplan"
    return " ".join(words)


def section_bullets(text: str, heading: str) -> list[str]:
    match = re.search(
        rf"^## {re.escape(heading)}\n(.*?)(?=^## |\Z)", text, flags=re.M | re.S
    )
    if not match:
        return []
    bullets = []
    for line in match.group(1).splitlines():
        if line.startswith("- "):
            bullets.append(clean_markdown(line[2:]))
    return bullets


def request_sentence(value: str) -> str:
    """Turn a short third-person description into a plausible user request."""
    text = clean_markdown(value)
    replacements = {
        "Analyzes": "Analyze",
        "Audits": "Audit",
        "Builds": "Build",
        "Converts": "Convert",
        "Creates": "Create",
        "Defines": "Define",
        "Designs": "Design",
        "Extracts": "Extract",
        "Generates": "Generate",
        "Orchestrates": "Orchestrate",
        "Produces": "Produce",
        "Reviews": "Review",
        "Routes": "Route",
        "Synthesizes": "Synthesize",
        "Turns": "Turn",
    }
    for source, target in replacements.items():
        if text.startswith(f"{source} "):
            text = f"{target} {text[len(source) + 1:]}"
            break
    if not text:
        text = "Create the requested enablement deliverable"
    return f"Please {text[0].lower() + text[1:]}."


def use_intent(description: str) -> str | None:
    match = re.search(r"\bUse (?:when|for)\s+([^.!?]+)", description)
    if not match:
        return None
    clause = clean_markdown(match.group(1))
    substitutions = (
        (r"^the user asks for\s+", "I need "),
        (r"^the user asks to\s+", "Please "),
        (r"^the user needs to\s+", "I need to "),
        (r"^the user wants to\s+", "I want to "),
        (r"^asked for\s+", "I need "),
        (r"^asked to\s+", "Please "),
        (r"^asked why\s+", "I need to understand why "),
    )
    for pattern, replacement in substitutions:
        if re.match(pattern, clause, flags=re.I):
            clause = re.sub(pattern, replacement, clause, count=1, flags=re.I)
            break
    else:
        clause = f"I need help with {clause[0].lower() + clause[1:]}"
    return f"{clause}."


def description_for(skill_name: str) -> str:
    text = (SKILLS_DIR / skill_name / "SKILL.md").read_text()
    return parse_frontmatter(text).get("description", "")


def explicit_adjacent_skills(skill_name: str, description: str) -> list[str]:
    result: list[str] = []
    for candidate in re.findall(r"\b[a-z0-9]+(?:-[a-z0-9]+)+\b", description):
        if (
            candidate != skill_name
            and (SKILLS_DIR / candidate / "SKILL.md").is_file()
            and candidate not in result
        ):
            result.append(candidate)
    return result


def token_set(skill_name: str, description: str) -> set[str]:
    return {
        token
        for token in WORD_RE.findall(f"{skill_name} {description}".lower())
        if token not in STOPWORDS
    }


def adjacent_skills(skill_name: str, description: str) -> list[str]:
    result = explicit_adjacent_skills(skill_name, description)
    current_tokens = token_set(skill_name, description)
    scored: list[tuple[int, str]] = []
    for skill_dir in SKILLS_DIR.iterdir():
        candidate = skill_dir.name
        if candidate == skill_name or not (skill_dir / "SKILL.md").is_file():
            continue
        overlap = len(current_tokens & token_set(candidate, description_for(candidate)))
        scored.append((overlap, candidate))
    for _, candidate in sorted(scored, key=lambda item: (-item[0], item[1])):
        if candidate not in result:
            result.append(candidate)
    return result[:3]


def generate_for_skill(skill_name: str) -> dict[str, Any]:
    text = (SKILLS_DIR / skill_name / "SKILL.md").read_text()
    description = parse_frontmatter(text).get("description", "")
    human_name = humanize_skill_name(skill_name)
    output_items = section_bullets(text, "Output Contract")[:2]
    if output_items:
        core_output = "; ".join(output_items)
    else:
        core_output = f"a usable {human_name} deliverable matched to the requested scope"

    positive_prompts = [request_sentence(first_sentence(description))]
    intent = use_intent(description)
    if intent:
        positive_prompts.append(intent)
    positive_prompts.extend(
        [
            f"I have rough notes. Please turn them into a usable {human_name} and label anything that still needs confirmation.",
            f"I only have partial source material for {human_name}. Make useful progress and label what still needs confirmation.",
        ]
    )
    positive_prompts = list(dict.fromkeys(positive_prompts))[:3]

    negatives = []
    for adjacent in adjacent_skills(skill_name, description):
        negatives.append(
            {
                "prompt": request_sentence(first_sentence(description_for(adjacent))),
                "expected": False,
                "adjacent_skill": adjacent,
            }
        )

    return {
        "schema_version": SCHEMA_VERSION,
        "skill": skill_name,
        "source": f"skills/{skill_name}/SKILL.md",
        "notes": (
            "Generated routing and basic-output starter. Curate realistic prompts and "
            "example-backed task scenarios before treating it as behavior evidence."
        ),
        "managed_by": "starter-generator",
        "should_trigger": [
            {"prompt": prompt, "expected": True} for prompt in positive_prompts
        ],
        "should_not_trigger": negatives,
        "output_structure_checks": [
            {
                "name": f"{skill_name}-core-output",
                "type": "structure",
                "description": f"Produces {core_output}.",
                "critical": True,
            },
            {
                "name": f"{skill_name}-decision-discipline",
                "type": "semantic",
                "description": (
                    "Makes the requested decision or next action explicit while separating "
                    "verified evidence, provisional assumptions, conflicts, and "
                    "decision-critical unknowns."
                ),
                "critical": True,
            },
        ],
    }


def canonical_text(document: dict[str, Any]) -> str:
    return json.dumps(document, indent=2, ensure_ascii=False) + "\n"


def check() -> int:
    result = validate_repository(EVALS_DIR)
    errors = list(result.errors)
    for skill_dir in sorted(path for path in SKILLS_DIR.iterdir() if path.is_dir()):
        skill_file = skill_dir / "SKILL.md"
        if not skill_file.is_file():
            continue
        eval_file = EVALS_DIR / f"{skill_dir.name}.json"
        if not eval_file.is_file():
            errors.append(f"{eval_file}: missing eval definition")
            continue
        try:
            current = json.loads(eval_file.read_text())
        except json.JSONDecodeError:
            continue
        if current.get("managed_by") == "starter-generator":
            expected = canonical_text(generate_for_skill(skill_dir.name))
            if eval_file.read_text() != expected:
                errors.append(
                    f"{eval_file}: stale starter; run generate_starter_evals.py --generate"
                )

    if errors:
        print("Eval definition check failed:\n" + format_errors(errors))
        return 1
    print(
        f"Checked {result.file_count} eval definitions "
        f"({result.curated_count} curated, {result.starter_count} starter). "
        "No files changed. No model evaluations were run."
    )
    return 0


def generate() -> int:
    EVALS_DIR.mkdir(parents=True, exist_ok=True)
    written = 0
    preserved = 0
    for skill_dir in sorted(path for path in SKILLS_DIR.iterdir() if path.is_dir()):
        if not (skill_dir / "SKILL.md").is_file():
            continue
        eval_file = EVALS_DIR / f"{skill_dir.name}.json"
        if eval_file.is_file():
            try:
                current = json.loads(eval_file.read_text())
            except json.JSONDecodeError:
                current = {}
            if current.get("managed_by") == "curated":
                preserved += 1
                continue
        eval_file.write_text(canonical_text(generate_for_skill(skill_dir.name)))
        written += 1

    result = validate_repository(EVALS_DIR)
    if result.errors:
        print("Generated starter definitions, but validation failed:\n" + format_errors(result.errors))
        return 1
    print(
        f"Generated {written} starter definitions and preserved {preserved} curated definitions. "
        "No model evaluations were run."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(generate() if parse_args().generate else check())
