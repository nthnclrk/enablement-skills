# Contributing

Contributions should make an enablement workflow clearer, more dependable, or easier to adopt without making the package harder to route or maintain.

## Before You Change Anything

Read:

- [README.md](README.md) for audience, startup, and installation guidance
- [AGENTS.md](AGENTS.md) for repository rules
- [ARCHITECTURE.md](ARCHITECTURE.md) for standards, packaging, and validation boundaries
- [systems/REGISTRY.md](systems/REGISTRY.md) if the change touches a system playbook

## Portable Standard And Repository Policy

The portable Agent Skills format requires a skill folder with `SKILL.md` and the required `name` and `description` frontmatter fields.

This repository applies a stricter contribution contract. Every canonical skill must also:

- live at `skills/<skill-name>/`
- use frontmatter containing exactly `name` and `description`
- include `agents/openai.yaml`
- do the craft jobs in `AGENTS.md` (heading names may vary)
- link directly to any bundled references it needs
- have a matching eval artifact under `scripts/evals/skills/`

Treat these as repository consistency rules rather than universal requirements of the Agent Skills standard.

## Change A Skill

For a new skill, start with:

```bash
bash scripts/new-skill.sh my-new-skill
```

For new and existing skills:

1. Start from a concrete user job and a real artifact you have already run, not a blank form.
2. Make the frontmatter description state what the skill does, when it should trigger, and its closest boundaries.
3. Cover the craft jobs in `AGENTS.md`. Use `templates/skill/SKILL.md.tmpl` as a starting point, then change the shape if the job is a map, a gate, or a short principle.
4. Keep each specialist's essential evidence, confidentiality, and action boundaries in that skill. Use `enablement-house-style` for shared authoring conventions and explicit reviews; sibling skills do not load automatically.
5. Use scripts only for deterministic work that is safer or more reliable than instructions.
6. Update should-trigger, should-not-trigger, and output scenarios when behavior or routing changes.
7. Confirm that `agents/openai.yaml` still matches the skill.

Do not make a portable skill depend on a relative path outside its folder. Repository-level system playbooks can inform the design, but a skill installed on its own must retain the instructions and resources it needs.

## Write For The Practitioner

A useful skill should work for someone who knows the business problem but may not know the package.

- name the deliverable in familiar enablement language
- ask only for inputs that materially affect the result
- use existing context instead of repeating intake questions
- distinguish sourced evidence, assumptions, freshness, and confidence
- make audience and usage mode explicit
- end with decisions, actions, owners, or inspection points where relevant
- avoid fabricating facts or presenting directional evidence as certainty

If shared company context is missing and the gap would materially weaken the result, request the smallest source packet needed. Do not force a full context-building workflow for a self-contained task.

## Change A System Playbook

System playbooks are representative workflow guidance, not complete vendor documentation.

1. Keep the guidance focused on inputs, important fields, evidence quality, and safe write-back boundaries.
2. Prefer common, reliable workflows over broad feature inventories.
3. Verify exact product claims against current vendor documentation.
4. State when behavior is tenant-specific, permission-gated, rapidly changing, or not fully verified.
5. Do not imply that the repository ships an adapter, API client, MCP server, or native integration unless that code exists.

## Change Packaging Or Bundles

Canonical skill behavior remains under `skills/`. Bundle entries must resolve to those canonical folders.

When membership changes, update together:

- `plugins/BUNDLES.md`
- the affected bundle entries and manifest
- `VERSIONS.md`
- `CHANGELOG.md`
- README bundle guidance when the user-facing choice changes

Keep host-specific packaging claims narrow. The current plugin manifests are for Claude marketplace distribution; portable skill folders are the cross-host layer.

## Validation

### Repository structure

```bash
bash scripts/validate.sh
```

This is a read-only check of canonical structure, Markdown links, interface metadata, eval coverage and schema, starter freshness, marketplace and plugin metadata, versions, and bundle membership.

### Portable specification

```bash
skills-ref validate skills/<skill-name>
```

Run the reference validator for each changed skill. Use `bash scripts/validate-official.sh` for the full collection. CI installs `skills-ref==0.1.1`; the wrapper also documents an opt-in `uvx` fallback pinned to that version.

### Behavior

Structural checks do not execute eval prompts. For behavior changes, run representative should-trigger, should-not-trigger, and output scenarios with the intended host or model. Compare the result with the previous behavior and record any important routing boundary uncovered by the test.

Score material changes with the [quality rubric](scripts/evals/README.md#quality-rubric). The structural checker cannot substitute for an executed task or practitioner review.

If examples change, check that each still has a realistic use case, inputs, prompt, and expected output shape.

## Release Records

For a meaningful shipped behavior change:

- update `VERSIONS.md` for repository and bundle state
- update `CHANGELOG.md` with the user-visible change
- update eval scenarios for every changed trigger or output contract

Use semantic versioning as defined in `VERSIONS.md`. Keep changes small enough that a practitioner can understand what changed and why.

## Pull Requests

A pull request should state:

- the practitioner problem addressed
- the skills, systems, or bundles affected
- the behavior and routing changes
- the validation and behavior scenarios run
- any known limitations or follow-up work

Avoid combining unrelated skill families or packaging changes in one pull request.

## Licensing And Attribution

Contributions are licensed under the MIT license in [LICENSE](LICENSE). Vendor names remain the property of their respective owners. Do not imply partnership, endorsement, or affiliation where none exists.
