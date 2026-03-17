# Architecture

This repo is a distributable skill pack for enablement professionals using agent tools such as Claude Code and Codex.

## Design Goal

Keep the repo simple to install, easy to audit, and easy to extend without turning it into a vendor-integration codebase.

The core idea:
- `skills/` defines behavior
- `systems/` explains how to get better inputs from real operating systems
- `plugins/` packages skills into installable bundles
- `examples/` shows how to use the repo in practice
- `scripts/` validates and scaffolds the repo

## Directory Model

### `skills/`

Canonical source of skill behavior.

Each skill lives in:

```text
skills/<skill-name>/
├─ SKILL.md
└─ agents/openai.yaml
```

Optional supporting material can live under:
- `references/`
- `scripts/`
- `assets/`

The skill folder is the unit of installation and reuse.

### `systems/`

Workflow playbooks for common operating systems.

These files are intentionally not adapters or SDK wrappers. They answer:
- what to export or pull
- what minimum fields matter
- which repo skills benefit
- what can safely be written back

This keeps system knowledge available without binding the repo to a single runtime or API strategy.

### `plugins/`

Install bundles for Claude marketplace usage.

Each bundle exposes a subset of skills through symlinks under:

```text
plugins/<bundle>/skills/
```

The symlinks point back to canonical skill folders in `skills/`, which avoids duplication and keeps bundle membership explicit.

### `examples/`

Usage references for humans.

Examples are intentionally lightweight and show:
- representative inputs
- a concrete prompt
- expected output shape

They are not golden-output tests.

### `scripts/`

Repo maintenance utilities.

Current responsibilities:
- generate starter evals
- run structural validation
- run optional external-spec validation
- scaffold new skills from templates

## Distribution Model

This repo supports two main distribution paths.

### 1. Agent Skills CLI

Users install the repo from GitHub:

```bash
npx agent-skills-cli add nthnclrk/enablement-skills
```

In this mode, the external CLI is the package manager. This repo is content, not a standalone CLI product.

### 2. Claude Marketplace

Users add the repo as a marketplace and install bundles:

```text
/plugin marketplace add nthnclrk/enablement-skills
/plugin install enablement-core@enablement-skills
```

In this mode:
- `.claude-plugin/marketplace.json` defines the marketplace
- `plugins/` defines bundle structure

## Validation Model

Validation is split into two layers.

### Structural Validation

Run:

```bash
bash scripts/validate.sh
```

This checks repo-specific conventions:
- required skill files
- frontmatter shape
- required sections
- starter eval artifact presence
- `openai.yaml` interface fields

### External Spec Validation

Run:

```bash
bash scripts/validate-official.sh
```

This delegates to the Agent Skills CLI validator when available and checks each skill against the external skill specification.

Use both:
- structural validation for repo health
- official validation for ecosystem compatibility

## Extensibility Model

New skills should be added with the scaffold script:

```bash
bash scripts/new-skill.sh my-new-skill
```

That creates the standard folder shape and starter files, then refreshes starter evals.

Design rules:
- prefer explicitness over abstraction
- keep skill behavior in `SKILL.md`
- keep deep material in `references/` only when it improves repeated execution
- keep system docs workflow-first, not exhaustive

## What This Repo Is Not

This repo is not:
- a monolithic internal knowledge base
- a vendor integration framework
- a secrets-bearing automation repo
- a full product runtime like `gstack`

It is a portable, inspectable layer of skills and workflow guidance that can travel across agent tools and company environments.
