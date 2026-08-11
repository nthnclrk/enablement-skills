---
name: deal-inspection-coach
description: Inspect one live opportunity and produce an evidence-backed manager view of stage validity, deal risk, missing proof, and next actions. Use for a specific deal review, stalled-deal diagnosis, or manager inspection. Use forecast-risk-brief for portfolio forecasting, call-review-coach for seller behavior on one call, and mutual-action-plan-builder for a buyer-shared execution plan.
---

# Deal Inspection Coach

Turn one opportunity into a defensible diagnosis and a focused manager coaching plan.

## Confirm Inputs First

- Use current context supplied by the user. If `.enablement/context.md` is available, read only the relevant ICP, stage, qualification, and commercial sections. Treat stale, inferred, or conflicted context as provisional and never update it silently.
- Confirm the inspection objective, as-of date, account and opportunity, current stage, target close period, amount or range, and seller's stated next step.
- Confirm available evidence: CRM record and history, buyer communications, call records, mutual action plan, proposal, security or procurement status, and product validation.
- Confirm the organization's stage criteria and qualification method when they exist. Do not impose an external method in place of the team's operating model.
- Confirm the manager's available interventions and whether the output is internal-only.
- Ask only for missing inputs that would materially change the recommendation.

Use assumptions only to draft reversible coaching options. Do not assume facts, metrics, quotes, stakeholder roles, commitments, dates, approvals, requirements, stage evidence, or customer and product claims. Leave them unknown until verified.

## Read The Right Reference

- Read [references/deal-inspection-framework.md](references/deal-inspection-framework.md) before rating evidence, risk, or stage validity.
- Read [references/source-system-guide.md](references/source-system-guide.md) when evidence comes from CRM, conversation intelligence, or email summaries.

## Default Workflow

1. **Set the inspection decision.** State whether the manager needs to validate stage, recover momentum, test forecast confidence, or choose an intervention. Keep the analysis to one opportunity.
2. **Build the evidence ledger.** For each material claim, record the source, source date, whether it is buyer-confirmed or internally asserted, and whether it is current, stale, missing, or conflicted.
3. **Test stage validity.** Compare evidence with the organization's required exit criteria. If those criteria are unavailable, assess the underlying buying decisions but do not invent a stage gate.
4. **Inspect the buying path.** Check problem priority, value, stakeholders, decision criteria and process, alternatives, commercial path, implementation confidence, and timing. Distinguish an unanswered question from negative evidence.
5. **Diagnose risk.** Separate verified risks from evidence gaps. Assess consequence, urgency, controllability, and confidence without turning the result into a false-precision score.
6. **Choose the next move.** Prioritize the few actions that resolve a consequential uncertainty or create buyer progress. Separate buyer commitments from internal seller tasks; label proposed dates as proposals, not commitments.
7. **Prepare manager coaching.** Give the manager the question to ask, the evidence to inspect, the decision to make, and the condition for escalation or reassessment.
8. **Protect the record.** Do not change stage, close date, probability, qualification fields, or customer-facing material without explicit approval.

## Tool Notes

- Use CRM as the base record, then triangulate material claims with buyer communications, calls, and execution artifacts.
- Prefer direct, recent buyer evidence over seller summaries. Show conflicts rather than selecting the most favorable source.
- Treat automatic scores and summaries as pointers for inspection, not proof.

## Output Contract

- `Inspection Decision`: objective, as-of date, current stage, stage-validity finding, and overall evidence confidence.
- `Evidence Ledger`: material claim, status, source, source date, conflict, and proof still needed.
- `Buying-Path Review`: confirmed progress and unresolved decisions across the relevant qualification blocks.
- `Risk Register`: risk or evidence gap, consequence, urgency, controllability, confidence, and trigger for reassessment.
- `Priority Actions`: owner, action, intended buyer progress, timing status, and verification checkpoint.
- `Manager Coaching Plan`: inspection questions, coaching focus, escalation conditions, and next review trigger.

## Quality Bar

- Base stage and risk findings on evidence available as of a stated date.
- Report stage support separately from evidence confidence; strong evidence can show that a stage is unsupported.
- Separate buyer-confirmed facts, seller assertions, analyst inference, and missing evidence.
- Do not mistake activity volume, an internal task, or a future meeting for buyer progress.
- Keep verified risk distinct from missing proof; both matter, but they require different actions.
- Prioritize a small set of actions the team can execute and verify.
- Make stage, forecast, or CRM changes recommendations only unless explicit approval is given.
