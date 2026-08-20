# KPI tree examples

Use these as patterns, not universal definitions. Replace thresholds, populations, and source names with the user's operating reality.

## Onboarding

**Fails.** "Ramp is a mess, so track module completion and hope day-90 attainment moves."

**Passes.** One commercial question: are new AEs reaching role-specific attainment by day 90?

- Commercial / productivity: `Day-90 ramp attainment = eligible hires at or above the role threshold / eligible hires reaching day 90`. Grain: one row per hire. Join HRIS start date to CRM rep ID with an approved identity map.
- Execution: median discovery-rubric score by hire and complete review period; preserve rubric version. Manager coaching coverage: eligible hires with a verified observation / eligible hires.
- Adoption: `first-attempt certification pass rate = first-attempt passes / eligible first attempts`. Do not mix attempts and people.

Event worth instrumenting: `certification_attempt_completed` with attempt ID, rep ID, certification version, assessor, completion time, score, outcome.

Gotchas: segment by role and experience before comparing. Completion is not readiness. Later territory or manager changes must not rewrite the cohort — use effective-date joins.

## Product launch

**Fails.** "Launch win rate = opportunities that closed-won after someone opened the launch deck."

**Passes.** Define launch eligibility before comparing outcomes. Do not infer exposure from a win or a loss.

- Commercial: `Launch-eligible win rate = closed-won eligible opportunities / closed eligible opportunities`. Grain: one row per opportunity, with point-in-time segment, owner, stage, and eligibility.
- Execution: message adoption on eligible reviewed calls / eligible reviewed calls, rubric and model version retained. Manager inspection coverage: eligible launch sellers with one verified inspection / eligible launch sellers.
- Adoption: durable completion or attendance with a stable seller ID. Digest opens are not comprehension.

Gotchas: separate launch movement from seasonality and pricing changes. Reconcile launch-eligible totals to the CRM source report before calculating movement. Small samples stay labeled.

## Thin evidence

If launch eligibility is undefined, do not compute a launch win rate. Write the eligibility rule as the missing instrumentation, then stop.

If the user asks for ROI from this tree, refuse and send them to `enablement-impact-story` only after results exist. This file designs measurement. It does not write the narrative.

## Optional decision line

For each metric you keep:

```text
Metric / tier / formula
Continue / adjust / stop
QA check that blocks the claim
```
