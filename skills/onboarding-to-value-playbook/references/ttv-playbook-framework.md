# Time-To-Value Playbook Framework

Use this framework to design post-sale onboarding around outcomes.

## Core Definitions

- `time_to_first_value`: elapsed time from the agreed operational start event to the first measurable customer outcome, excluding only documented pauses
- `activation_milestone`: required setup step that enables usage
- `value_horizon`: customer-agreed or explicitly proposed window in which the outcome must become observable
- `value_event`: an observed behavior or result that demonstrates the agreed outcome

Define every value event with:

- actor or customer group
- observable behavior or result
- evidence source and baseline when available
- acceptance criteria and who confirms them
- observed date or measurement window

Define the measurement clock separately:

- start event and evidence source, such as contract activation, provisioning complete, data ready, kickoff, or another agreed operational event
- end event and acceptance owner
- pauses or exclusions and who may approve them
- observation window and accountable metric owner

Do not default the clock to kickoff when another contractual or operational event governs the work.

Do not relabel activation as value. If evidence, baseline, timing, or acceptance criteria are unavailable, keep the field `TBD` and add a measurement or confirmation action.

## Milestone Design Template

For each milestone, specify:

- objective
- owner
- required inputs
- completion criteria
- due window
- risk trigger if delayed
- relationship to the value event and horizon

## Common Early Risk Signals

- delayed kickoff or no executive sponsor attendance
- missing data access or integration owner
- activation below the sourced or agreed expectation within the applicable value horizon
- unresolved implementation blockers older than agreed SLA
- no agreed success metric baseline

## Intervention Pattern

- classify risk severity
- assign owner and due date for mitigation
- define customer communication and executive path
- re-baseline timeline only with explicit stakeholder approval

## Dual-View Operating Pattern

- Customer-visible view: milestone commitments, owners, due windows, success checks.
- Internal view: risk thresholds, escalation logic, and operational caveats.
- Keep both views synchronized on dates and milestone definitions.

## Metrics Minimum

- agreed-start-event-to-activation time
- activation-to-first-value time
- milestone completion rate by segment
- churn or downgrade signals during the applicable onboarding horizon

Use numeric targets only when they come from customer agreement, operational SLA, historical segment performance, or a measured baseline. Otherwise describe the observable condition and leave the threshold `TBD`.

## Renewal And Expansion Handoff Hooks

- Define the renewal-readiness checkpoint from the contract horizon and the lead time needed to demonstrate value before the renewal decision.
- Define expansion-readiness signal checks tied to adoption/outcome depth.
- Assign handoff owner for CS-to-AM/Sales transition where applicable.
