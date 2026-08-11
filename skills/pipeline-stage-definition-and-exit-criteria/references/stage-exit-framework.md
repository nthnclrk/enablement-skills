# Stage Exit Framework

Use this reference to design stage definitions that are inspectable and forecast-usable.

## Stage Card Template

For each stage, define:

- `buyer_state`: the decision or commitment the buyer has reached
- `purpose`: the specific deal risk this stage reduces
- `entry_criteria`: evidence required to enter from the prior stage
- `exit_criteria`: buyer-validated evidence required to progress
- `required_proof`: the minimum evidence that blocks progression when absent
- `recommended_proof`: useful coaching evidence that does not block progression
- `exception_owner`: who may approve an exception and what must be recorded
- `anti_patterns`: activities or seller assertions that do not prove progression

## Evidence Principles

- Prefer customer-validated evidence over rep activity.
- Keep required proof to the minimum evidence needed to reduce the stage's named risk.
- Do not require a field, artifact, or meeting unless it proves a buyer state or supports a necessary operating decision.
- Treat a scheduled meeting, sent proposal, completed demo, or populated field as activity until buyer evidence shows what changed.
- Keep missing proof distinct from negative evidence. An unknown does not establish that the deal failed the criterion.
- Mark source, as-of date, and buyer-confirmation state for material proof.

## Qualification Anchors

Use qualification elements as evidence checks where relevant:

- economic buyer clarity
- measurable pain and impact
- decision process and timeline clarity
- competition/status quo position
- champion strength
- implementation feasibility

Map only the qualification elements relevant to the risk reduced at that stage. Do not reproduce the full qualification framework in every stage.

Treat stakeholder access, business-case evidence, or any other qualification element as a motion-specific hypothesis, not a universal late-stage gate. Validate required proof against the segment, channel, buying path, and historical outcomes before making it blocking.

## Historical Baseline And Backtest

Before rollout, compare the current and proposed model on a representative set of won, lost, no-decision, and open deals:

| Check | Evidence to report |
| --- | --- |
| Progression | Deals that would progress, remain, regress, or need an exception |
| Separation | Whether criteria distinguish materially different outcomes or risk states |
| Operability | Required evidence availability, manager interpretation, and seller burden |
| Forecast effect | Change in stage aging, conversion interpretation, and forecast-category consistency |

If history is incomplete, label the model a hypothesis and define a bounded pilot. Do not present an untested criterion as proven predictive logic.

## Governance And Rollback

- Define the exception reason, approver, evidence, expiry or review trigger, and reporting treatment.
- Set manager inspection and RevOps audit cadence from deal volume, stage duration, change risk, and the team's existing operating rhythm.
- Record a baseline and success thresholds for evidence completeness, exception rate, stage aging, conversion, and forecast variance.
- Name the pilot or rollout decision owner, review point, rollback trigger, and restoration path to the prior model.
- Do not make CRM fields required, change stage automation, or move live opportunities without explicit approval and a tested migration plan.
