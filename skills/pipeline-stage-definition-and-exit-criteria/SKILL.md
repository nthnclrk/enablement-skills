---
name: pipeline-stage-definition-and-exit-criteria
description: Define or redesign pipeline stages with clear entry and exit criteria that sales managers can inspect and enforce. Use when the user asks to tighten stage hygiene, standardize progression rules, or connect qualification evidence to forecasting discipline. For reviewing specific deals against existing criteria, use deal-inspection-coach. For period-level risk reporting, use forecast-risk-brief.
---

# Pipeline Stage Definition And Exit Criteria

Define pipeline stages as evidence-based operating rules, not activity checklists.

## Confirm Inputs First

Confirm the minimum design inputs:

- If a current revenue-enablement-context exists, use it first for ICP, stage language, qualification norms, and messaging boundaries. If not, ask for only the highest-impact missing context.
- Current stage map and definitions
- Target sales motions (new business, expansion, partner-led, enterprise, SMB)
- Qualification method in use (for example MEDDICC or similar)
- Forecasting pain points and inspection failure modes
- Intended operators (AEs, managers, RevOps)

If inputs are partial, ask only for missing essentials or proceed with labeled assumptions.

## Read The Right Reference

- Read [references/stage-exit-framework.md](references/stage-exit-framework.md) before proposing stage cards or governance controls.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the output will later be mapped into CRM fields and reporting views.

## Default Workflow

1. Diagnose current failure modes.
Identify where stages are ambiguous, skip-prone, or weakly inspectable.

2. Redefine stage intent.
Assign each stage a single progression purpose and expected customer signal.

3. Set entry and exit criteria.
Use evidence-based criteria tied to stakeholder and deal risk signals.

4. Add verification rules.
Define what proof is required and who confirms it.

5. Add guardrails and anti-patterns.
Define blocked transitions, exception paths, and common misuse examples.

6. Define inspection cadence.
Specify manager and RevOps checks by stage and forecast period.

7. Plan system mapping.
Map new criteria to CRM fields, required notes, and reporting views.

8. Add optional methodology mapping.
Translate stage expectations to common methods (for example MEDDPICC/SPICED) when the team uses them.

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
- Design addresses known failure modes from current process.
