---
name: quarterly-enablement-planner
description: Build a quarterly enablement roadmap and execution calendar across launches, onboarding, coaching, and field support. Use when the user asks to plan next quarter, sequence enablement work, set a priority stack, or align initiatives to business priorities and real capacity. Route full initiative chartering to enablement-program-design and launch-specific readiness buildouts to product-launch-enablement.
---

# Quarterly enablement planner

Choose the enablement work the team can deliver this quarter and make the trade-offs visible to decision-makers.

A quarterly plan connects priorities to available capacity: what will be delivered, what will wait, and who accepts the trade-offs. Initiative charters belong in `enablement-program-design`.

**Plan.** "This quarter we ship the packaging launch and the AE qualification program. Partner certification, the battlecard refresh, and the new-hire rewrite wait. Capacity is 18 delivery days; those three do not fit."

**Wish list.** "Twelve initiatives across launch, onboarding, coaching, and content, all marked P1, owners TBD."

Show the deferred work, decision owner, and conditions for reconsidering it.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the stack:

1. The quarter and the business priorities
2. Immovable launches, compliance dates, and peak selling periods
3. Gross capacity by constrained owner, plus BAU, carryover, and leave
4. Candidate work with evidence, dependencies, and required effort

If owner capacity is unknown, leave that work unscheduled. Do not invent capacity, fixed dates, or commitments to make the roadmap fit.

## Supporting material

Read [references/quarterly-plan-template.md](references/quarterly-plan-template.md) for the defer test, scoring anchors, and the must-do conflict rule. Skip it if they already scored the stack and only want the calendar written.

## Procedure

1. Set the planning boundary.
   Quarter, priorities, immovable dates, and the roles covered. Done when you know which decisions this plan must protect.
2. Build the net-capacity ledger first.
   `Net = Gross - BAU - carryover - leave - protected contingency`. Use the contingency they supplied; do not invent a percentage. Include design, SME, delivery, reinforcement, and measurement. Done when every constrained owner has a number in one unit.
3. Score the candidates.
   Impact and necessity from the reference anchors. Rate confidence and effort separately. Do not divide priority by effort.
4. Classify each item.
   `must do`, `should do`, `validate`, or `defer`. Must-do still needs an owner and a capacity plan. Done when every candidate has one label and a reason.
5. Name what will not happen this quarter.
   Defer list with rationale, re-entry condition, and decision owner. If must-do load exceeds capacity, surface the conflict: cut scope, move a date with the authorized owner, add verified capacity, or displace something else. Do not silently overbook.
6. Sequence what will happen.
   Real decision dates, dependencies, peak selling, and field absorption. Overlapping launches can exceed audience capacity even when enablement has time. Assign owners, milestones, and due dates only when they are known.
7. Set review points.
   Decision gates, material dependency dates, and explicit re-plan triggers. New work enters through a trade-off: consume contingency, reduce scope, or displace an item.

For a program charter use `enablement-program-design`. For one launch kit use `product-launch-enablement`.

## What to return

Return a plan leadership can approve or revise. For a reprioritisation, show the change and the work it displaces. For a full quarter, include:

- What will ship this quarter, with owners and milestones
- What will not happen this quarter, with rationale and re-entry
- Capacity ledger by constrained owner
- Decision table: label, impact, confidence, effort, rationale
- Review points and re-plan triggers
- Risks and open decisions

Do not add a full program charter or a launch kit. Do not write dates into a tracker without approval.

## Quality bar

- The plan names what will not happen this quarter.
- Scheduled work has named owner capacity for design, delivery, reinforcement, and measurement.
- Must-do without capacity is a visible conflict, not a calendar entry.
- Low-confidence work is a validation, not a full build.
- Field absorption is checked, not only enablement hours.
- No invented capacity, dates, or commitments.
