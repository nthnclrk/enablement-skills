# AGENTS.md

Contributor and operator guide for this repository.

## Purpose

This repository packages reusable enablement skills for broad deployment. Treat it as distributable infrastructure, not a personal prompt collection.

## Scope

- In scope: `skills/`, host packaging, bundle manifests, system playbooks, validation and evals, examples, lifecycle documentation.
- Out of scope: one-off prompts, private credentials, customer data, environment-specific workarounds, and undocumented side-effect automations.

## Source Of Truth

- Skill behavior: `skills/<skill-name>/`
- Packaging and compatibility state: `VERSIONS.md`
- Release history: `CHANGELOG.md`
- User orientation and installation: `README.md`
- Bundle membership: `plugins/BUNDLES.md`

## Portable Standard And Repository Policy

The portable Agent Skills format requires a skill folder containing `SKILL.md` with `name` and `description` frontmatter.

This repository uses a stricter local contract. Each canonical skill folder must include:

- `SKILL.md`
- `agents/openai.yaml`
- a matching artifact under `scripts/evals/skills/`

Frontmatter in canonical `SKILL.md` files must contain exactly:

- `name`
- `description`

Use lowercase hyphenated names, match the folder name, and keep published names stable. Treat these additional rules as repository policy rather than requirements of the portable standard.

## Craft Contract

Heading names are not required. A coaching skill, a router, and a house-style skill should not look the same. Every canonical skill must still do these jobs, under whatever headings fit:

1. One job, said in a sentence a practitioner would say out loud.
2. One leading concept, plus a short good excerpt and a short bad excerpt.
3. Intake only for inputs that change this output.
4. A procedure or named rules, with a checkable done-test on each step.
5. Gotchas the model will hit without being told, and a quality bar a human can score in two minutes.

Shared safety belongs in `enablement-house-style`. Do not copy it into every leaf.

A common specialist shape is still fine: inputs, when to load a reference, procedure, what to return, done-when. Use it when it helps. Drop it when the job is a map, a gate, or a short principle.

See `templates/skill/` for a worked example, not a blank form.

## Trigger Quality

- State the deliverable and primary job near the start of the description.
- Include concrete language a practitioner is likely to use.
- Explain when to use the skill and the closest nearby boundaries.
- Keep broad context, routing, and specialist tasks distinct.
- Do not rely on a body section to explain when the skill should trigger; the body loads after selection.

## Practitioner Inputs And First Use

Use existing context when it is current and relevant. Ask only for missing information that materially affects the output.

When shared company context is missing:

1. Request the smallest useful source packet.
2. Use `revenue-enablement-context` when the gap affects several downstream workflows.
3. Separate facts, assumptions, freshness, confidence, and unresolved gaps.
4. Supply only relevant context to specialist skills.

Do not force context setup for a self-contained request. Use `enablement-router` for ambiguous or multi-deliverable work, not for direct specialist asks.

## Progressive Disclosure

- Keep `SKILL.md` focused on the executable workflow.
- Put reusable detailed material in direct `references/` only when it improves repeated execution.
- Link every required reference directly from `SKILL.md`; avoid nested reference chains.
- Add a short contents block to reference files longer than 100 lines.
- Put output resources in `assets/`, not in instruction references.
- Use scripts only when deterministic execution is safer or more reliable than generated steps.
- Do not make a portable skill depend on a repository-relative path outside its folder.

## System Playbooks

- Treat `systems/` as representative workflow guidance, not exhaustive product documentation.
- Focus on minimum exports, important fields, source quality, and safe write-back boundaries.
- Verify exact product behavior against current vendor documentation and the live tenant.
- State when capabilities are tenant-specific, permission-gated, rapidly changing, or not fully verified.
- Do not imply that the repository ships direct integrations unless the corresponding code exists.

## Safety

- Default to non-destructive, reviewable guidance.
- Require explicit user intent before writing to an external system or publishing an output.
- Distinguish internal-only material from customer-facing output.
- Keep credentials and authentication setup out of skill instructions; document prerequisites in the appropriate system or distribution guidance.
- For a side-effect-heavy Codex skill, set host-specific invocation policy in `agents/openai.yaml` and validate it. Do not add unsupported invocation fields to canonical `SKILL.md` frontmatter.
- Keep a human decision-maker involved for regulated, security-sensitive, customer-facing, or revenue-critical work.

## Distribution

Treat distribution as separate host layers over one portable source:

1. Canonical Agent Skills folders under `skills/`
2. Claude marketplace bundles under `plugins/`
3. Clone, vendor, or submodule use for direct source management

The current `.claude-plugin` manifests are Claude-specific. Do not describe them as a universal plugin format or claim native packaging for a host the repository does not yet ship.

Bundle strategy is domain-based:

- `enablement-core`
- `enablement-messaging`
- `enablement-programs`
- `enablement-measurement`
- `enablement-launches`
- `enablement-crm-pack`
- `enablement-ci-pack`

Bundled skills must resolve to their canonical folder under `skills/`. Do not create independent behavior copies.

## Quality And Validation

Maintain per skill:

- realistic should-trigger prompts
- adjacent should-not-trigger prompts
- output-structure and decision checks
- at least one messy or incomplete-input scenario for high-value workflows

Use three distinct validation layers:

1. `bash scripts/validate.sh` for read-only repository, Markdown-link, eval-definition, and packaging checks.
2. `skills-ref validate skills/<skill-name>` for the portable Agent Skills specification; use `bash scripts/validate-official.sh` for the full collection.
3. Executed behavior scenarios for routing and output quality, including with-skill versus no-skill messy prompts in `scripts/evals/behavior/`.

Do not present fixture presence or structural validation as evidence that behavior scenarios passed.

## Change Management

When updating behavior:

1. Update the canonical skill and any direct resources.
2. Update its eval scenarios.
3. Run repository and portable-spec validation.
4. Exercise representative behavior scenarios.
5. Update `VERSIONS.md` and `CHANGELOG.md` for the shipped change.
6. Update bundle manifests and `plugins/BUNDLES.md` if membership changed.

Do not silently change triggers, output contracts, or safety behavior.
