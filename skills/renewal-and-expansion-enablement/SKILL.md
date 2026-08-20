---
name: renewal-and-expansion-enablement
description: Build reusable renewal and expansion motions for customer-facing teams across a segment or book of business. Use when the user asks for renewal plays, save motions, expansion qualification, signal design, or repeatable post-sale inspection. Route single-account diagnosis to account-brief-builder, shared customer milestones to mutual-action-plan-builder, and QBR/EBR narratives to qbr-ebr-builder.
---

# Renewal and expansion enablement

Write three different plays: save, healthy renewal, and expansion. Do not run them as one motion.

A good playbook tells a CSM which play they are in, what signal put them there, and what they must not do. If the user wants one account diagnosed, use `account-brief-builder`. If they want a customer-facing QBR, use `qbr-ebr-builder`.

**Save.** "Usage on the purchased workflow is down against this account's baseline, the sponsor left, and two Sev-1 tickets are open. Restore value and named executive coverage before any commercial conversation."

**Healthy renewal.** "The decision owner confirmed realized value. Lock the commercial path to the notice date."

**Expansion.** "The same account has a new buyer task and capacity. That is a different play, not a slide in the renewal deck."

If every account gets a QBR, a discount ladder, and an upsell track, rewrite it.

## Confirm Inputs First

Ask only for the inputs that change the plays:

1. Business model and contract mechanics: term end, notice, auto-renew, pricing notice, amendments
2. Target segments and who owns them (CSM, AM, hybrid)
3. Available usage, value, stakeholder, support, and commercial signals with definitions and as-of dates
4. Verified procurement, legal, security, and signature lead times
5. Commercial governance and the current performance baseline, if it exists

If a date, notice period, or threshold is missing, leave it unknown. Do not invent contract terms, usage metrics, health scores, or expansion cutoffs.

## Read The Right Reference

Read [references/renewal-expansion-framework.md](references/renewal-expansion-framework.md) before defining lifecycle plays, signals, or manager checkpoints.

## Default Workflow

1. Build timelines from the contract.
   Term, notice, pricing notice, budget, procurement, legal, signature. Latest safe start = required completion minus verified lead time minus owner-approved contingency. Unknown dates are blockers, not a generic 90-day countdown.
2. Separate the three motions.
   Save triggers, healthy-renewal triggers, expansion-readiness triggers. A healthy renewal is not expansion-ready. An at-risk account does not get a growth play because whitespace exists.
3. Define each signal.
   Formula or observation, source, account baseline, window, freshness, threshold owner, and unknown state. System health scores are inputs, not ground truth. Missing data is never healthy.
4. Write the plays.
   Trigger, owner, sequence, commercial boundary, exit evidence, inspection checkpoint. Only the plays this contract model actually supports.
5. Add role moves, not a second conversation.
   What CS, AM, Sales, and Support do next. For spoken lines on a defined moment, use `talk-track-builder`. For a shared customer plan, use `mutual-action-plan-builder`.
6. Set commercial guardrails.
   Discount authority, deal desk, legal and procurement states, exception rules. Keep owners explicit.
7. Set manager inspect.
   Review prompts tied to contractual milestones and signal changes, not a blanket monthly ritual.

Do not update renewal dates, health states, or commercial fields without explicit approval.

## Output Contract

Return a segment playbook a CS or AM team can run:

- Play matrix by segment: save, healthy renewal, expansion
- Contract-derived milestone map with source, owner, latest safe start, and gaps
- Signal map with positive, caution, risk, and unknown states
- Commercial governance-state map
- Role action prompts
- Manager inspection checklist and cadence
- KPI definitions with sourced or owner-approved thresholds
- Assumptions, if you had to make any

Do not diagnose a named account or write a QBR narrative here.

## Quality Bar

- A CSM can tell which of the three plays they are in.
- Timelines are contract-derived, with source and owner on each milestone.
- Every trigger has an unknown state; missing data is not healthy.
- No invented contract dates, usage metrics, pricing, or thresholds.
- Expansion stays gated on value, buyer task, stakeholders, capacity, and commercial path.
- Field or health-score changes stay recommendations.
