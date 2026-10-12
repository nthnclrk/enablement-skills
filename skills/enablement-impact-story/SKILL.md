---
name: enablement-impact-story
description: Create leadership-ready enablement impact narratives and, only when the evidence supports it, financial ROI analysis with explicit assumptions and risks. Use when the user asks for an enablement impact story, executive summary, board-ready narrative, initiative outcome update, or defensible ROI calculation tied to performance and strategic priorities. Route metric design and instrumentation setup to enablement-metrics-and-instrumentation.
---

# Enablement impact story

Explain what an enablement initiative achieved, how confidently the evidence supports that conclusion, and what leadership should decide next.

For an edit, preserve accurate wording that already serves the decision. Add a calculation, caveat, or section only if it changes what the reader can conclude or do.

**Fails.** "The onboarding program delivered 4.2x ROI and caused the 9-point win-rate lift."

**Passes.** "Day-90 ramp rose 11 points for the Q1 cohort versus the prior two cohorts. Observed result only. We cannot claim causality or ROI: there is no comparison design, and incremental cost is incomplete."

If the user needs the KPI tree or instrumentation, use `enablement-metrics-and-instrumentation` first.

## Inputs

Ask only for the inputs that change the claim:

1. Initiatives in scope and the decision this memo must support
2. Baseline and current values, with population, definition, and period
3. Known confounders and any comparison or counterfactual
4. For financial ROI only: incremental cost, monetized benefit, time horizon, and the attributable share someone will defend

If financial inputs are incomplete, write an observed-results or contribution story. Do not label it ROI. Do not invent win rates, usage, or ROI.

## Supporting material

Read [references/impact-story-template.md](references/impact-story-template.md) for claim-mode rules, the ROI method, and worked excerpts. Skip the ROI section unless the user asked for a financial claim and the required inputs are present.

## Procedure

1. Set the evidence boundary.
   What is measured, for whom, over which comparable periods. Done when every change claim uses one definition, one population, and one pair of windows.
2. Choose the claim mode.
   Use observed result, contribution, or causal effect according to the design and evidence. Treat financial ROI as an additional calculation, not a higher level of causal confidence. A pre/post change alone is an observed result; a contribution claim needs evidence linking the initiative to the result.
3. Separate movement from meaning.
   Show the change in terms the reader can use. Calculate absolute and relative change where useful, but include both only when the distinction matters. Put the relevant caveat beside the claim.
4. Build the chain only as far as the evidence goes.
   Enablement action → behavior change → business outcome. Missing a link means the claim stops at the last supported step.
5. State the limits that matter to the decision.
   Identify unsupported causality, ROI, segment generalisation, or monetised benefit when the draft makes or implies that claim. A short update can include the relevant limit in a sentence. Do not add a financial caveat to a non-financial update unless it affects the requested decision.
6. Calculate ROI only when the inputs are complete.
   Attributable benefit, total incremental cost, net benefit, range. Gross revenue or pipeline influenced is not economic benefit. Zero or missing cost blocks the calculation.
7. Convert the story into a decision.
   Make the requested recommendation clear and bounded. Use continue, adjust, or stop when helpful; do not add an options exercise to an already sound recommendation.

Return a reviewable draft. Do not publish, send, or write it into an external system without explicit approval of the exact artifact and destination.

## What to return

Match the requested format: a brief update, a full memo, or a financial analysis. For a full memo, include:

- The decision this story is for
- Claim mode, and why the evidence supports that mode only
- Movement table: definition, population, baseline, current, absolute and relative change, source, as-of date
- What we cannot claim yet
- Assumptions, confounders, and confidence beside each material claim
- Financial calculations only when ROI requirements are met; otherwise the specific missing inputs
- Decisions to make now, with options and owners
- The next evidence collection step, only if it could change the decision

Do not invent a measurement system. That is `enablement-metrics-and-instrumentation`.

## Quality bar

- What we cannot claim yet is specific, not a generic caveat.
- Every change claim uses consistent definitions, populations, and periods.
- Financial ROI appears only when incremental cost and monetized attributable benefit are both supportable.
- Observation and recommendation are not the same sentence.
- A sponsor can choose continue, adjust, or stop without asking what the numbers mean.
