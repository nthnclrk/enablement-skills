---
name: forecast-risk-brief
description: Build a concise forecast risk brief that highlights commit risk, slippage, and intervention priorities for sales leadership. Use when asked to assess forecast reliability, summarize at-risk deals, or prepare forecast review notes. Route single-deal questions to deal-inspection-coach and call-level coaching to call-review-coach.
---

# Forecast Risk Brief

Summarize forecast confidence with clear risk tiers and leadership-ready actions.

## Confirm Inputs First

- If a current `revenue-enablement-context` exists, use it first for stage definitions, qualification standards, and forecast terminology. If not, ask for only the highest-impact missing context.
- Confirm forecast window: month, quarter, or custom period.
- Confirm coverage scope: team, segment, region, or full org.
- Confirm pipeline inputs: commit, best case, stage, amount, and dates.
- Confirm risk signals available: stage aging, next-step quality, stakeholder coverage, deal movement.
- Confirm leadership need: accuracy diagnosis, intervention plan, or board-ready summary.

Ask for the minimum missing inputs. If data is incomplete, proceed with labeled assumptions and confidence notes.

## Read The Right Reference

- Read [references/forecast-risk-framework.md](references/forecast-risk-framework.md) before generating the brief.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the source data is coming from CRM or BI exports.

## Default Workflow

1. Normalize scope and define forecast confidence assumptions.
2. Group deals by commit, best case, upside, and risk.
3. Identify concentration risk by rep, segment, stage, and close timing.
4. Check for stage aging, weak next steps, and missing stakeholders.
5. Flag unstable commits and likely slip patterns.
6. Recommend interventions by owner and due date.
7. Produce a leadership summary with confidence band and caveats.

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
- Keep the brief concise enough for weekly leadership review use.
- Use numeric risk checks as directional guardrails and avoid false precision.
