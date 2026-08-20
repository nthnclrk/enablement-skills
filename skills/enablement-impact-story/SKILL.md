---
name: enablement-impact-story
description: Create leadership-ready enablement impact narratives and, only when the evidence supports it, financial ROI analysis with explicit assumptions and risks. Use when the user asks for an enablement impact story, executive summary, board-ready narrative, initiative outcome update, or defensible ROI calculation tied to performance and strategic priorities. Route metric design and instrumentation setup to enablement-metrics-and-instrumentation.
---

# Enablement impact story

Write the strongest story the evidence can carry, then name what you cannot claim yet. If leadership would have to walk the claim back next month, it is not done.

**Fails.** "The onboarding program delivered 4.2x ROI and caused the 9-point win-rate lift."

**Passes.** "Day-90 ramp rose 11 points for the Q1 cohort versus the prior two cohorts. Observed result only. We cannot claim causality or ROI: there is no comparison design, and incremental cost is incomplete."

If the user needs the KPI tree or instrumentation, use `enablement-metrics-and-instrumentation` first.

## Confirm Inputs First

Ask only for the inputs that change the claim:

1. Initiatives in scope and the decision this memo must support
2. Baseline and current values, with population, definition, and period
3. Known confounders and any comparison or counterfactual
4. For financial ROI only: incremental cost, monetized benefit, time horizon, and the attributable share someone will defend

If financial inputs are incomplete, write an observed-results or contribution story. Do not label it ROI. Do not invent win rates, usage, or ROI.

## Read The Right Reference

Read [references/impact-story-template.md](references/impact-story-template.md) for claim-mode rules, the ROI method, and worked excerpts. Skip the ROI section unless the user asked for a financial claim and the required inputs are present.

## Default Workflow

1. Set the evidence boundary.
   What is measured, for whom, over which comparable periods. Done when every change claim uses one definition, one population, and one pair of windows.
2. Choose the claim mode.
   Observed result, contribution, causal effect, or financial ROI. Pick the least assertive mode that still helps the decision. A pre/post change is an observed result. Do not upgrade it because the narrative would sound better.
3. Separate movement from meaning.
   Show absolute and relative change. Then say what the numbers do and do not support. Put the caveat beside the claim, not in an appendix.
4. Build the chain only as far as the evidence goes.
   Enablement action → behavior change → business outcome. Missing a link means the claim stops at the last supported step.
5. Name what you cannot claim yet.
   Causality, ROI, segment generalization, or a monetized benefit. This section is required. It is the point of the skill.
6. Calculate ROI only when the inputs are complete.
   Attributable benefit, total incremental cost, net benefit, range. Gross revenue or pipeline influenced is not economic benefit. Zero or missing cost blocks the calculation.
7. Convert the story into a decision.
   Continue, adjust, or stop, with options and trade-offs a sponsor can take.

Return a reviewable draft. Do not publish, send, or write it into an external system without explicit approval of the exact artifact and destination.

## Output Contract

Return a memo a sponsor can use in the meeting:

- The decision this story is for
- Claim mode, and why the evidence supports that mode only
- Movement table: definition, population, baseline, current, absolute and relative change, source, as-of date
- What we cannot claim yet
- Assumptions, confounders, and confidence beside each material claim
- Financial math only when ROI requirements are met; otherwise an explicit refusal
- Decisions to make now, with options and owners
- Assumptions you had to make

Do not invent a measurement system. That is `enablement-metrics-and-instrumentation`.

## Quality Bar

- What we cannot claim yet is specific, not a generic caveat.
- Every change claim uses consistent definitions, populations, and periods.
- Financial ROI appears only when incremental cost and monetized attributable benefit are both supportable.
- Observation and recommendation are not the same sentence.
- A sponsor can choose continue, adjust, or stop without asking what the numbers mean.
