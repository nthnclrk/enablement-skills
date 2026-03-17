---
name: forecast-risk-brief
description: Build a concise forecast risk brief that highlights deal-level and portfolio-level risk, confidence bands, and intervention priorities for sales leadership. Use when asked to assess forecast reliability for a period, summarize at-risk commits, or prepare a forecast review brief. Route single-opportunity diagnostics to deal-inspection-coach and call-level performance review requests to call-review-coach.
---

# Forecast Risk Brief

Summarize forecast confidence with clear risk tiers and leadership-ready interventions.

## Confirm Inputs First

- If a current revenue-enablement-context exists, use it first for stage definitions, qualification standards, and forecast terminology. If not, ask for only the highest-impact missing context.
- Confirm forecast window: month, quarter, or custom period.
- Confirm coverage scope: team, segment, region, or full org.
- Confirm pipeline inputs: commit/best-case categories, stage, amount, and dates.
- Confirm risk signals available: stage aging, next-step quality, stakeholder coverage, deal movement.
- Confirm leadership need: accuracy diagnosis, intervention plan, or board-ready summary.

Ask for the minimum missing inputs. If data is incomplete, proceed with labeled assumptions and confidence notes.

## Read The Right Reference

- Read [references/forecast-risk-framework.md](references/forecast-risk-framework.md) before generating the brief.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the source data is coming from CRM or BI exports.

## Default Workflow

1. Normalize scope and define forecast confidence assumptions.
2. Segment opportunities by risk tier using reference criteria.
3. Identify concentration risk by rep, segment, stage, and close timing.
4. Apply simple numeric checks (for example concentration, stage aging, and slippage base-rate signals) to avoid narrative-only risk calls.
5. Flag unstable commits and likely slippage patterns.
6. Recommend interventions by owner and time horizon.
7. Produce leadership summary with confidence band and caveats.

## Tool Notes

- If CRM/BI tooling exists, use native fields for consistency with operating cadence.
- Use [references/source-system-guide.md](references/source-system-guide.md) for the minimum fields and confidence rules when the source is CRM data.
- If tooling is limited, provide directional analysis and mark uncertainty clearly.
- Keep analysis method independent of any specific platform.

## Output Contract

- `Forecast Summary`: scope, confidence band, and key caveats.
- `Risk Tier Breakdown`: low/moderate/high-risk deal counts and value.
- `Top Risk Drivers`: structural patterns affecting reliability.
- `Intervention Plan`: owner, action, and timeline by risk class.
- `Leadership Notes`: decisions to make now vs monitor later.

## Quality Bar

- State assumptions and uncertainty explicitly.
- Prioritize forecast reliability over optimistic narrative.
- Focus recommendations on controllable interventions.
- Keep brief concise enough for weekly leadership review use.
- Use numeric risk checks as directional guardrails and avoid false precision.
