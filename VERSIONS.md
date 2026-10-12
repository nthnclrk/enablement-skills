# Versions

This file tracks repo-level and bundle-level versions for packaging and update checks.

## Current release

Source version `1.5.0` and all seven Claude bundles at `0.6.0`. See the [release notes](CHANGELOG.md#150---2026-10-13) and [GitHub releases](https://github.com/nthnclrk/enablement-skills/releases) for publication history.

The v1.4.0 source tag remains in place. The v1.5.0 release also includes the v1.3.0 and v1.4.0 changes for readers upgrading from the previous published GitHub Release, v1.2.0.

## Versioning Policy

- Use semantic versioning (`MAJOR.MINOR.PATCH`).
- Bump `PATCH` for copy fixes, metadata fixes, and non-behavioral edits.
- Bump `MINOR` for new skills, new bundles, or meaningful behavior changes.
- Bump `MAJOR` for breaking trigger changes, renamed skills, or removed bundle members.

## Repository

| Component | Version | Last Updated | Status | Notes |
| --- | --- | --- | --- | --- |
| `repo` | `1.5.0` | `2026-10-13` | `active` | Request-sized outputs, practical coaching, evidence and approval rules, and recorded behaviour checks. |

## Bundle Versions

| Bundle | Version | Last Updated | Status | Notes |
| --- | --- | --- | --- | --- |
| `enablement-core` | `0.6.0` | `2026-10-13` | `active` | Optional context, direct specialist routing, planning and field-work updates. |
| `enablement-messaging` | `0.6.0` | `2026-10-13` | `active` | Focused objection responses, competitive fit guidance and audience approval rules. |
| `enablement-programs` | `0.6.0` | `2026-10-13` | `active` | Coaching practice, readiness evidence and feasible manager schedules. |
| `enablement-measurement` | `0.6.0` | `2026-10-13` | `active` | Reproducible metrics, assessment distinctions and bounded impact claims. |
| `enablement-launches` | `0.6.0` | `2026-10-13` | `active` | Request-sized launch and partner outputs with evidence and sharing boundaries. |
| `enablement-crm-pack` | `0.6.0` | `2026-10-13` | `active` | Account, proposal, customer-value and shared-record approval rules. |
| `enablement-ci-pack` | `0.6.0` | `2026-10-13` | `active` | Evidence-based call feedback, practice and limits on cross-call conclusions. |

## Change Log Summary

### 1.5.0 - 2026-10-13

- Revised all 38 skills and their supporting instructions to fit the requested work.
- Updated coaching, evidence, readiness, measurement and external-action rules.
- Aligned evaluation definitions and retained focused behaviour checks with their limitations.
- Kept names, bundle membership and installation commands stable; all bundles are now `0.6.0`.

### 1.4.0 - 2026-08-20

- Validation now checks craft jobs, not identical heading names. Skills may take different shapes.
- Added `enablement-house-style` and removed the copied context paragraph from specialist leaves.
- Replaced the blank skill template with a worked example. New skills are no longer born as forms.
- Added a with-skill vs no-skill behavior protocol and recorded the first four comparisons.

### 1.3.0 - 2026-08-20

- Rewrote all 37 skills around one leading concept, a good/bad excerpt, done-checked procedures, and a quality bar a practitioner can score.
- Replaced form-first references with judgment files that teach the fail/pass test for that skill.
- Tightened evals so output checks require the new contracts, not section-list prose.
- Kept portable frontmatter as `name` and `description` only; trigger language stayed stable.

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
