# Enablement Router Example

## Use Case

Route a mixed request that spans planning, messaging, and coaching.

## Inputs

- `request.md`
- optional `revenue-enablement-context.md`

Good mixed requests usually include:
- more than one deliverable
- more than one audience
- both strategy and artifact asks

## Example Prompt

```text
Use $enablement-router on request.md.
If revenue-enablement-context.md is present, use it first.
Return the smallest useful skill path, the order to run it, and the expected deliverables at each step.
```

## Expected Output Shape

- Requested outcome summary
- Recommended skill path
- Why each skill is included
- Suggested sequence
- Assumptions or missing context
