# Enablement Router Example

## Use Case

Route a mixed request to the smallest executable path without assuming every recommended skill is installed.

## Inputs

- `request.md`
- optional `revenue-enablement-context.md`
- the environment's visible skill catalog, when available

Good mixed requests usually include:

- more than one job or deliverable
- a dependency between strategy, artifact, practice, or measurement work
- ambiguity between two neighboring skills

## Example Prompt

```text
Use $enablement-router on request.md.
Return the smallest coherent skill path and stop when the requested outcome is complete.
Use revenue-enablement-context.md only if missing shared assumptions would materially weaken the route.
Mark each step Available now or Additional skill needed from the visible skill catalog.
Ask one question only if its answer would change the selected skill or order.
```

## Expected Output Shape

- What to do next, why, and what not to do yet
- Interpreted outcome and any labeled assumption
- Direct route or compact sequence
- Availability status per selected skill
- Job, boundary, canonical artifact, input handoff, expected output, and what the next step must not redo
- Deferred related work kept outside the executable path, with phase-one completion evidence and the next-phase trigger when relevant
- Exact first action

For an undiagnosed miss such as “the team is below target and I do not know what enablement we need,” the route should begin with `enablement-program-design` in discovery mode, avoid assuming training, and stop if the evidence points to a non-enablement cause.
