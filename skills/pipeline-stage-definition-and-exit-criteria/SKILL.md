---
name: pipeline-stage-definition-and-exit-criteria
description: Define sales stages, exit criteria, and required proof that managers can inspect and RevOps can enforce. Use when the user asks to tighten stage hygiene, standardize progression rules, or connect qualification evidence to forecasting. For specific deal reviews, use deal-inspection-coach. For forecast summaries, use forecast-risk-brief.
---

# Pipeline stage definition and exit criteria

Define stages that reflect the buyer's progress and give managers consistent evidence for moving a deal forward.

A good stage says what the buyer decided and what proof a manager can inspect. If the user wants one live deal reviewed, use `deal-inspection-coach`. If they want a period forecast, use `forecast-risk-brief`.

**Buyer-signal exit.** "Discovery exits when the buyer names the problem, its cost, and why it is funded this cycle. Required proof: a buyer-authored problem statement or recorded confirmation from the economic buyer."

**Activity checklist.** "Discovery exits when the AE logs a discovery call and fills the MEDDPICC fields."

The assignment rule should yield one current stage, while allowing earlier evidence to remain true and legitimate regressions to be recorded.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the model:

1. Current stage map and who operates it
2. Historical stage evidence for a representative period, if it exists
3. Target motions and the qualification method in use
4. The inspection and forecast problems this redesign must fix

If history is missing, label the model a hypothesis. Do not invent conversion rates, aging norms, or CRM behavior.

## Supporting material

Read [references/stage-exit-framework.md](references/stage-exit-framework.md) before writing stage cards or governance. Read [references/source-system-guide.md](references/source-system-guide.md) when the output must later map into CRM fields and reporting.

## Procedure

1. Establish the baseline.
   Find stages that are vague, skipped, slow, frequently regressed, or weakly tied to outcomes. Record data gaps. Done when you can name the broken stages and what evidence you lack.
2. Give each stage one buyer signal.
   One purpose. One reason to move. Done when you can say the buyer state in a sentence a manager would use in a deal review.
3. Set entry, exit, and proof.
   Required proof blocks progression except through a documented exception. Recommended proof coaches; it does not block. Keep required proof to the minimum buyer-validated evidence that reduces that stage's named risk.
4. Name the anti-patterns.
   Sent proposal, booked meeting, populated field, and seller assertion are activity until buyer evidence shows what changed. Write how managers handle exceptions.
5. Map to the qualification method.
   Attach only the MEDDPICC, SPICED, or local checks that belong to this stage's risk. Do not reprint the whole framework on every card.
6. Backtest before rollout.
   Apply the criteria to won, lost, no-decision, and open deals. Report how many would progress, remain, regress, or need an exception. If history cannot support that, define a pilot.
7. Set inspection and rollback.
   Define the manager and RevOps review rhythm, pilot measures, rollback owner, and restoration path. Use historical or owner-approved thresholds; otherwise name who must set them. Separate changes in recorded stage from changes in actual buyer progress.
8. Map to systems last.
   Design the operating logic first. Then recommend fields, notes, and dashboards. Do not move live opportunities or flip required fields without explicit approval.

## What to return

For a stage repair, return the changed criteria and adjacent-stage effects. For a full model, include:

- Stage cards: name, buyer state, purpose, entry, exit, required proof, recommended proof, exception owner
- Historical baseline and backtest, including data limits
- Anti-patterns and exception rules
- Inspection cadence by role
- Qualification-method notes only where they change a gate
- CRM and reporting recommendations
- Transition, pilot, and rollback plan
- Assumptions, if you had to make any

Do not inspect a named live deal or produce a forecast brief here.

## Quality bar

- A manager can pass or fail a deal against a stage without a side conversation.
- Required proof is minimal, buyer-validated, and distinct from coaching evidence.
- Stages are mutually exclusive enough to report.
- Backtest findings or an explicit pilot hypothesis are present.
- No invented historical rates, thresholds, or CRM capabilities.
- System changes stay recommendations.
