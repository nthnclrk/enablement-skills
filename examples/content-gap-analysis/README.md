# Content Gap Analysis Example

## Use Case

Quarterly audit of enablement coverage by role and stage.

## Inputs

- `content_inventory.csv`
- `usage_signals.csv`
- `scope.md`

Recommended fields:
- asset ID
- asset title
- owner
- role/persona
- stage
- last updated date
- usage or engagement signal

## Example Prompt

```text
Use $content-gap-analysis on content_inventory.csv and usage_signals.csv.
Use scope.md for the target roles, stages, and planning horizon.
Return a prioritized backlog of create, update, consolidate, and retire decisions.
```

## Expected Output Shape

- Coverage map
- Prioritized gap backlog
- Recommended action type per gap
- Ownership suggestions
- Assumptions and confidence notes
