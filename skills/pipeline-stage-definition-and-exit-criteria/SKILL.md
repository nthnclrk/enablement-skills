---
name: pipeline-stage-definition-and-exit-criteria
description: Define sales stages, exit criteria, and required proof that managers can inspect and RevOps can enforce. Use when the user asks to tighten stage hygiene, standardize progression rules, or connect qualification evidence to forecasting. For specific deal reviews, use deal-inspection-coach. For forecast summaries, use forecast-risk-brief.
---

# Pipeline Stage Definition And Exit Criteria

Define pipeline stages as buyer-signal checkpoints, not activity checklists.

## Confirm Inputs First

Confirm the minimum design inputs:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Current stage map and definitions
- Historical stage evidence: stage-entry and exit dates, conversion, aging, regressions, exceptions, and closed outcome for a representative period
- Target sales motions (new business, expansion, partner-led, enterprise, SMB)
- Qualification method in use (for example MEDDICC or similar)
- Forecasting pain points and inspection problems
- Intended operators (AEs, managers, RevOps)

If inputs are partial, ask only for missing essentials. Use labeled assumptions only to propose a testable stage model; keep historical findings, proof requirements, thresholds, ownership, and system behavior unknown until verified.

## Read The Right Reference

- Read [references/stage-exit-framework.md](references/stage-exit-framework.md) before proposing stage cards or governance controls.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the output will later be mapped into CRM fields and reporting views.

## Default Workflow

1. Establish the historical baseline.
Use stage-history data and a representative deal audit to find stages that are vague, skipped, slow, frequently regressed, or weakly associated with outcomes. Record data gaps rather than treating missing history as evidence.

2. Rewrite each stage around a single buyer signal.
Give every stage one clear purpose and one clear reason to move forward.

3. Set entry and exit criteria.
Separate `required proof`, whose absence blocks progression except through a documented exception, from `recommended proof`, which informs coaching but does not block movement. Keep required proof to the minimum buyer-validated evidence needed to reduce the stage's stated risk.

4. Add anti-patterns and exception paths.
Call out the common ways reps misuse stages and how managers should handle exceptions.

5. Map the stage model to CRM and reporting.
Translate the rules into fields, notes, and dashboards the team can actually use.

6. Align the model with the team’s qualification method.
Map stage expectations to MEDDPICC, SPICED, or the org’s standard framework when needed.

7. Backtest the proposed model.
Apply the criteria to a representative sample of won, lost, no-decision, and open deals. Report how many deals would progress, remain, regress, or require an exception and whether the evidence distinguishes outcomes. If history is insufficient, label the criteria as hypotheses and define a pilot.

8. Define inspection cadence.
Set how managers and RevOps will review stage movement and forecast hygiene.

9. Produce the transition and rollback plan.
Before rollout, set baseline-linked success thresholds and rollback triggers for data completeness, exception rate, stage aging, conversion, and forecast variance. Name the rollback decision owner, review date, and restoration path to the prior rules.

## Tool Notes

- Tool-agnostic default: define the operating model first, then map to systems.
- Use [references/source-system-guide.md](references/source-system-guide.md) for the minimum system-mapping inputs and implementation risks.
- BI layers can enforce reporting once the CRM design is stable.
- Do not design stages around CRM defaults; design for selling reality and inspection quality.

## Output Contract

Default output includes:

- Stage card table: stage name, purpose, entry criteria, exit criteria, required proof
- Recommended proof and exception owner by stage
- Historical baseline and backtest results, including data limitations
- Anti-pattern list and exception rules
- Inspection cadence by role
- Optional methodology mapping notes by stage
- CRM and reporting implementation notes
- Transition, pilot, and rollback plan from current to future model

## Quality Bar

- Criteria are inspectable and evidence-based, not activity-based.
- Required proof is minimal and distinct from recommended coaching evidence.
- Stage progression logic is clear and mutually exclusive enough for reporting.
- Governance is explicit enough for manager coaching and forecast reviews.
- Output includes practical implementation details for operations teams.
- Design addresses known problem areas from the current process.
- Backtest findings, pilot success thresholds, and rollback criteria are explicit.
