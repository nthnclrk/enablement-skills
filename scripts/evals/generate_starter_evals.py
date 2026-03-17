#!/usr/bin/env python3
"""
Generate lightweight per-skill starter eval artifacts.

This script is intentionally dependency-free and uses only the standard library.
"""

from __future__ import annotations

import json
import re
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[2]
SKILLS_DIR = REPO_ROOT / "skills"
EVALS_DIR = REPO_ROOT / "scripts" / "evals" / "skills"


def humanize_skill_name(skill_name: str) -> str:
    return skill_name.replace("-", " ")


def parse_description(skill_md_text: str) -> str:
    m = re.search(r"^---\n(.*?)\n---\n", skill_md_text, flags=re.S)
    if not m:
        return ""
    frontmatter = m.group(1)
    dm = re.search(r"^description:\s*(.+)$", frontmatter, flags=re.M)
    if not dm:
        return ""
    return dm.group(1).strip().strip('"')


def extract_output_contract_bullets(skill_md_text: str) -> list[str]:
    m = re.search(
        r"## Output Contract\s*\n(?P<body>.*?)(?:\n## |\Z)",
        skill_md_text,
        flags=re.S,
    )
    if not m:
        return []

    body = m.group("body")
    bullets = []
    for line in body.splitlines():
        stripped = line.strip()
        if stripped.startswith("- "):
            bullets.append(stripped[2:].strip())
    return bullets


def pick_boundary_skill(description: str, current_skill: str) -> str | None:
    matches = re.findall(r"\b([a-z0-9]+(?:-[a-z0-9]+)+)\b", description)
    for candidate in matches:
        if candidate != current_skill and (SKILLS_DIR / candidate).is_dir():
            return candidate
    return None


def build_trigger_prompts(skill_name: str, description: str) -> list[str]:
    human_name = humanize_skill_name(skill_name)
    prompts = [
        f"Use ${skill_name} for this request.",
        f"I need help with {human_name}.",
        f"Please create a first draft using the {human_name} workflow.",
    ]

    if "Use when asked to" in description:
        phrase = description.split("Use when asked to", 1)[1].strip()
        phrase = phrase.split(".", 1)[0].strip()
        if phrase:
            prompts.append(f"Please {phrase}.")

    # Keep prompt list compact and deterministic.
    deduped = []
    seen = set()
    for p in prompts:
        if p not in seen:
            deduped.append(p)
            seen.add(p)
    return deduped[:4]


def build_non_trigger_prompts(skill_name: str, boundary_skill: str | None) -> list[str]:
    prompts = [
        "Write a short poem about quarterly planning.",
        "Refactor this Python function for performance.",
        "What is the weather in Sydney today?",
    ]
    if boundary_skill:
        prompts.append(
            f"This request should use ${boundary_skill} rather than ${skill_name}."
        )
    return prompts[:4]


def build_output_checks(output_bullets: list[str]) -> list[dict]:
    checks = []
    for idx, bullet in enumerate(output_bullets[:5], start=1):
        phrase = bullet.strip().strip("`")
        if not phrase:
            continue
        checks.append(
            {
                "name": f"contains_output_element_{idx}",
                "type": "contains_phrase",
                "phrase": phrase,
            }
        )

    if not checks:
        checks.append(
            {
                "name": "contains_clear_output_structure",
                "type": "contains_phrase",
                "phrase": "Output",
            }
        )
    return checks


def generate_for_skill(skill_dir: Path) -> dict:
    skill_name = skill_dir.name
    skill_md_path = skill_dir / "SKILL.md"
    skill_md_text = skill_md_path.read_text()

    description = parse_description(skill_md_text)
    output_bullets = extract_output_contract_bullets(skill_md_text)
    boundary_skill = pick_boundary_skill(description, skill_name)

    return {
        "skill": skill_name,
        "source": str(skill_md_path.relative_to(REPO_ROOT)),
        "notes": "Starter eval scaffold. Expand prompts and checks with real traces.",
        "should_trigger": [
            {"prompt": p, "expected": "trigger"}
            for p in build_trigger_prompts(skill_name, description)
        ],
        "should_not_trigger": [
            {"prompt": p, "expected": "do_not_trigger"}
            for p in build_non_trigger_prompts(skill_name, boundary_skill)
        ],
        "output_structure_checks": build_output_checks(output_bullets),
    }


def main() -> None:
    if not SKILLS_DIR.is_dir():
        raise SystemExit(f"Missing skills directory: {SKILLS_DIR}")

    EVALS_DIR.mkdir(parents=True, exist_ok=True)

    skills = sorted([p for p in SKILLS_DIR.iterdir() if p.is_dir()])
    generated = 0
    preserved = 0
    for skill_dir in skills:
        out_path = EVALS_DIR / f"{skill_dir.name}.json"
        if out_path.exists():
            try:
                existing = json.loads(out_path.read_text())
            except json.JSONDecodeError:
                existing = None
            if isinstance(existing, dict) and existing.get("managed_by") == "curated":
                preserved += 1
                continue

        eval_doc = generate_for_skill(skill_dir)
        eval_doc["managed_by"] = "starter"
        out_path.write_text(json.dumps(eval_doc, indent=2) + "\n")
        generated += 1

    print(
        f"Generated starter evals for {generated} skills in {EVALS_DIR}"
        + (f" and preserved {preserved} curated evals" if preserved else "")
    )


if __name__ == "__main__":
    main()
