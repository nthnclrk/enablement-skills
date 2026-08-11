# Versions

This file tracks repo-level and bundle-level versions for packaging and update checks.

## Versioning Policy

- Use semantic versioning (`MAJOR.MINOR.PATCH`).
- Bump `PATCH` for copy fixes, metadata fixes, and non-behavioral edits.
- Bump `MINOR` for new skills, new bundles, or meaningful behavior changes.
- Bump `MAJOR` for breaking trigger changes, renamed skills, or removed bundle members.

## Repository

| Component | Version | Last Updated | Status | Notes |
| --- | --- | --- | --- | --- |
| `repo` | `1.2.0` | `2026-08-11` | `active` | Evidence-led skill workflows, reusable context setup, stronger examples and evals, and validated distribution packaging. |

## Bundle Versions

| Bundle | Version | Last Updated | Status | Notes |
| --- | --- | --- | --- | --- |
| `enablement-core` | `0.3.0` | `2026-08-11` | `active` | Stronger program, coaching, account, and planning judgment with the shared context workflow. |
| `enablement-messaging` | `0.3.0` | `2026-08-11` | `active` | Evidence and approval controls across positioning, competitive, talk-track, objection, and content work. |
| `enablement-programs` | `0.3.0` | `2026-08-11` | `active` | Outcome-gated onboarding, certification, coaching, practice, and inspection workflows. |
| `enablement-measurement` | `0.3.0` | `2026-08-11` | `active` | Auditable metrics, impact, win-loss, content, and stage-analysis workflows. |
| `enablement-launches` | `0.3.0` | `2026-08-11` | `active` | Evidence-backed launch gates, seller updates, partner controls, and field asset guidance. |
| `enablement-crm-pack` | `0.3.0` | `2026-08-11` | `active` | Stronger account, deal, forecast, proposal, renewal, MAP, and customer-value decision support. |
| `enablement-ci-pack` | `0.3.0` | `2026-08-11` | `active` | Better sampling, scoring, privacy, and evidence discipline for conversation-based analysis and coaching. |

## Change Log Summary

### 1.2.0 - 2026-08-11

- Deepened all 37 skills with clearer routing, decision rules, evidence boundaries, and operator-ready outputs.
- Added a reusable `.enablement/context.md` setup and safe handoff pattern across every bundle.
- Added realistic example packets, compact routing evals, a practical quality rubric, and read-only release validation.
- Refreshed system playbooks and corrected Claude marketplace packaging for current distribution tooling.

### 1.1.0 - 2026-03-26

- Rewrote the practitioner-facing `SKILL.md` files to replace abstract framework language with terms used by proposal, enablement, PMM, sales, CS, and RevOps teams.
- Tightened default workflows so they read like operator playbooks instead of internal planning notes.
- Updated output contracts and quality bars to match deliverables teams already recognize, such as requirement matrices, business reviews, ROI stories, scorecards, launch kits, and exit criteria.

### 1.0.0 - 2026-03-17

- Declared the first stable public release of the repo.
- Added stronger README positioning, featured skill guidance, and cleaner repo-facing copy.
- Replaced internal-sounding "failure mode" terminology with plainer language across skills and systems docs.

### 0.2.1 - 2026-03-17

- Fixed broken skill routing and improved adjacent-skill guidance.
- Added packaging validation for bundle metadata, symlinks, relative links, and unresolved placeholders.
- Tightened scaffold generation so incomplete new skills fail validation.

### 0.2.0 - 2026-03-17

- Added architecture documentation and clearer team-install guidance.
- Added a skill scaffold generator and reusable templates.
- Added optional Agent Skills CLI validation wrapper.

### 0.1.0 - 2026-03-17

- Established the initial packaged baseline for the repo.
- Added marketplace metadata and seven plugin bundles.
- Added the systems playbook layer, validation script, and starter eval scaffolding.
