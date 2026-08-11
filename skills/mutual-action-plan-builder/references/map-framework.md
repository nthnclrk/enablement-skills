# Mutual Action Plan Framework

Use this framework when creating or auditing a MAP.

## Core Rules

- Define the target business outcome before tasks.
- Work backward from target date to milestones.
- Require both internal and customer owners.
- Use explicit completion criteria, not vague status labels.
- Keep the MAP as a living document, not a static attachment.
- Keep customer-visible commitments separate from internal strategy commentary.
- Record agreement and completion evidence separately.

## Agreement And Evidence States

Use one agreement state per customer-side commitment:

- `draft`: seller-authored and not yet shared
- `proposed`: shared or discussed, but not explicitly confirmed
- `agreed`: explicitly confirmed by the customer, with source and date
- `changed`: previously agreed content changed and needs reconfirmation
- `declined`: the customer explicitly rejected the commitment

Use one completion-evidence state independently:

- `none`: no completion claim
- `reported`: a named party reports completion, but no artifact is linked
- `artifact-linked`: a required artifact or system record is linked
- `jointly-accepted`: both sides accepted the exit criteria as met

Do not convert silence, meeting attendance, or seller-entered CRM notes into `agreed`. If a material field changes, retain the change history and return it to `proposed` or `changed`.

## Milestone Table Template

| Milestone | Duration / Lead Time | Dependency | Latest Safe Start | Due Date | Slack | Internal Owner | Customer Owner | Agreement State | Entry Criteria | Exit Criteria | Completion Evidence | Confirmation Source / Date | Risk Trigger |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Use verified contractual, operational, or owner-confirmed durations and blackout dates. Leave unknown timing unresolved and show its effect on the possible schedule. If the critical path exceeds the target date, return `target infeasible — replan required` with the blocking constraint and decision owner.

## Quality Checks

- Every critical milestone has a customer-side owner.
- Every milestone has a measurable exit criterion.
- Dependencies are visible and sequenced.
- The critical path, latest-safe-start dates, and remaining slack are visible; infeasible timing is not hidden by assumed compression.
- Escalation trigger is defined for high-impact items.
- The next agreed planning horizon is concrete and assigned.
- Every `agreed` or completed customer action has traceable evidence.

## Dual-View Pattern

- Customer-visible MAP:
  shared milestones, owners, dates, dependencies, and agreed risks.
- Internal-private MAP:
  negotiation strategy, internal risk scoring, and contingency planning.
