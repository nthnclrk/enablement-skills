# Architecture

This repository packages portable enablement skills, supporting workflow guidance, and Claude marketplace bundles. The design keeps task instructions inspectable and reusable without turning the repository into a vendor-integration runtime.

## Design Goals

- make common enablement work repeatable without hiding professional judgment
- keep each skill focused enough to route and load independently
- separate portable skill behavior from host-specific packaging
- make source quality, assumptions, and external writes visible
- keep contribution and release checks simple enough to run routinely

## Standards And Repository Policy

Two contracts apply.

### Portable Agent Skills Contract

The portable format requires a skill folder containing `SKILL.md` with YAML frontmatter and Markdown instructions. `name` and `description` are required. Supporting `scripts/`, `references/`, and `assets/` directories are optional.

This is the interoperability layer. Other Agent Skills-compatible tools can read the canonical folders without using this repository's bundle packaging.

### Repository Contract

This repository deliberately applies a stricter policy to every canonical skill:

- the folder name and frontmatter `name` must match
- frontmatter contains exactly `name` and `description`
- `agents/openai.yaml` is required for Codex-facing interface metadata
- the body must do the craft jobs in `AGENTS.md` (job, taste, intake, procedure, quality). Heading names are not required
- direct references must resolve and remain one level deep from `SKILL.md`
- a starter or curated eval artifact is required

These are repository consistency rules, not additional requirements of the portable Agent Skills standard.

## Directory Model

### `skills/`

Canonical source of skill behavior:

```text
skills/<skill-name>/
├─ SKILL.md
├─ agents/
│  └─ openai.yaml
├─ references/     # optional
├─ scripts/        # optional
└─ assets/         # optional
```

The skill folder is the unit of portable installation. A bundled copy or symlink must never become a second behavior source.

`SKILL.md` contains the trigger description and whatever body shape the job needs. Reusable frameworks belong in direct references when they improve repeated execution. Deterministic work belongs in scripts only when a script is more reliable than instructions. `enablement-house-style` supports explicit editorial reviews and shared authoring conventions. Each specialist retains its own essential evidence and action boundaries; sibling skills are not automatically loaded together.

### `systems/`

System playbooks explain how to prepare useful inputs from common operating tools. They cover:

- the minimum export or source packet
- important fields and evidence
- skills that benefit from the data
- safe write-back boundaries

They are not adapters, API clients, or complete vendor documentation. Tenant configuration, licensing, permissions, field models, and product behavior can vary or change. Verify consequential details against current vendor documentation and the live workspace before relying on an exact path or capability.

System-specific guidance should stay here when it applies across several skills. A portable skill must not depend on a relative path outside its own folder, because the skill may be installed without the rest of the repository.

### `plugins/`

Claude marketplace bundles expose selected canonical skills through symlinks under:

```text
plugins/<bundle>/skills/
```

The symlinks point to `skills/`, keeping membership explicit without duplicating behavior. [`plugins/BUNDLES.md`](plugins/BUNDLES.md) records the intended membership.

The `.claude-plugin` manifests are Claude-specific distribution metadata. They do not define a universal plugin format and are not required to use the canonical skill folders with another compatible host.

### `examples/`

Examples are human-facing usage references. Each shows a representative use case, source shape, prompt, and expected output shape. They are intentionally short and are not golden-output tests.

### `scripts/`

Repository maintenance utilities currently:

- scaffold new skills from `templates/skill/`
- generate starter eval artifacts
- validate repository structure and packaging consistency
- provide an optional full-collection specification-validation wrapper

## Runtime Model

Compatible hosts use progressive disclosure:

1. Discover a skill from its name and description.
2. Load the full `SKILL.md` when the task matches.
3. Load direct references or run bundled scripts only when the workflow needs them.

This makes the frontmatter description a routing contract. It should state what the skill produces, when to use it, and the closest boundaries that prevent an adjacent skill from activating incorrectly.

## First-Run Context Pattern

Many enablement tasks depend on shared company context, but context setup should be proportional to the work.

When important context is missing:

1. Gather the smallest useful source packet.
2. Run `revenue-enablement-context` to normalize the material.
3. Separate facts, assumptions, freshness, confidence, and gaps.
4. Store approved durable context at the user-confirmed path; `.enablement/context.md` is the default.
5. Supply only the relevant sections to downstream skills.

Skip the context pass for self-contained tasks or when the required information is already current. Specialist skills should request only blocking inputs rather than forcing a full intake.

Use `enablement-router` when a request crosses several deliverables. Prefer short sequences with clear handoffs; route direct, single-deliverable requests straight to the specialist skill.

## Distribution Model

The repository supports three practical consumption patterns.

### Portable Repository Install

An Agent Skills installer can discover the canonical folders under `skills/`. The README shows one third-party CLI option. Installer locations, supported hosts, and update behavior belong to the selected installer and should be verified in its current documentation.

### Claude Marketplace Bundles

Users can add the repository as a Claude Code marketplace and install a smaller bundle. In this mode:

- `.claude-plugin/marketplace.json` defines the marketplace
- `plugins/*/.claude-plugin/plugin.json` defines each bundle
- `plugins/<bundle>/skills/` defines membership through canonical symlinks

### Clone Or Vendor

Teams can clone the repository, vendor it, or add it as a submodule when they want direct source control and local adaptation.

No distribution path changes the source of truth: canonical behavior remains under `skills/`.

## Validation Model

Validation is intentionally split into three layers.

### Repository Structure

```bash
bash scripts/validate.sh
```

This command is read-only. It checks repository rules, including required files, craft jobs (not heading names), exact frontmatter policy, tracked Markdown links, interface metadata, eval coverage and schema, starter freshness, marketplace and plugin metadata, manifest versions, and bundle membership.

It does not run model behavior tests.

### Portable Specification

Run the Agent Skills reference validator for each changed skill:

```bash
skills-ref validate skills/<skill-name>
```

Use `bash scripts/validate-official.sh` for the full collection. It requires the `skills-ref` executable. CI installs `skills-ref==0.1.1`, and the wrapper provides an opt-in `uvx` fallback pinned to the same version.

### Behavior

The JSON files under `scripts/evals/skills/` hold should-trigger, should-not-trigger, and output-structure scenarios. Contributors must execute representative scenarios and inspect outputs when changing triggers or behavior. Structural validation proves the fixtures exist; it does not prove they pass.

## Change Model

Behavior changes should move as one reviewable unit:

1. Update the canonical skill and any direct resources.
2. Update the corresponding eval scenarios.
3. Run repository and portable-spec validation.
4. Update `VERSIONS.md` and `CHANGELOG.md` for a shipped behavior change.
5. Update bundle manifests and documentation if membership changed.

Keep the repository instruction-first. Add runtime code, external integrations, or new packaging formats only when the repository actually supports and validates them.
