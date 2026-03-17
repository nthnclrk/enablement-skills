---
name: content-governance-system
description: Design a practical governance system for revenue enablement content, including taxonomy, ownership, lifecycle controls, and quality checks. Use when asked to reduce content sprawl, define source-of-truth rules, or operationalize publishing and retirement workflows. Route gap prioritization to content-gap-analysis.
---

# Content Governance System
Build a lightweight governance operating model that keeps enablement content accurate, findable, and actively maintained.

## Confirm Inputs First
- If a current `revenue-enablement-context` exists, use it first for role naming, stage language, and evidence standards.
- Confirm current content repositories and owner landscape.
- Confirm primary content types in scope.
- Confirm review, approval, and publishing constraints.
- Confirm current pain points.
- Confirm governance audience and decision authority.
- If inputs are incomplete, ask for only the minimum missing items or proceed with labeled assumptions.

## Read The Right Reference
- Read [references/governance-model-template.md](references/governance-model-template.md) when you need lifecycle, ownership, and policy structure.
- Read [references/source-system-guide.md](references/source-system-guide.md) when governance rules must map into publishing systems and review surfaces.

## Default Workflow
1. Define governance scope and decision rights.
2. Establish a taxonomy that balances discoverability and maintainability.
3. Define lifecycle states and SLA expectations:
   draft, review, publish, monitor, refresh, retire.
4. Assign ownership model and approval boundaries.
5. Define intake and prioritization process for new content requests.
6. Define quality checks for messaging, evidence, and compliance.
7. Define source-of-truth and distribution rules across systems.
8. Add exception handling for urgent launches and time-boxed hotfix content.
9. Define reporting metrics and review cadence.
10. Define governance operating mode:
   lightweight for small teams, full mode for multi-team operations.
11. Route adjacent work:
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
- Lifecycle policy with SLAs and exit criteria.
- RACI-style ownership map and approval flow.
- Intake and prioritization workflow.
- KPI and cadence plan.
- Exception workflow for urgent launch or legal/compliance-triggered changes.
- Assumptions list when source inputs were incomplete.

## What To Avoid
- Designing governance that only works for large teams.
- Blocking urgent launch updates because exception paths are undefined.
- Treating taxonomy cleanup as governance while ownership remains ambiguous.

## Quality Bar
- Governance model is simple enough to run weekly.
- Ownership and decision rights are unambiguous.
- Lifecycle rules prevent stale content accumulation.
- Quality checks are enforceable and not cosmetic.
- Metrics can be measured with available systems.
