---
name: onboarding-to-value-playbook
description: Build customer onboarding-to-value playbooks that get customers to observable first value and reduce early churn risk. Use when asked to map implementation milestones, handoffs, adoption signals, value events, or early customer outcomes. For internal seller onboarding, use onboarding-program-builder.
---

# Onboarding To Value Playbook

Build a practical post-sale journey that gets customers to first measurable value fast and predictably.

## Confirm Inputs First

Confirm these minimum inputs:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Customer segment and motion type (self-serve, assisted, enterprise)
- Desired first value outcome, the observable event that would demonstrate it, and the customer-agreed value horizon
- Measurement clock: start event, end event, pauses or exclusions, observation window, and accountable owner
- Available baseline, evidence source, and any existing threshold provenance
- Implementation constraints (integrations, data readiness, stakeholder availability)
- Team handoffs (sales to CS to support or services)
- Renewal or expansion horizon and commercially critical checkpoints
- Known early-risk signals or churn reasons

If inputs are incomplete, ask for the minimum gaps. Use labeled assumptions only for reversible journey sequencing; leave unsupported baselines, thresholds, SLAs, value horizons, commitments, and customer facts as `TBD` or unknown.

## Read The Right Reference

- Read [references/ttv-playbook-framework.md](references/ttv-playbook-framework.md) before setting milestones and risk triggers.

## Default Workflow

1. Define the first value outcome.
Specify the first customer result that matters commercially. Define its value event as an observable behavior or result with actor, evidence source, acceptance criteria, and customer confirmation. Confirm the operational start event, pauses or exclusions, and measurement owner. Do not treat setup completion or login activity as value unless it is the agreed outcome.

2. Set the value horizon.
Use the customer-agreed outcome timing, implementation dependencies, commercial commitments, and realistic operating capacity. If no horizon is agreed, propose one for confirmation and label it `proposed`.

3. Segment the journey.
Adjust milestone depth and support intensity by customer type and complexity.

4. Build the milestone plan.
Work backward from the value event and horizon. Design only the enabling activation, adoption, and outcome milestones needed, each with owner, expected output, due window, and acceptance criteria.

5. Define handoffs and responsibilities.
Clarify who owns each transition and what data or context must transfer.

6. Add risk controls.
Attach early warning signals, interventions, and escalation paths. Use customer agreements, operational SLAs, historical segment data, or measured baselines for thresholds; otherwise use a qualitative trigger and mark the numeric threshold `TBD`.

7. Add adoption signals.
Define the leading indicators that show the customer is moving toward value.

8. Create customer-visible and internal views.
Produce a customer-facing plan plus an internal operating cadence with added risk controls.

9. Operationalize the cadence.
Set check-ins and review loops around the value horizon, milestone dependencies, and risk level rather than a blanket calendar schedule.

## Tool Notes

- Tool-agnostic default: playbook can run in plain docs and meeting cadence.
- Optional tools: CS platforms, product analytics, and CRM can automate health signals and milestone tracking.
- Do not assume a specific vendor; always provide a non-tool-specific fallback.

## Output Contract

Default output includes:

- Onboarding-to-value journey map with milestones and owners
- Customer-visible onboarding plan
- Internal operating cadence and control plan
- Milestone acceptance criteria and artifact checklist
- Risk trigger list with response plays
- Renewal or expansion handoff hooks and checkpoint criteria
- KPI and leading indicator definitions with evidence sources and sourced or agreed thresholds; unsupported thresholds remain `TBD`
- Time-to-value clock definition with start event, end event, pauses, exclusions, window, and owner
- Operating cadence aligned to the value horizon, complexity, and handoff points

## Quality Bar

- Milestones are outcome-based, not just task completion.
- Handoffs are explicit and operationally realistic.
- Risk triggers are early enough to intervene before churn.
- Customer-visible and internal views are clearly separated and consistent.
- Metrics are measurable with available systems.
- Plan is segment-aware and executable by current team capacity.
- Each claimed value event is observable, source-linked, and distinct from enabling activity.
- No numeric target, timing commitment, or risk threshold is invented.
