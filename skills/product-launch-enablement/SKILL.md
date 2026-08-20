---
name: product-launch-enablement
description: Build cross-functional launch readiness plans and field-ready launch assets for revenue teams. Use when the user asks for launch training, go/no-go gates, role readiness, owner handoffs, or post-launch adoption review. Route concise release translation to release-notes-to-seller-updates, partner or channel packages to partner-enablement-package, and quarter-wide prioritization to quarterly-enablement-planner.
---

# Product launch enablement

Make the field ready for a launch. If it reads like a release note, rewrite it.

A launch package tells each role what changed, what did not, and what they should stop saying. If the user only wants a Slack or email update from the notes, use `release-notes-to-seller-updates`.

**Ready.** "From 20 August, AEs can mention Escalation Rules 2.0 to Pro and Enterprise buyers who inspect overdue handoffs. Existing rules keep running. Do not say migration is automatic."

**Release note.** "We shipped conditional triggers, team escalation, and audit history. Please share with your teams."

If a seller could still pitch the old story after reading it, it is not done.

## Confirm Inputs First

Ask only for the inputs that change readiness:

1. What changed, and why the field should care
2. Who must change behavior
3. Known dates, rollout model, and approvals
4. Approved claims and named claim owners
5. Real delivery and manager capacity

If a date, eligibility rule, or claim is missing, leave it unknown. Do not invent launch dates, availability, or capacity.

## Read The Right Reference

Read [references/launch-readiness-framework.md](references/launch-readiness-framework.md) for tiering, gate evidence, and the first decision window. Read [references/source-system-guide.md](references/source-system-guide.md) when the plan has to land in docs, Slack, an LMS, or a tracker.

## Default Workflow

1. Name the change and the non-change.
   One sentence for what is new. One for what still works the old way. One for the line sellers must retire. Done when all three are specific enough to inspect.
2. Classify the launch from consequence, not breadth.
   Tier 1: optional awareness. Tier 2: a bounded behavior or handoff change that needs practice. Tier 3: pricing, contracts, regulation, customer transition, or hard-to-reverse ops. Breadth scales delivery; it does not promote a low-risk update. Done when you can say why this tier in one sentence.
3. Test the capacity envelope.
   Compare audience demand to facilitator, manager, and constrained-owner time. Return `fits`, `reduce`, `sequence`, or `blocked`. Done when the binding constraint has an owner.
4. Write the field message by role.
   What changed. Why it matters. When to use it. What not to say. Done when AE, SE, CS, and manager each have a different next action, or you can say why they share one.
5. Build only the kit this tier needs.
   FAQ, talk-track change, objection notes, proof with source. Add runnable practice when Tier 2 or 3 requires it. Route a full spoken track to `talk-track-builder`.
6. Set evidence-backed go/no-go gates.
   Product truth, approved claims, eligibility, field readiness, support. A gate is `ready` only when the operational path works, not when a doc was approved. Attendance is not readiness.
7. Map handoffs.
   PMM, enablement, sales, CS, RevOps, support. Done when a seller knows who to ping for eligibility, proof, pricing, and custom work.
8. Set the first post-launch decision window.
   Use confirmed cadence. If unknown, label it `proposed` and name who confirms it. Do not invent numeric thresholds.

For a partner or channel pack use `partner-enablement-package`. For what will not happen this quarter use `quarterly-enablement-planner`.

## Output Contract

Return a package a launch owner can run:

- Launch tier, one-sentence rationale, and what sellers should stop saying
- Role actions and the field message
- Capacity decision: `fits`, `reduce`, `sequence`, or `blocked`
- Owner and handoff matrix
- Gates with evidence, claim owner, decision owner, and status
- Training or practice only if this tier needs it
- First decision window, or a proposed window with a confirmation owner
- Assumptions and blockers

Do not add a quarter roadmap or a partner-facing pack unless asked. Do not publish or mark a gate ready without evidence.

## Quality Bar

- A seller can explain what changed, what did not, and what to stop saying.
- The package refused to be a release-note restatement.
- Tier follows consequence, not audience size.
- Every field-facing claim has a named owner, or is marked blocked.
- Capacity is a decision, not a hidden overbook.
- A gate is ready only when the operational path works.
- No invented dates, eligibility, proof, or monitoring numbers.
