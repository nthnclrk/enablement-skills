---
name: mutual-action-plan-builder
description: Build mutual action plans for complex deals and coordinated customer initiatives. Use when asked to create or improve a MAP, align buyers and sellers on milestones, or define stage-based execution with owners and dates. For proposal or RFP process orchestration, use proposal-rfp-orchestrator.
---

# Mutual Action Plan Builder

Create a shared plan with the customer that makes owners, milestones, and success criteria explicit.

## Confirm Inputs First

Collect the minimum required inputs:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Target outcome and target date
- Current stage, task durations, mandatory lead times, capacity constraints, blackout dates, and major dependencies
- Internal and customer-side stakeholders
- Required milestones and approvals
- Known risks and blockers
- Existing customer confirmations, their source and date, and the current plan version

If critical inputs are missing, ask for the smallest missing set. Use labeled assumptions only for the proposed workplan; never label an assumed owner, date, approval, requirement, action, or acceptance criterion as a customer commitment.

## Read The Right Reference

- For MAP fields, milestone quality, and gating definitions, read [references/map-framework.md](references/map-framework.md).

## Default Workflow

1. Anchor on target outcome.
Define the concrete outcome the plan must deliver and by when. Mark whether the outcome and target date are `draft`, `proposed`, or `agreed`.

2. Reverse-map milestones.
Work backward from the target date using verified task durations, mandatory lead times, dependencies, capacity, and blackout dates. Identify the critical path, latest-safe-start dates, and available slack. If the target cannot be met, state `target infeasible — replan required` rather than compressing unknown or mandatory work.

3. Assign shared ownership.
Set internal and customer owners for each milestone.
Make dependencies and handoffs explicit.
Keep an unconfirmed customer owner as proposed rather than agreed.

4. Add risk controls.
Attach risk signals, mitigation actions, and escalation triggers to critical milestones.

5. Validate mutuality.
Make sure the plan is not seller-only.
Apply the agreement and completion-evidence states in the reference. Attach the confirmation source and date; do not infer agreement from silence, a calendar invite, or an internal note.

6. Split customer-visible and internal-private views.
Keep shared commitments in the customer-facing MAP and move internal risk commentary, negotiation strategy, and contingency notes to an internal companion view.

7. Control changes.
When an agreed owner, date, milestone, or acceptance criterion changes, show the prior value and return the changed field to proposed until the customer reconfirms it.

## Tool Notes

- `CRM` can hold MAP status and owner fields when available.
- `Docs/Sheets` can act as the living source of truth shared with the customer.
- `Project tools` can help manage due dates and reminders.

Keep workflow tool-agnostic when these systems are unavailable.

## Output Contract

Deliver:

1. Plan summary (target outcome, date, stage)
2. Stakeholder and owner map
3. Milestone table with entry/exit criteria
4. Agreement state, completion evidence, and last-confirmed source for each customer commitment
5. Dependency and handoff map
6. Schedule-feasibility decision with critical path, latest-safe-start dates, and slack
7. Risk and escalation plan
8. Customer-visible MAP view
9. Internal-private MAP view
10. Immediate next actions for the next agreed planning horizon
11. Open questions and assumptions

## Quality Bar

- Ensure each milestone has an owner, due date, and clear completion criteria.
- Make customer-side actions explicit, not implied.
- Keep sequencing realistic and dependency-aware.
- Never present an infeasible target as an executable plan; surface the constraint and the decision needed to replan.
- Include escalation logic for high-risk milestones.
- Keep internal-only commentary out of customer-visible outputs.
- Do not fabricate customer commitments or approval timelines.
- Keep agreement state separate from execution status: a task can be in progress without being customer-agreed, and an agreed task is not complete without evidence.
- Reconfirm material changes instead of silently overwriting the agreed plan.
