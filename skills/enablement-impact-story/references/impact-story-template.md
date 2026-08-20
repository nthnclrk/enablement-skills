# Impact story judgment

Use this when you are choosing a claim or checking a memo. The skill body has the procedure.

## Claim mode

Use one label per claim. Default to the least assertive mode that still helps the decision.

| Mode | What you may say | What you may not say |
| --- | --- | --- |
| Observed result | The metric changed for this population and window | Enablement caused it |
| Contribution | Timing, adoption, and behavior make enablement a plausible contributor | Isolated effect or ROI |
| Causal effect | A credible experiment or quasi-experiment estimates the initiative effect | A pre/post line "basically proves it" |
| Financial ROI | Monetized attributable benefit versus complete incremental cost | Pipeline influenced, unmonetized movement, or a missing-cost ratio |

**Fails.** "Enablement drove a 9-point win-rate lift and 4.2x ROI."

**Passes.** "Launch-eligible win rate moved from 22% to 31% for the exposed mid-market cohort. Observed result. We cannot claim causality: no comparison group, and pricing changed in the same window. We cannot claim ROI: incremental cost is incomplete."

A pre/post change alone supports an observed result, not causality.

## What we cannot claim yet

Write this as its own section. Name the blocked claim, the missing evidence, and the cheapest next proof.

Typical blocks:

- Causality, when there is no comparison or the confounders are material
- ROI, when cost, attributable share, or economic value per unit is missing
- Segment generalization, when one team or one quarter carries the number
- Monetized benefit, when only pipeline or gross revenue is available

Do not bury these in an appendix.

## Movement table

For each material metric record definition, population, denominator, source, as-of date, baseline and comparison periods, baseline value, current value, absolute change, and relative change.

Do not calculate relative change when the baseline is zero. Do not compare values with different definitions or populations. Do not invent the missing cell.

## Contribution chain

Enablement action → behavior change observed → business outcome movement.

Strengthen a contribution claim with independent signals: exposure, adoption, the intended behavior, timing, segment consistency, and a comparison when you have one. Missing a link means the claim stops.

## Financial ROI method

Use financial language only when the required inputs are verified:

- an outcome delta with a consistent population and time horizon
- a defensible attributable share or sensitivity range
- a verified economic value per unit (contribution margin, cash benefit, or cost avoided)
- complete incremental costs for the same period

```text
Attributable Benefit = Outcome Delta × Attributable Share × Value Per Unit
Total Incremental Cost = Build + Delivery + Tools + Participant Time + Other
Net Benefit = Attributable Benefit − Total Incremental Cost
ROI % = (Net Benefit / Total Incremental Cost) × 100
```

Gross revenue is not economic benefit. If only revenue is available, label it a `revenue-to-cost scenario` and do not call it ROI. Pipeline influenced is not realized benefit. Do not add leading and lagging indicators together or count the same benefit twice.

If total cost is zero, material cost is missing, or monthly attributable economic benefit is not positive, do not calculate ROI. An unsupported attribution guess blocks ROI.

Only when the user explicitly asks for a planning model may you build one. Label it `Hypothetical planning scenario — not an impact result`.

## Confidence

- `High`: definitions and sources reconcile, and the comparison supports the claim mode
- `Medium`: one material limitation remains
- `Low`: directional result, weak source, or major unresolved confounders

Place the caveat beside the claim.

## Optional shape

```text
Decision this memo is for
Claim mode
Movement (definition, population, windows, values)
What we cannot claim yet
Continue / adjust / stop
```
