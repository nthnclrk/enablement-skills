---
name: content-gap-analysis
description: Audit revenue enablement content coverage and prioritize the highest-impact gaps by role, stage, and use case. Use when asked to review existing assets, identify missing or stale content, or produce a prioritized content backlog. Route content creation to one-pager-and-slide-outline, battlecard-builder, or talk-track-builder.
---

# Content gap analysis

Prioritize content work by the field problem it will solve. Check whether an asset exists, fits the task, can be found, and is used before recommending a new one.

**Fails.** "Zero views this quarter, so retire the security FAQ."

**Passes.** "The security FAQ exists, is current, and drew 19 failed searches against 6 views. Action: improve discoverability, not retire. The mid-market ROI template does not exist; the enterprise calculator is out of scope. Action: create."

A recurring operating model for owners, review, and publishing is `content-governance-system`. Raw field-note synthesis is `field-feedback-synthesizer`.

## Inputs

Ask only for the inputs that change the backlog:

1. Inventory source and the roles, stages, and jobs in scope
2. Known field requests, failed searches, or usage with an eligible-audience denominator
3. Evaluation horizon: this quarter, half, or annual planning
4. Who can own create, update, consolidate, or retire work

If usage, ownership, or freshness is unknown, leave it unknown. Do not invent usage or ROI.

## Supporting material

Read [references/content-gap-prioritization.md](references/content-gap-prioritization.md) for exists-vs-used tests, action types, and scoring rules. Read [references/source-system-guide.md](references/source-system-guide.md) when the inventory comes from a content repository, wiki, or field-signal channel.

## Procedure

1. Build the inventory you can defend.
   Stable ID, owner, audience, status, last reviewed date, canonical location. Done when each in-scope asset has enough metadata to judge exists vs used.
2. Map coverage.
   Role, stage, job-to-be-done. An enterprise-only asset does not cover a mid-market job.
3. Classify the problem before you score it.
   Missing, stale, duplicated, hard to find, underused, or wrong format. Low usage is a clue, not a diagnosis.
4. Separate exists from used.
   Test fit, access, discoverability, and use separately. A findable asset may still fail in a live conversation. Check a representative use case before recommending a rewrite; where demand is unverified, investigate before commissioning new content.
5. Rate value with visible dimensions.
   Impact, frequency, strategic alignment. Evidence confidence and effort stay separate. Do not invent weights or divide by effort.
6. Assign a decision tier.
   Mandatory, commit now, validate first, plan, or monitor. High potential with weak evidence is validate first, not build.
7. Choose the action.
   Create, update, consolidate, retire, improve discoverability, or reinforce distribution. Retire only with a successor or an authorized owner, never from low usage alone.
8. Sequence within the tier.
   Deadline, dependency, effort, owner capacity. Route asset production to `one-pager-and-slide-outline`, `battlecard-builder`, or `talk-track-builder`.

Do not retire, relabel, or republish anything without explicit approval of the exact targets.

## What to return

Return a backlog for the agreed planning horizon, or only the requested audit slice. For a full review, include:

- Coverage map by role, stage, and job
- Exists vs used on every priority item
- Prioritized gaps with impact, frequency, alignment, confidence, decision tier, and rationale
- Action type per gap: create, update, consolidate, retire, improve discoverability, or reinforce distribution
- Owners, windows, and the validation or outcome signal
- Assumptions and missing usage or financial evidence

Do not design the operating model. That is `content-governance-system`.

## Quality bar

- Exists and used are not treated as the same fact.
- Prioritization reflects impact and frequency, not who asked loudest.
- Value, confidence, and effort remain visible; no unexplained composite score.
- Low usage never retires an asset by itself.
- Each recommendation has a realistic owner and a next validation.
- No invented usage, win rates, or ROI.
