# Contributing

Thanks for contributing to `enablement-skills`.

## What This Repo Is

This repo packages reusable skills and supporting workflow guidance for enablement professionals using agent tools such as Claude Code and Codex.

It is not:
- a private prompt dump
- a full vendor-integration codebase
- an exhaustive product-documentation mirror

## Before You Change Anything

Read:
- [README.md](README.md)
- [AGENTS.md](AGENTS.md)
- [ARCHITECTURE.md](ARCHITECTURE.md)
- [systems/REGISTRY.md](systems/REGISTRY.md) if your change touches system playbooks

## Contribution Rules

For skill changes:
1. Update the relevant file under `skills/<skill-name>/`.
2. Prefer starting with `bash scripts/new-skill.sh <skill-name>` for new skills.
3. Keep `SKILL.md` compact and procedural.
4. Preserve frontmatter shape: `name` and `description` only.
5. Update eval fixtures if the trigger boundary or output contract changed.
6. Update [VERSIONS.md](VERSIONS.md) and [CHANGELOG.md](CHANGELOG.md) for meaningful behavior changes.

For system playbook changes:
1. Keep guidance workflow-first.
2. Prefer common, reliable patterns over exhaustive feature lists.
3. Be explicit when capabilities are tenant-specific, rapidly evolving, or not fully verified from public docs.
4. Do not imply this repo ships adapters or native integrations unless code actually exists for that.

## Validation

Run:

```bash
bash scripts/validate.sh
```

Optional external-spec check:

```bash
bash scripts/validate-official.sh
```

If you add or substantially change examples, check them manually for:
- realistic inputs
- realistic prompts
- output shapes that match the target skill

## Pull Requests

A good PR should state:
- what changed
- why it changed
- which skills or system playbooks are affected
- whether validation passed

Use small, reviewable PRs. Avoid bundling unrelated skill changes together.

## Licensing And Attribution

By contributing to this repo, you agree that your contributions will be licensed under the MIT license in [LICENSE](LICENSE).

Vendor names referenced in this repo remain the property of their respective owners. Do not imply partnership, endorsement, or affiliation where none exists.
