# Enablement Router Reference Map

Use this map for high-frequency routing decisions and near-miss boundaries.

## Context-First Rule

Insert `revenue-enablement-context` first when:
- the request depends on ICP, personas, stage definitions, or packaging assumptions
- multiple downstream skills would otherwise invent conflicting assumptions
- stakeholders need one canonical baseline before execution

Skip this step when:
- the user already provided a current, reliable context artifact
- the request is a narrow one-off that does not depend on foundational context

## Common Multi-Skill Sequences

### Quarterly operating plan build
1. `revenue-enablement-context` (if missing/stale)
2. `quarterly-enablement-planner`
3. `enablement-metrics-and-instrumentation`
4. `enablement-impact-story` (for leadership communication)

### Launch readiness + field messaging
1. `revenue-enablement-context` (if missing/stale)
2. `product-launch-enablement`
3. `talk-track-builder`
4. `release-notes-to-seller-updates`

### Messaging refresh from field signals
1. `field-feedback-synthesizer`
2. `call-insights-to-objections`
3. `value-prop-and-positioning`
4. `talk-track-builder`

### Forecast and deal inspection loop
1. `forecast-risk-brief`
2. `deal-inspection-coach`
3. `manager-coaching-cadence`

## Near-Miss Routing Pairs

- `enablement-program-design` vs `quarterly-enablement-planner`
Use `enablement-program-design` for initiative chartering.
Use `quarterly-enablement-planner` for quarter sequencing and calendar trade-offs.

- `call-review-coach` vs `call-insights-to-objections`
Use `call-review-coach` for one-call rep coaching.
Use `call-insights-to-objections` for cross-call pattern mining.

- `account-brief-builder` vs `executive-briefing-builder`
Use `account-brief-builder` for account strategy prep.
Use `executive-briefing-builder` for high-stakes executive meeting orchestration.

- `product-launch-enablement` vs `release-notes-to-seller-updates`
Use `product-launch-enablement` for full readiness plans.
Use `release-notes-to-seller-updates` for concise field updates from release notes.

- `content-gap-analysis` vs `content-governance-system`
Use `content-gap-analysis` to prioritize missing content.
Use `content-governance-system` to define lifecycle, ownership, and controls.

## Minimal Output Shape For Router

For each step in the route, return:
- selected skill
- why this skill is needed
- required input for this step
- expected output from this step
- explicit boundary (what this step should not do)
