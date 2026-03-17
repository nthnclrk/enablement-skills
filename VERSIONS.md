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
| `repo` | `0.2.1` | `2026-03-17` | `active` | Added stronger packaging validation and fixed broken routing/scaffold gaps. |

## Bundle Versions

| Bundle | Version | Last Updated | Status | Notes |
| --- | --- | --- | --- | --- |
| `enablement-core` | `0.1.0` | `2026-03-17` | `active` | Foundational context, routing, program design, planning. |
| `enablement-messaging` | `0.1.1` | `2026-03-17` | `active` | Positioning, talk tracks, objections, battlecards, content workflows. |
| `enablement-programs` | `0.1.0` | `2026-03-17` | `active` | Onboarding, certification, coaching, and inspection workflows. |
| `enablement-measurement` | `0.1.0` | `2026-03-17` | `active` | Metrics instrumentation and impact narrative skills. |
| `enablement-launches` | `0.1.1` | `2026-03-17` | `active` | Product launch and seller-update workflows. |
| `enablement-crm-pack` | `0.1.0` | `2026-03-17` | `active` | CRM-oriented workflows and integration-linked skills. |
| `enablement-ci-pack` | `0.1.0` | `2026-03-17` | `active` | Conversation-intelligence-oriented workflows and analysis skills. |

## Change Log Summary

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
