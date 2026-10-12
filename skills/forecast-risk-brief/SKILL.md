---
name: forecast-risk-brief
description: Build a concise forecast risk brief that highlights commit risk, slippage, and intervention priorities for sales leadership. Use when asked to assess forecast reliability, summarize at-risk deals, or prepare forecast review notes. Route single-deal questions to deal-inspection-coach and call-level coaching to call-review-coach.
---

# Forecast risk brief

Show leadership which forecast value is exposed, where the evidence is insufficient, and which interventions need attention.

A good brief shows which commit value is threatened, which is merely untrustworthy, and which intervention belongs to each. If the user wants one deal inspected, use `deal-inspection-coach`.

**Deal risk.** "Three commits have a hard stop: legal review cannot finish before quarter-end. That value is exposed even if the CRM is complete."

**Data-quality risk.** "Two more commits have no buyer next step and a close date that moved twice with no new evidence. You cannot tier them. They are indeterminate, not probably fine."

If evidence confidence is being used as close likelihood, rewrite it.

## Inputs

Ask only for the inputs that change the brief:

1. Forecast window, coverage (team, segment, region), as-of date, and currency
2. Category definitions and what counts as buyer-confirmed progression
3. The snapshot: category, stage, amount, close date, last stage change, next step
4. Available risk signals and any historical cycle-time baseline
5. The leadership need: accuracy, intervention, or board summary

If a field is missing, leave it unknown. Do not invent amounts, dates, categories, or thresholds.

## Supporting material

Read [references/forecast-risk-framework.md](references/forecast-risk-framework.md) before assigning a risk tier. Read [references/source-system-guide.md](references/source-system-guide.md) when the source is a CRM or BI export.

## Procedure

1. Freeze the snapshot.
   One as-of date, one currency, one category set. Done when totals reconcile to the export and mixed currencies or duplicate IDs are flagged.
2. Keep the seller category separate from your tier.
   Commit is what they recorded. Risk is what the evidence supports. Done when you have not "corrected" a category in the system.
3. Run the same checks on every in-scope deal.
   Time feasibility, buyer-confirmed progression, next step, stakeholders, commercial path, date stability. Use the org's model if they supplied one. Otherwise show the decisive check, not a homemade score. Done when each deal is low, moderate, high, or indeterminate.
4. Rate evidence confidence on its own.
   Completeness, freshness, conflicts, baseline quality. Missing critical fields cannot be rescued by a full set of low-value fields. Low risk requires high confidence.
5. Aggregate for leadership.
   Value and count by tier, category, rep, segment, stage, and close timing. Keep indeterminate outside the low/moderate/high totals.
6. Apply the risk-confidence matrix.
   Address a directly evidenced blocker even when other fields are incomplete. Verify weakly supported concerns before acting on them. For indeterminate deals, name the smallest missing fact that would support a classification; evidence gaps must not erase a known hard stop.
7. Assign interventions.
   Owner, confirmed or proposed date, verification check. A date you created is proposed. Escalate concentration only against a tolerance the user supplied; otherwise show the exposure and ask.

For one strategic deal use `deal-inspection-coach`. For one call use `call-review-coach`. For stage-rule design use `pipeline-stage-definition-and-exit-criteria`.

## What to return

Lead with the exposure and decisions needed for the requested review. Include:

- Forecast summary: scope, confidence band as evidence quality, caveats
- Risk-tier breakdown with indeterminate held out
- Priority-deal check table: observed state, source, hard stops, tier, decisive rationale
- Evidence confidence kept separate from risk
- Top structural risk drivers
- Intervention plan with owner, date state, verification
- Decisions to make now vs monitor
- Assumptions, if you had to make any

Do not add a single-deal coaching plan or a rewritten stage model unless this brief needs it.

## Quality bar

- Leadership can act from this in the weekly review without a second analysis.
- Deal risk and data-quality risk stay separate.
- Incomplete evidence stays indeterminate, not a reassuring tier.
- No invented amounts, dates, tolerances, or scoring weights.
- Generated dates are proposed, not owner commitments.
- CRM changes stay recommendations.
