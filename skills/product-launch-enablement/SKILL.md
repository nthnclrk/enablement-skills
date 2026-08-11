---
name: product-launch-enablement
description: Build cross-functional launch readiness plans and field-ready launch assets for revenue teams. Use when the user asks for launch training, go/no-go gates, role readiness, owner handoffs, or post-launch adoption review. Route concise release translation to release-notes-to-seller-updates, partner or channel packages to partner-enablement-package, and quarter-wide prioritization to quarterly-enablement-planner.
---

# Product Launch Enablement

Turn product changes into launch readiness, seller guidance, and post-launch follow-through.

## Confirm Inputs First

Confirm:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- What changed and why it matters to the field
- Target audience and impacted teams
- Launch date, rollout model, and required approvals
- Cross-functional owner model (PMM, Enablement, Sales, CS, RevOps, Support)
- Commercial implications, risks, and non-goals
- Required behavior changes for field teams
- Evidence sources and named claim owners for capability, eligibility, timing, and commercial claims
- Audience and cohort demand, delivery and manager time, constrained-owner capacity, practice or reinforcement load, and fixed launch dependencies

If details are incomplete, request missing blockers. Use labeled assumptions only for the internal workplan; leave release status, dates, availability, eligibility, claims, approvals, and readiness states unknown until verified.

## Read The Right Reference

Read [references/launch-readiness-framework.md](references/launch-readiness-framework.md) before planning.
Read [references/source-system-guide.md](references/source-system-guide.md) when launch inputs or distribution depend on docs, Slack, enablement platforms, or project trackers.

## Default Workflow

1. Classify the launch from observable impact.
Assess breadth, required behavior change, and risk/reversibility separately. Breadth determines delivery scale and capacity; it does not elevate an otherwise low-risk awareness update to Tier 3. Use Tier 1 for optional, low-risk awareness or guidance changes; Tier 2 for bounded message, workflow, eligibility, or handoff changes that require practice or coordination; and Tier 3 for mandatory or materially consequential changes involving pricing, contracts, regulation, customer transition, hard-to-reverse operations, or comparable go/no-go risk. When dimensions point to different tiers, choose the depth needed to control the material consequence and explain the judgment rather than applying a highest-score formula.
2. Test the capacity envelope.
Compare audience demand, delivery and manager time, constrained-owner throughput, practice and reinforcement load, and fixed dependencies. Return `fits`, `reduce`, `sequence`, or `blocked`; do not hide infeasibility behind a readiness plan.
3. Define what each team needs to know, do, and stop doing.
4. Write the field message: what changed, why it matters, when to use it, and what not to say.
5. Build the launch kit: FAQ, talk track, objection notes, and any rep-facing proof points.
6. Set training, practice, and manager inspection checkpoints.
7. Define evidence-backed go/no-go gates.
For product truth, approved claims, rollout eligibility, field readiness, and support readiness, record the acceptance test, evidence and as-of date, claim owner, decision owner, and status. Mark a gate passed only when the evidence meets the test; otherwise mark it blocked or explicitly waived with rationale and approver.
8. Map handoffs and escalation paths across PMM, enablement, sales, CS, RevOps, and support.
9. Set the first post-launch decision window and monitoring rhythm from launch tier, reversibility, evidence volume, sales or customer cycle, and the team's confirmed operating cadence. If cadence is unknown, label the proposed rhythm and its confirmation owner; do not present it as agreed. Keep unsupported numeric signal or sample thresholds unresolved rather than inventing them.
10. Produce a launch timeline and owner matrix.

## Tool Notes

- Keep deliverables tool-agnostic.
- Use [references/source-system-guide.md](references/source-system-guide.md) for source-of-truth, destination mapping, and safe writeback boundaries.
- If requested, map outputs into the user's docs, slides, or project tracker stack.

## Output Contract

Default output includes:

- Launch tier, evidence, rationale, and readiness matrix
- Cross-functional owner and handoff matrix
- Capacity ledger and fit/reduce/sequence/blocked decision
- Field message summary and FAQ
- Talk-track and objection updates
- Training and practice plan
- Runnable practice scenarios when required, with participant prompt, observable success anchors, critical errors, and retry guidance
- Go/no-go gate ledger with evidence, claim owners, decision owners, and status
- Post-launch signal review plan with a justified first decision window

## Quality Bar

- Launch guidance is role-specific and action-oriented.
- Field teams can explain the change, when to use it, and what not to say.
- Cross-functional ownership and escalation paths are unambiguous.
- Classification and readiness decisions are traceable to current evidence.
- Launch breadth scales audience variants and delivery capacity but never forces heavyweight Tier 3 controls without a material behavior, customer, commercial, legal, or operational consequence.
- Every field-facing claim and readiness gate has a named owner.
- The review loop catches message drift and adoption issues early.
- Every required launch asset is present, explicitly blocked, or deferred with an owner; naming an asset in a training plan does not count as delivering it.
- A gate is `ready` only when its acceptance test covers the operational handoff, destination, or support path required for use; artifact approval alone may be insufficient.
- Put detailed ledgers and reusable facts in appendices when repetition would make the decision summary harder to use.
