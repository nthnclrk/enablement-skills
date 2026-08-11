Use this only when forecast data is coming from an operating system rather than a manually prepared brief.

# Source System Guide

## CRM Inputs

- Minimum fields: stable opportunity ID, opportunity name, owner, segment, amount, currency, close date, forecast category, stage, last stage change date, next step, next-step date, last material buyer activity date, and export as-of date.
- Useful extras: stakeholder roles and engagement, procurement or approval status, MEDDPICC/SPICED fields, push history, commit notes, historical stage duration, and median time from stage to close.
- Sanity checks:
  - duplicate opportunity IDs or mixed currencies
  - stale close dates
  - unchanged stages for long periods
  - missing next-step fields
  - forecast categories used inconsistently across managers
  - snapshot fields updated after the stated as-of date

## Recommended Handling

- Freeze one as-of snapshot before calculating counts, value, aging, or concentration.
- Use CRM exports as the recorded base layer, then use buyer communications, call evidence, and approved plans to verify progression claims.
- Preserve source conflicts. Do not silently replace a recorded field with the most optimistic narrative.
- Calculate evidence confidence separately from deal risk and identify the missing or stale fields that caused the downgrade.

## Safe Writeback Boundary

- Do not recommend writing forecast category, stage, or close-date changes back automatically.
- Return intervention guidance first; let managers decide what should change in-system.
