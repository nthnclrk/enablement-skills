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
| `repo` | `1.1.0` | `2026-03-26` | `active` | Practitioner-language refresh across skill workflows, output contracts, and repo-facing routing copy. |

## Bundle Versions

| Bundle | Version | Last Updated | Status | Notes |
| --- | --- | --- | --- | --- |
| `enablement-core` | `0.2.0` | `2026-03-26` | `active` | Practitioner-language refresh for context, routing, planning, and program design skills. |
| `enablement-messaging` | `0.2.0` | `2026-03-26` | `active` | Reworked messaging, battlecard, objection, talk track, and content asset workflows in practitioner terms. |
| `enablement-programs` | `0.2.0` | `2026-03-26` | `active` | Coaching, ramp, certification, and launch/program workflows now use plainer operator-facing guidance. |
| `enablement-measurement` | `0.2.0` | `2026-03-26` | `active` | Metrics, ROI-story, content-ops, and audit skills now use clearer enablement and RevOps language. |
| `enablement-launches` | `0.2.0` | `2026-03-26` | `active` | Launch readiness and seller-update workflows now use field-facing launch language and tighter action guidance. |
| `enablement-crm-pack` | `0.2.0` | `2026-03-26` | `active` | Stage, deal review, forecast, account, MAP, renewal, and pipeline workflows rewritten in sales/CS/RevOps language. |
| `enablement-ci-pack` | `0.2.0` | `2026-03-26` | `active` | Call review, objection mining, field feedback, and win/loss skills now use practical coaching and insight language. |

## Change Log Summary

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
