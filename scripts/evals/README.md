# Eval Scaffolding

This directory contains lightweight evaluation scaffolding for the skill repo.

## Goals

- Validate trigger quality per skill.
- Validate boundary quality (should-not-trigger prompts).
- Validate output structure promises from each skill's `## Output Contract`.
- Keep the system maintainable as the number of skills grows.

## Layout

- `scripts/evals/skills/<skill-name>.json`: per-skill starter eval artifact.
- `scripts/evals/generate_starter_evals.py`: regenerates starter eval files from existing `skills/` content.

## Eval Artifact Format

Each `skills/<skill-name>.json` contains:

- `skill`: skill folder name.
- `source`: source file used to build eval starter.
- `managed_by`: either `starter` or `curated`.
- `should_trigger`: prompts that should activate the skill.
- `should_not_trigger`: prompts that should not activate the skill.
- `output_structure_checks`: phrases expected in the output, derived from `## Output Contract`.

Starter evals are intentionally lightweight. They are meant to be expanded with real prompts and stricter checks after execution traces are collected.

If an eval file is upgraded manually, set:

```json
"managed_by": "curated"
```

The starter generator will preserve curated files instead of overwriting them.

## Recommended Next Iteration

- Expand each `should_trigger` list to 8-10 prompts.
- Expand each `should_not_trigger` list to 8-10 prompts.
- Replace generic output checks with stricter shape checks tied to expected output sections.
- Track pass/fail history per skill over time.

## Regenerate Starters

```bash
python3 scripts/evals/generate_starter_evals.py
```

Regeneration overwrites existing starter eval JSON files in `scripts/evals/skills/`.
