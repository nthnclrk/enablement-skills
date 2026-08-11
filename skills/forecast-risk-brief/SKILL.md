---
name: forecast-risk-brief
description: Build a concise forecast risk brief that highlights commit risk, slippage, and intervention priorities for sales leadership. Use when asked to assess forecast reliability, summarize at-risk deals, or prepare forecast review notes. Route single-deal questions to deal-inspection-coach and call-level coaching to call-review-coach.
---

# Forecast Risk Brief

Separate deal risk from evidence confidence, then turn both into leadership-ready actions.

## Confirm Inputs First

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Confirm forecast window: month, quarter, or custom period.
- Confirm coverage scope: team, segment, region, or full org.
- Confirm data as-of date, currency, and forecast-category definitions.
- Confirm the operating review cadence and what counts as buyer-confirmed progression in that motion.
- Confirm pipeline inputs: commit, best case, stage, amount, close date, and last stage change.
- Confirm risk signals available: stage aging, next-step quality, stakeholder coverage, deal movement.
- Confirm historical stage-duration and cycle-time baselines when available.
- Confirm leadership need: accuracy diagnosis, intervention plan, or board-ready summary.

Ask for the minimum missing inputs. Use labeled assumptions only for reversible brief structure or intervention hypotheses; keep deal fields, amounts, dates, categories, commitments, evidence, and thresholds unknown until verified.

## Read The Right Reference

- Read [references/forecast-risk-framework.md](references/forecast-risk-framework.md) before generating the brief.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the source data is coming from CRM or BI exports.

## Default Workflow

1. Normalize the snapshot, currency, forecast categories, and comparison baselines.
2. Keep the seller-entered forecast category separate from the assessed risk tier.
3. Apply the framework's common risk checks and tier decision rules. Use an approved organization-specific model when supplied; otherwise make the decisive evidence and judgment visible rather than inventing a point score. Assign low, moderate, or high risk only when the evidence supports the rule; otherwise mark the deal `indeterminate`.
4. Rate evidence confidence independently using completeness, freshness, consistency, and baseline quality.
5. Aggregate risk and value by forecast category, rep, segment, stage, and close timing.
6. Apply the risk-confidence decision matrix before recommending interventions.
7. Assign each intervention an owner, date state, and verification checkpoint. Use a confirmed due date when supplied; otherwise label a planning date or review point `proposed` and identify who must confirm it.
8. Produce a leadership summary that distinguishes forecast exposure from data uncertainty.

## Tool Notes

- If CRM/BI tooling exists, use native fields for consistency with operating cadence.
- Use [references/source-system-guide.md](references/source-system-guide.md) for minimum fields, snapshot rules, and data-quality checks.
- If tooling is limited, provide directional analysis and mark uncertainty clearly.
- Keep analysis method independent of any specific platform.

## Output Contract

- `Forecast Summary`: scope, confidence band, and key caveats. Define the confidence band as evidence quality, not deal health.
- `Risk Tier Breakdown`: low/moderate/high-risk deal counts and value, plus indeterminate exposure kept outside those tiers.
- `Risk Check Table`: tier-decision legend once, then observed check state, source, hard stops, risk tier, and decisive rationale by priority deal. Put supporting detail in an appendix when it would overwhelm the leadership brief.
- `Evidence Confidence`: completeness, freshness, conflicts, and baseline quality kept separate from risk.
- `Top Risk Drivers`: structural patterns affecting reliability.
- `Intervention Plan`: owner, action, confirmed or proposed timeline, date state, and verification checkpoint by risk class.
- `Leadership Notes`: decisions to make now vs monitor later.

## Quality Bar

- State assumptions and uncertainty explicitly.
- Never use evidence confidence as a synonym for close likelihood or deal health.
- Prioritize forecast reliability over optimistic narrative.
- Focus recommendations on controllable interventions.
- Never present a generated intervention date as an existing owner commitment.
- Keep the brief concise enough for weekly leadership review use.
- Show the decisive inputs and decision rule behind every risk tier. If an approved scoring model is used, identify its owner and version.
- Do not let an uncalibrated point score, generic stage-aging ratio, or arbitrary cutoff determine low/moderate/high exposure.
- Never force incomplete evidence into a reassuring tier; show indeterminate exposure separately.
