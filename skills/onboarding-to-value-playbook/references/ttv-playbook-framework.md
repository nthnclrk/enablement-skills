# Time-to-value judgment

Use this when you are defining first value, milestones, or early-risk triggers. Seller ramp belongs in `onboarding-program-builder`.

## First value is not activation

Activation is the setup that makes usage possible. First value is the first customer result that matters commercially.

**Fails.** Time-to-value equals days to kickoff plus admin login.

**Passes.** Time-to-value equals days from data-ready to the ops owner closing their first exception in the new queue, confirmed in the week-2 review.

Define every value event with actor, observable result, evidence source, baseline when available, acceptance criteria, who confirms, and the measurement window.

If evidence, baseline, timing, or acceptance is unavailable, keep the field `TBD` and add a confirmation action.

## The clock

- `time_to_first_value`: elapsed time from the agreed start event to the first measurable outcome, excluding only documented pauses
- `value_horizon`: customer-agreed or explicitly proposed window
- Start event and source: contract activation, provisioning, data-ready, kickoff, or another agreed operational event
- End event and acceptance owner
- Pauses or exclusions and who may approve them
- Observation window and metric owner

Do not default the start to kickoff when another contractual or operational event governs the work. Do not treat login or provisioning as value unless that is the agreed outcome.

## Milestones

Work backward from the value event. For each milestone: objective, owner, required inputs, completion criteria, due window, risk trigger if delayed, and relationship to the value event.

Design only the enabling activation, adoption, and outcome steps this segment needs. Self-serve, assisted, and enterprise should not share one depth of support.

## Early risk

Common tells, used qualitatively unless a sourced threshold exists:

- delayed kickoff or no executive sponsor
- missing data access or integration owner
- activation below the agreed expectation inside the horizon
- implementation blockers older than the agreed SLA
- no agreed success-metric baseline

Intervention: classify severity, assign owner and due date, define customer and executive path, re-baseline only with explicit approval.

Do not invent numeric TTV targets, usage cutoffs, or SLAs. Leave them `TBD`.

## Two views

Customer-visible: milestone commitments, owners, due windows, success checks.

Internal: risk thresholds, escalation, operational caveats.

Keep both synchronized on dates and milestone definitions.

## Metrics minimum

- agreed-start to activation
- activation to first value
- milestone completion by segment
- churn or downgrade signals during the onboarding horizon

Use a number only when it comes from customer agreement, operational SLA, historical segment performance, or a measured baseline.

## Later handoffs

Renewal-readiness from the contract horizon and the lead time needed to show value before the renewal decision. Expansion-readiness from adoption and outcome depth, not from first login. Assign the CS-to-AM owner when that motion exists.

## Optional shape

```text
Segment / motion
First-value event (actor, evidence, who confirms)
Clock (start, end, pauses, owner)
Milestones (owner, acceptance, due window)
Customer view / internal view
Early-risk triggers
```
