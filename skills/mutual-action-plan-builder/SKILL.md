---
name: mutual-action-plan-builder
description: Build mutual action plans for complex deals and coordinated customer initiatives. Use when asked to create or improve a MAP, align buyers and sellers on milestones, or define stage-based execution with owners and dates. For proposal or RFP process orchestration, use proposal-rfp-orchestrator.
---

# Mutual action plan builder

Build a customer-shared plan with clear responsibilities, feasible milestones, and evidence of what both sides have agreed.

A MAP is a shared execution plan for a complex deal or coordinated initiative. Every milestone has a buyer-side owner and a seller-side owner. If the user wants proposal or RFP process orchestration, use `proposal-rfp-orchestrator`.

**Two owners.** "Security questionnaire submitted — buyer: Priya (InfoSec), seller: Jordan (SE). Exit: filed in their portal. Agreed 22 April, Priya's email."

**Task list.** "Complete security review. Owner: AE. Due: end of quarter."

Silence is not agreement. A calendar invite is not a commitment.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the plan:

1. Target outcome and target date, and whether the customer has agreed to them
2. Current stage, known durations, lead times, blackout dates, and dependencies
3. Buyer-side and seller-side stakeholders
4. Required milestones and approvals
5. Existing confirmations, with source and date

If a customer owner, date, or acceptance criterion is unconfirmed, leave it proposed. Do not invent commitments, logos, pricing, or approval timelines.

## Supporting material

Read [references/map-framework.md](references/map-framework.md) for agreement states, the two-owner test, and infeasible-date handling. Skip it if the user already has a live MAP and only wants a gap pass.

## Procedure

1. Anchor the outcome.
   The concrete result the plan must deliver, and by when. Mark the outcome and date `draft`, `proposed`, or `agreed`. Done when you can say what "done" looks like in customer language.
2. Reverse-map milestones.
   Work backward from the target using verified durations, lead times, capacity, and blackouts. Name the critical path, latest-safe-start dates, and slack. If the target cannot be met, say `target infeasible — replan required`. Do not compress unknown work.
3. Put two owners on every milestone.
   Buyer-side and seller-side. A missing buyer owner is a gap, not a seller-owned task. Keep unconfirmed customer owners proposed.
4. Write entry and exit criteria a third party could inspect.
   Not "security complete." What artifact, in what system, accepted by whom.
5. Identify dependencies and risks to delivery or acceptance.
   Include risks to the outcome even when the date appears unchanged. Name the signal, response, and escalation owner. Keep internal commercial scoring off the customer view.
6. Check mutuality.
   Agreement state and completion-evidence state are independent. Attach confirmation source and date. Do not infer `agreed` from silence, attendance, or a seller CRM note.
7. Split the views.
   Shared commitments on the customer-visible MAP. Negotiation strategy, internal risk, and contingency on the internal companion.
8. Control changes.
   When an agreed owner, date, milestone, or exit criterion changes, show the prior value and return the field to `proposed` or `changed` until the customer reconfirms.

Sending the plan to a customer or changing a shared plan or CRM record requires explicit approval of the recipients and changes.

For proposal or RFP orchestration use `proposal-rfp-orchestrator`. For a single-deal review use `deal-inspection-coach`.

## What to return

For a plan review, return the gaps and proposed changes while preserving confirmed commitments. For a new plan, include:

- Target outcome, date, and agreement state
- Stakeholder map with buyer-side and seller-side owners
- Milestone table: two owners, entry/exit criteria, dependencies, latest-safe-start, slack
- Agreement state, completion evidence, and last-confirmed source for each customer commitment
- Schedule-feasibility call: critical path or `target infeasible — replan required`
- Customer-visible view and internal-private view
- Immediate next actions and open questions

## Quality bar

- Every milestone has a buyer-side owner and a seller-side owner.
- Exit criteria are inspectable, not status labels.
- Customer commitments stay proposed until a source and date exist.
- An infeasible target is named, not hidden by assumed compression.
- Internal commentary is absent from the customer-visible view.
- Each side can see its responsibilities and which commitments still need confirmation.
