Use this only when forecast data is coming from an operating system rather than a manually prepared brief.

# Source System Guide

## CRM Inputs

- Minimum fields: opportunity name, owner, segment, amount, close date, forecast category, stage, last stage change date, next step, last activity date.
- Useful extras: stakeholder count, procurement status, MEDDPICC/SPICED fields, slip count, push date history, commit notes.
- Sanity checks:
  - stale close dates
  - unchanged stages for long periods
  - missing next-step fields
  - forecast categories used inconsistently across managers

## Recommended Handling

- Use CRM exports as the base layer for counts, value, stage aging, and concentration analysis.
- Treat manager notes and call intelligence as secondary evidence to explain risk, not to overwrite hard pipeline facts.
- If data quality is inconsistent, downgrade confidence and say which signals are directional only.

## Safe Writeback Boundary

- Do not recommend writing forecast category, stage, or close-date changes back automatically.
- Return intervention guidance first; let managers decide what should change in-system.
