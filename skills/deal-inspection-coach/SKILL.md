---
name: deal-inspection-coach
description: Inspect one live opportunity and produce an evidence-backed manager view of stage validity, deal risk, missing proof, and next actions. Use for a specific deal review, stalled-deal diagnosis, or manager inspection. Use forecast-risk-brief for portfolio forecasting, call-review-coach for seller behavior on one call, and mutual-action-plan-builder for a buyer-shared execution plan.
---

# Deal inspection coach

Inspect one deal for buyer proof. Seller activity is not progress.

A good inspection tells a manager what the buyer has confirmed, what is still unknown, and the one move that changes the deal. If the user wants a portfolio forecast, use `forecast-risk-brief`. If they want a buyer-shared plan, use `mutual-action-plan-builder`.

**Buyer proof.** "Economic buyer confirmed this is funded this quarter. Security is in their queue with a named owner. Next step is their commercial review on 3 Sep."

**Seller activity.** "Twelve emails last week. Demo completed. Next step is follow up. Stage is Proposal because the deck went out."

If a manager cannot tell buyer-confirmed from internally asserted, it is not done.

## Confirm Inputs First

Ask only for the inputs that change the diagnosis:

1. The one opportunity, as-of date, claimed stage, and inspection objective
2. The evidence packet: CRM, buyer comms, calls, MAP, proposal, procurement
3. The team's stage criteria and qualification method, if they have one
4. Whether the output is internal-only

If a fact is missing, leave it unknown. Do not invent CRM fields, amounts, dates, stakeholders, or commitments.

## Read The Right Reference

Read [references/deal-inspection-framework.md](references/deal-inspection-framework.md) before rating evidence, stage validity, or risk. Read [references/source-system-guide.md](references/source-system-guide.md) when evidence comes from CRM, conversation intelligence, or email summaries.

## Default Workflow

1. Name the job.
   One opportunity. One decision: validate stage, recover momentum, test forecast confidence, or choose an intervention. Done when you can say which, and why the others wait.
2. Build the evidence ledger.
   For each material claim: source, source date, buyer-confirmed or internally asserted, and current / stale / missing / conflicted. Done when every claim you will use has a status.
3. Test stage validity.
   Match evidence to the team's exit criteria. If they have none, report buying-path readiness. Do not invent a stage gate. Done when each criterion is met, not met, conflicted, stale, or unknown.
4. Walk the buying path.
   Problem priority, value, stakeholders, criteria, process, alternatives, execution, timing. An unanswered question is not negative evidence. Done when you can name the open buyer decision that matters most.
5. Separate risk from gap.
   A risk is a supported condition that can kill or slip the deal. A gap is a consequential unknown. They need different actions. Skip a numeric score unless the org supplied a model.
6. Pick the next moves.
   Few actions. Each needs an owner, the buyer progress it creates or the unknown it closes, and a verification check. Label dates as proposed unless the buyer confirmed them.
7. Give the manager the inspect.
   The question to ask, the evidence to open, the decision to make, and when to escalate. Recommend stage or CRM changes; do not apply them.

For one recorded call use `call-review-coach`. For a book of deals use `forecast-risk-brief`.

## Output Contract

Return a one-deal inspect a manager can run in the next 1:1:

- Inspection decision: objective, as-of date, claimed stage, stage-validity finding, evidence confidence
- Evidence ledger for material claims
- Buying-path review: confirmed progress and open decisions
- Risk register: risk or gap, consequence, urgency, controllability, confidence, reassess trigger
- Priority actions with owner, buyer progress, timing status, verification
- Manager coaching: questions, focus, escalation
- Assumptions, if you had to make any

Do not add a portfolio forecast, a call scorecard, or a buyer-facing MAP unless this inspect needs it.

## Quality Bar

- A manager can use this in the next 1:1 without rewriting it.
- Stage support and evidence confidence are separate findings.
- Buyer-confirmed, seller-asserted, inferred, and missing stay labeled.
- Activity volume, an internal task, or a future meeting is not buyer progress.
- Verified risk and missing proof have different actions.
- No invented CRM facts, amounts, dates, or commitments.
- Stage or field changes stay recommendations.
