# Source system judgment

Use this when the stage model must later map into CRM fields, required notes, and reporting views.

## Design the operating logic first

Write purpose, entry evidence, exit evidence, blocked transitions, and exception rules before you touch objects. CRM defaults are not process design.

**Fails.** Keep the vendor's six stages and add required fields so managers "have data."

**Passes.** Four buyer-signal stages. Then recommend which existing fields can hold the proof, which validation would over-collect, and which reports would lie during migration.

## What to gather

Current stage list and probability model. Required fields by stage today. Existing validation, approvals, and forecast categories. Reporting views managers, RevOps, and leadership already use.

## Implementation risks

- CRM defaults masquerading as process
- One stage that combines two buyer outcomes
- Required fields that collect data but do not prove progression
- Assuming a one-to-one map from new cards to current configuration

Keep qualification-method mapping explicit so hygiene does not depend on tribal interpretation.

## Safe writeback

Recommend field, validation, and reporting changes separately. Do not create fields, change automation, or move live opportunities without explicit approval of the exact configuration and migration plan.
