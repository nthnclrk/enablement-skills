Use this when stage redesign must eventually map into CRM fields, required notes, and reporting views.

# Source System Guide

## System Mapping Inputs

- Current stage list and probability model.
- Required fields by stage today.
- Existing validation rules, approval steps, and forecast categories.
- Reporting views used by managers, RevOps, and leadership.

## Recommended Handling

- Design the operating logic first:
  stage purpose, entry evidence, exit evidence, blocked transitions, exception rules.
- Only then map that logic to CRM fields, required notes, dashboards, and automation.
- Keep qualification-method mapping explicit so stage hygiene does not depend on tribal interpretation.

## Implementation Risks

- CRM defaults masquerading as process design.
- Stages that combine multiple customer outcomes.
- Required fields that collect data but do not prove progression.

## Safe Writeback Boundary

- Do not assume a direct one-to-one mapping from new stage cards to current CRM configuration.
- Recommend field, validation, and reporting changes separately.
