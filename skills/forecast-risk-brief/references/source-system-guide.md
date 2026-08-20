# Source system judgment

Use this when forecast data is coming from CRM or BI instead of a prepared brief.

## Freeze one snapshot

Counts, value, aging, and concentration are meaningless across mixed as-of times. Freeze the export time before you calculate.

**Fails.** Combining Tuesday's commit list with Thursday's manager notes and calling both "this week's forecast."

**Passes.** As-of 24 July 17:00. Manager notes can challenge a field. They do not silently replace it.

CRM is the recorded base layer. Buyer comms and call evidence verify progression claims. Keep conflicts visible.

## What to pull

Minimum: stable opportunity ID, name, owner, segment, amount, currency, close date, forecast category, stage, last stage change, next step, next-step date, last material buyer activity, export as-of date.

Useful extras: stakeholder roles, procurement status, qualification fields, push history, commit notes, historical stage duration.

Sanity checks: duplicate IDs, mixed currencies, stale close dates, stages unchanged for long periods, missing next steps, categories used inconsistently, fields updated after the stated as-of date.

## What the fields cannot do

Last activity date is not buyer progress. Forecast category is not your risk tier. A verbal-yes note is not legal progress.

Without a representative historical cohort, do not apply a generic stage-aging cutoff.

## Safe writeback

Do not write forecast category, stage, or close-date changes back automatically. Return the intervention. Let managers decide what changes in-system.
