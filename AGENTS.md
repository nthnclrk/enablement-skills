# AGENTS.md

Contributor and operator guide for this repository.

## Purpose

This repo packages reusable enablement skills for broad deployment. It is not a personal local-skill dump. Treat the repo as distributable infrastructure.

## Scope

- In scope: `skills/`, packaging metadata, bundle manifests, system playbooks, validation/evals, lifecycle docs.
- Out of scope: one-off prompts, private credentials, environment-specific hacks, undocumented side-effect automations.

## Source Of Truth

- Skill behavior: `skills/<skill-name>/`
- Packaging and compatibility state: `VERSIONS.md`
- Distribution and user-facing orientation: `README.md`

## Required Skill Contract

Each skill folder must include:

- `SKILL.md`
- `agents/openai.yaml`

Frontmatter in `SKILL.md` must include only:

- `name`
- `description`

Use lowercase hyphenated names. Keep names stable once published.

## Recommended SKILL.md Structure

Use this order unless the skill has a strong reason to diverge:

1. Title and one-line mission
2. `## Confirm Inputs First`
3. `## Read The Right Reference` (only if `references/` exists)
4. `## Default Workflow`
5. `## Tool Notes` (optional)
6. `## Output Contract`
7. `## Quality Bar`

## Trigger Quality Rules

- Description must state what the skill does and when to use it.
- Include close-boundary routing language for adjacent skills.
- Avoid vague triggers that could match half the repo.

## Progressive Disclosure Rules

- Keep `SKILL.md` lean.
- Put reusable deep material in `references/` only when it materially improves repeated execution.
- Do not create extra docs that do not help runtime behavior.

## System Playbook Rules

- Treat `systems/` as representative workflow guidance, not exhaustive product documentation.
- Prefer common, reliable export and write-back patterns over broad capability inventories.
- Note when capabilities are tenant-gated, rapidly evolving, AI-native, or not fully verified from public docs.
- Do not imply the repo captures the full feature surface of any vendor tool.

## Safety Posture

- Default to non-destructive guidance.
- Require explicit user intent before writing to external systems.
- Keep credentials and auth setup in system playbooks, not skill steps.
- For side-effect-heavy skills, use invocation controls in frontmatter or plugin config.

## Packaging Model

Treat distribution as dual-path:

1. Skills CLI repo install
2. Claude marketplace plugin bundles

Bundle strategy is domain-based:

- `enablement-core`
- `enablement-messaging`
- `enablement-programs`
- `enablement-measurement`
- `enablement-launches`
- `enablement-crm-pack`
- `enablement-ci-pack`

## Quality And Validation

For each skill, maintain:

- should-trigger prompts
- should-not-trigger prompts
- basic output-structure checks

Use repo validation scripts before shipping bundle or version changes.

## Change Management

When updating behavior:

1. Update skill content.
2. Update eval fixtures.
3. Update version entries in `VERSIONS.md`.
4. Update bundle manifests if skill membership changed.

Do not silently change behavior without version notes.
