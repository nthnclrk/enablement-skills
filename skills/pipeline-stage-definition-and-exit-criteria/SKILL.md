---
name: pipeline-stage-definition-and-exit-criteria
description: Define sales stages, exit criteria, and required proof that managers can inspect and RevOps can enforce. Use when the user asks to tighten stage hygiene, standardize progression rules, or connect qualification evidence to forecasting. For specific deal reviews, use deal-inspection-coach. For forecast summaries, use forecast-risk-brief.
---

# Pipeline Stage Definition And Exit Criteria

Define pipeline stages as buyer-signal checkpoints, not activity checklists.

## Confirm Inputs First

Confirm the minimum design inputs:

- If a current `revenue-enablement-context` exists, use it first for ICP, stage language, qualification norms, and messaging boundaries. If not, ask for only the highest-impact missing context.
- Current stage map and definitions
- Target sales motions (new business, expansion, partner-led, enterprise, SMB)
- Qualification method in use (for example MEDDICC or similar)
- Forecasting pain points and inspection problems
- Intended operators (AEs, managers, RevOps)

If inputs are partial, ask only for missing essentials or proceed with labeled assumptions.

## Read The Right Reference

- Read [references/stage-exit-framework.md](references/stage-exit-framework.md) before proposing stage cards or governance controls.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the output will later be mapped into CRM fields and reporting views.

## Default Workflow

1. Diagnose where the current model breaks.
Find the stages that are vague, skipped, or impossible to inspect.

2. Rewrite each stage around a single buyer signal.
Give every stage one clear purpose and one clear reason to move forward.

3. Set entry and exit criteria.
Define the proof required to enter and leave each stage.

4. Add anti-patterns and exception paths.
Call out the common ways reps misuse stages and how managers should handle exceptions.

5. Map the stage model to CRM and reporting.
Translate the rules into fields, notes, and dashboards the team can actually use.

6. Align the model with the team’s qualification method.
Map stage expectations to MEDDPICC, SPICED, or the org’s standard framework when needed.

7. Define inspection cadence.
Set how managers and RevOps will review stage movement and forecast hygiene.

8. Produce the transition plan.
Show how the team moves from the current model to the new one.

## Tool Notes

- Tool-agnostic default: define the operating model first, then map to systems.
- Use [references/source-system-guide.md](references/source-system-guide.md) for the minimum system-mapping inputs and implementation risks.
- BI layers can enforce reporting once the CRM design is stable.
- Do not design stages around CRM defaults; design for selling reality and inspection quality.

## Output Contract

Default output includes:

- Stage card table: stage name, purpose, entry criteria, exit criteria, required proof
- Anti-pattern list and exception rules
- Inspection cadence by role
- Optional methodology mapping notes by stage
- CRM and reporting implementation notes
- Transition plan from current to future model

## Quality Bar

- Criteria are inspectable and evidence-based, not activity-based.
- Stage progression logic is clear and mutually exclusive enough for reporting.
- Governance is explicit enough for manager coaching and forecast reviews.
- Output includes practical implementation details for operations teams.
- Design addresses known problem areas from the current process.
