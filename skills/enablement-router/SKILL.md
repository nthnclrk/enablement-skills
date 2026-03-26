---
name: enablement-router
description: Route revenue enablement requests to the best-fit skill or sequence of skills. Use when the user asks which enablement skill to use, combines multiple enablement asks in one prompt, or needs a staged workflow across planning, messaging, coaching, delivery, and measurement. Route single-artifact requests directly to the corresponding specialist skill instead of this router.
---

# Enablement Router

Choose the right enablement skill or sequence when the request covers more than one job.

## Confirm Inputs First

Confirm only the minimum:

- The user request
- Main deliverable needed
- Audience and time horizon
- Whether a current `revenue-enablement-context` already exists

If one of these is missing, ask once. If speed matters more than precision, make labeled assumptions and continue.

## Read The Right Reference

Read [references/route-map.md](references/route-map.md) when choosing between similar skills or building a multi-step path.

## Default Workflow

1. Split the request into the actual jobs to be done.
2. Pick one primary skill for each job.
3. Check nearby skills so the route does not drift into the wrong deliverable.
4. Collapse overlaps and keep the path as short as possible.
5. Check prerequisites, especially shared context, metrics, or source material.
6. If key context is missing and later skills depend on it, add `revenue-enablement-context` first.
7. Return the recommended order, expected handoff from each step, and what the user can skip.
8. Call out related asks that should stay out of scope for this run.

## What To Avoid

- Overcomplicating a simple request with too many skills.
- Skipping the context step when downstream work clearly depends on it.
- Putting a build or writing skill before the inputs it needs exist.
- Letting adjacent asks creep into the route without saying they are separate work.

## Output Contract

Default output includes:

- A recommended skill sequence with rationale
- A one-line boundary note per skill in the sequence
- Required inputs for each step
- Expected output from each step
- Explicit out-of-scope items so the route stays tight

## Quality Bar

- Route is short, clear, and easy to run.
- Each selected skill has an obvious reason to be there.
- Dependencies are explicit so work does not stall midway.
- Route order is practical and avoids circular handoffs.
- The user can start the first step immediately.
