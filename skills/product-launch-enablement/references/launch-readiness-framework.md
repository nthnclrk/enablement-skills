# Launch Readiness Framework

Use this framework to turn launch tiering into evidence-backed gates, role readiness, and a proportionate post-launch review.

## Launch Control Record

Record the decision inputs before planning assets or training:

| Field | Required detail |
| --- | --- |
| Change | Product, packaging, process, eligibility, or commercial change |
| Audience | Roles, segments, regions, partners, and customer states affected |
| Availability | Status, effective date, rollout scope, and source as-of date |
| Behavior change | What each role must start, stop, or do differently |
| Risk | Customer, commercial, legal, operational, and reversibility risks |
| Owners | Claim owner, gate decision owner, delivery owner, and escalation owner |

Unknown availability, eligibility, claims, or approval states block distribution-ready guidance. They do not block an internal workplan that keeps those gaps visible.

## Tier-Calibrated Depth

Use the tier anchors in `SKILL.md`, then scale the response:

| Tier | Minimum response |
| --- | --- |
| 1 | Targeted seller update, source-linked FAQ change, owner, and normal-cadence inspection |
| 2 | Role variants, practice or manager reinforcement, cross-functional gates, and an early decision review |
| 3 | Formal go/no-go ledger, scenario practice, manager calibration, operational readiness, exception path, and frequent early monitoring |

Breadth affects cohorting, localization, facilitator demand, manager load, and reinforcement effort. It does not by itself determine control depth. A broad awareness-only update can remain Tier 1 while still requiring a capacity-aware distribution plan; a narrow pricing, regulatory, contractual, or irreversible change can require Tier 3 controls.

Do not lower a tier because delivery capacity is constrained. Reduce scope, change timing with the decision owner, or surface the launch risk.

## Capacity Decision

Before marking delivery feasible, compare:

- audience and cohort demand by role or region
- delivery, practice, manager-inspection, and reinforcement effort
- constrained-owner throughput and fixed dependencies
- support, implementation, and change-management load

Return one decision: `fits`, `reduce`, `sequence`, or `blocked`, with the binding constraint and decision owner. Capacity does not change the launch tier; it changes scope, sequence, timing, or the go/no-go decision.

## Gate Ledger

Use one row per decision gate:

| Gate | Acceptance test | Evidence and as-of date | Claim owner | Decision owner | Status | Blocker or waiver |
| --- | --- | --- | --- | --- | --- | --- |

Allowed statuses:

- `not_assessed`: evidence has not been reviewed
- `blocked`: the acceptance test is unmet or evidence is missing
- `ready`: current evidence meets the stated test
- `waived`: the authorized decision owner accepted the residual risk, with rationale and expiry or review trigger

At minimum, assess product truth, audience and eligibility, approved claims, seller behavior, manager inspection, RevOps/process change, support/escalation, and customer-transition readiness when relevant.

Set each acceptance test from the actual operational use. An approved FAQ or source asset does not make a gate ready when the required intake channel, system configuration, handoff, access, or response owner remains unresolved.

Training attendance alone is not field readiness. Define observable evidence such as an accurate explanation, correct qualification, safe claim use, successful workflow execution, or an inspected live example.

When scenario practice is part of the required package, include a runnable participant prompt, facilitator-only facts, observable success anchors, critical errors, and retry guidance. Referencing a future scenario is not completion evidence.

## Post-Launch Decision Loop

Set the first decision window from tier, reversibility, sales or customer cycle, expected signal volume, and operating cadence. High-risk or hard-to-reverse changes need earlier and more frequent review; low-volume launches may need a longer evidence window.

Use a confirmed operating cadence where one exists. If the monitoring frequency is designed as part of the plan, label it `proposed`, name who must confirm it, and state what evidence volume would cause the cadence to change.

Use sourced history, an agreed operating rule, or a named decision owner's approval for numeric signal and sample thresholds. Otherwise define the qualitative decision condition and leave the number unresolved.

Track only signals that can change a decision:

- inaccurate or unapproved claims
- eligibility or workflow errors
- recurring field questions and message drift
- manager inspection results
- support, implementation, or customer friction
- adoption by eligible role or account, with denominator and source coverage

For each material signal, record evidence, affected slice, severity, owner, response, and the decision to continue, adjust, pause, or escalate. Do not publish updates or change live launch status without explicit approval.
