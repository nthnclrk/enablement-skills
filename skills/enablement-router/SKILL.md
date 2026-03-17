---
name: enablement-router
description: Route revenue enablement requests to the best-fit skill or sequence of skills. Use when the user asks which enablement skill to use, combines multiple enablement asks in one prompt, or needs a staged workflow across planning, messaging, coaching, delivery, and measurement. Route single-artifact requests directly to the corresponding specialist skill instead of this router.
---

# Enablement Router

Route ambiguous or multi-part requests to the smallest useful skill path.

## Confirm Inputs First

Confirm only the minimum:

- The user request
- Desired output type
- Time horizon and audience
- Whether a current context artifact from `revenue-enablement-context` already exists

If one of these is missing, ask once. If speed is preferred, make labeled assumptions and continue.

## Read The Right Reference

Read [references/route-map.md](references/route-map.md) when choosing between near-miss skills or assembling multi-skill sequences.

## Default Workflow

1. Parse the request into jobs to be done.
2. Match each job to one primary skill from the repo.
3. Run boundary checks using near-miss pairs before finalizing each skill choice.
4. Remove overlaps and choose the minimum viable sequence.
5. Identify prerequisites, especially context and measurement dependencies.
6. If context is missing and downstream work depends on it, insert `revenue-enablement-context` as step zero.
7. Return a route with execution order and handoff outputs between steps.
8. Flag adjacent tasks that should explicitly not be included.

## Common Failure Modes

- Bloated routes that stack too many skills for a simple request.
- Missing context step before context-sensitive skills.
- Sequencing errors where a downstream skill is asked to run before required inputs exist.
- Failing to call out out-of-scope asks that should be split into separate work.

## Output Contract

Default output includes:

- A recommended skill sequence with rationale
- A one-line boundary note per skill in the sequence
- Required inputs for each step
- Expected output from each step
- Explicit out-of-scope items to prevent skill drift

## Quality Bar

- Route is minimal, not bloated.
- Each selected skill has clear boundaries.
- Dependencies are explicit so execution does not stall.
- Route order is executable without circular dependencies.
- The user can start work immediately from the route output.
