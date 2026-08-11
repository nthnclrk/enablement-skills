# KPI Tree Examples

Use these as patterns, not universal definitions. Replace thresholds, populations, and source names with the user's operating reality.

## Example A: Onboarding Program

### Outcome layer

- `Day-90 ramp attainment = eligible hires at or above the role-specific attainment threshold / eligible hires reaching day 90`
- Grain: one row per hire cohort member; join HRIS start date to CRM rep ID using an approved identity map.
- Filters: role, segment, full day-90 observation window, and documented leave/exclusion rules.

### Behavior layer

- `Discovery quality trend`: median rubric score by hire and complete review period; preserve rubric version.
- `Manager coaching coverage`: eligible hires with a verified coaching observation in the period / eligible hires in the period.

### Activity layer

- `Certification pass rate = first-attempt passes / eligible first attempts`; do not mix attempts and people.
- Event contract example: `certification_attempt_completed` with attempt ID, rep ID, certification version, assessor ID, completion time, score, and outcome.

### Interpretation caveats

- Segment new hires by role and experience level before comparing performance.
- Do not interpret completion rate alone as readiness quality.
- Use effective-date joins so later territory or manager changes do not rewrite the onboarding cohort.

## Example B: Product Launch Enablement

### Outcome layer

- `Launch-eligible win rate = closed-won eligible opportunities / closed eligible opportunities`.
- Define launch eligibility before comparing outcomes; do not infer exposure from a win or loss.
- Grain: one row per opportunity, with point-in-time segment, owner, stage, and launch-eligibility fields.

### Behavior layer

- `Message adoption`: eligible reviewed calls containing the approved behavior / eligible reviewed calls, with rubric and model version retained.
- `Manager inspection coverage`: eligible launch sellers with at least one verified inspection / eligible launch sellers.

### Activity layer

- Track exposure with a durable completion or attendance event and stable seller ID.
- Keep digest opens separate from learning completion; an open is not evidence of comprehension.

### Interpretation caveats

- Separate launch impact from seasonality and pricing changes.
- Use confidence labels when sample size is still small.
- Reconcile launch-eligible opportunity totals to the CRM source report before calculating movement.

## Minimal Decision Mapping

For each metric in your output, add:
- `continue` threshold
- `adjust` threshold
- `stop` or `deprioritize` threshold
- QA threshold that blocks or qualifies interpretation

This keeps the metrics tied to operating decisions rather than passive reporting.
