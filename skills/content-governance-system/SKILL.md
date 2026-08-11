---
name: content-governance-system
description: Design a practical content ops system for revenue enablement content, including taxonomy, ownership, lifecycle controls, and quality checks. Use when asked to reduce content sprawl, define source-of-truth rules, or operationalize publishing and retirement workflows. Route gap prioritization to content-gap-analysis.
---

# Content Governance System

Build a lightweight governance model that keeps enablement content accurate, findable, and actively maintained.

## Confirm Inputs First

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Confirm current content repositories and owner landscape.
- Confirm primary content types in scope.
- Confirm review, claim-approval, system-write, and publishing authority.
- Confirm current pain points.
- Confirm governance audience and decision authority.
- If inputs are incomplete, ask for only the minimum missing items. Use labeled assumptions only for reversible governance design; keep source-of-truth status, ownership, approvals, dates, and system-write authority unknown until verified.

## Read The Right Reference

- Read [references/governance-model-template.md](references/governance-model-template.md) when you need lifecycle, ownership, and policy structure.
- Read [references/source-system-guide.md](references/source-system-guide.md) when governance rules must map into publishing systems and review surfaces.

## Default Workflow

1. Define governance scope and decision rights.
2. Establish a taxonomy that balances discoverability and maintainability.
3. Use two independent state axes across systems:
   publication status (`draft`, `in_review`, `approved`, `published`, `retired`) and review status (`current`, `due`, `overdue`, `blocked`).
4. Define entry, exit, review-trigger, and conditional SLA rules for each axis. A live asset remains `published` while due or overdue for review.
5. Separate content approval from authorization to publish, relabel, archive, or change permissions in a system.
6. Define intake and prioritization for new content requests.
7. Define quality checks for message accuracy, proof, audience, and compliance.
8. Define canonical-source, version, and distribution-copy rules across systems.
9. Add an approved, time-boxed exception path for urgent changes.
10. Define measurable operating metrics and a review cadence.
11. Scale controls to content risk, change rate, and team capacity; do not create unused roles or gates.
12. Route adjacent work:
   For identifying high-impact missing assets, use content-gap-analysis.
   For generating artifacts, use the relevant content production skill.

## Tool Notes

- Tool-agnostic governance is the default.
- Optional systems can operationalize workflows:
  docs platforms, knowledge bases, ticketing tools, and analytics dashboards.
- Use [references/source-system-guide.md](references/source-system-guide.md) for source-of-truth rules, system risks, and safe implementation boundaries.
- If tooling is fragmented, define process first and map systems second.

## Output Contract

- Governance charter with scope and decision rights.
- Taxonomy and metadata schema.
- Publication and review-status policies with SLAs and exit criteria.
- RACI-style ownership map and approval flow.
- Approval and system-write authorization matrix.
- Canonical-source, version, distribution, and retirement rules.
- Intake and prioritization workflow.
- KPI and cadence plan.
- Exception workflow for urgent launch or legal/compliance-triggered changes.
- Assumptions list when source inputs were incomplete.

## What To Avoid

- Designing governance that only works for large teams.
- Blocking urgent launch updates because exception paths are undefined.
- Treating taxonomy cleanup as governance while ownership remains ambiguous.
- Treating content approval as permission to change a live system.
- Using arbitrary review intervals when risk or source changes should trigger review.

## Quality Bar

- Governance model is simple enough to run in the agreed operating cadence.
- Ownership and decision rights are unambiguous.
- Publication and review-status names and transitions are identical in the policy, metadata, and mapped systems.
- Lifecycle rules prevent stale content accumulation.
- Quality checks are enforceable and not cosmetic.
- Metrics can be measured with available systems.
