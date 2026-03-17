# Forecast Risk Brief Example

## Use Case

Weekly leadership review for enterprise pipeline risk.

## Inputs

- `opportunities.csv`
- `context.md`

Recommended minimum fields in `opportunities.csv`:
- Opportunity ID
- Opportunity Name
- Owner
- Stage
- Amount
- Close Date
- Forecast Category
- Last Modified Date
- Next Step

## Example Prompt

```text
Use $forecast-risk-brief on opportunities.csv for this quarter's enterprise pipeline.
Use context.md for assumptions about forecast categories and review cadence.
Return a concise leadership brief with risk tiers, top drivers, and an intervention plan.
```

## Expected Output Shape

- Forecast summary
- Risk tier breakdown
- Top risk drivers
- Intervention plan
- Leadership notes
