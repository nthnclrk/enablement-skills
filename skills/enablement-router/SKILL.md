---
name: enablement-router
description: Route revenue enablement requests to the smallest coherent skill or sequence. Use when the user asks which skill to use, combines multiple enablement jobs, needs a staged workflow, or describes a performance problem without knowing the right enablement response. Route clear single-artifact requests directly to the corresponding specialist skill.
---

# Enablement Router

Choose the shortest executable path from the user's outcome to the right enablement work.

## Confirm Inputs First

Derive these from the request and workspace before asking:

- Required decision or deliverable
- Audience and timing when they affect the route
- Evidence needed for the first step
- Whether current shared GTM context matters and exists
- Which named skills the environment exposes

Ask one concise question only when its answer changes the primary skill, order, or audience mode. Combine at most three decision variables. Do not request visible context or an installed-skill inventory. If a safe assumption is possible, label it and continue.

## Read The Right Reference

Read [references/route-map.md](references/route-map.md) before routing. Use it to identify the primary job, nearest boundary, and shortest handoff.

## Default Workflow

1. Translate the request into jobs and one observable end result.
   If the user reports a performance miss without a diagnosed cause, route first to `enablement-program-design` in discovery mode. Do not assume training; end the route if the evidence points to a non-enablement cause.
2. Separate the required outcome from related, unrequested work.
3. Match required jobs to the map; use boundaries to resolve close alternatives.
4. Add `revenue-enablement-context` only when missing or stale assumptions would materially weaken later work. Do not force setup for a narrow source transformation.
5. Check the visible skill catalog or installed paths. Mark each step `Available now` or `Additional skill needed`; never imply an unavailable skill can run.
6. Select one skill by default. Add another only when its predecessor produces a required handoff.
7. Keep the route to three skills or fewer. If more are necessary, return a first phase, its completion evidence, the trigger for phase two, and a reusable handoff packet.
8. Ask the decision-changing question only if a real fork remains; otherwise state the assumption.
9. Return the next action, route, boundaries, handoffs, availability, and exact first input. Do not ask again for a confirmed input unless it is stale, conflicted, or needs a more specific definition for the selected job.

## Tool Notes

- The route map lists capabilities; it does not prove installation.
- Prefer the environment's catalog over asking the user what is available.
- Do not invent install commands, package names, or fallback capabilities. Mark the missing job `Additional skill needed`.
- Route only unless the user also asked to execute the selected work.

## Output Contract

For a direct route, return a short answer with:

- What to do next, why, and what not to do yet
- Primary skill and availability status
- Its nearest boundary
- Exact first input needed

For a sequence, return a compact table with:

- Order and selected skill
- `Available now` or `Additional skill needed`
- Job performed and why it belongs
- Canonical artifact, input or handoff required, and what must not be redone
- Expected output

Include assumptions, deferred work, phase-exit evidence when relevant, and one starting action. A handoff packet contains relevant confirmed facts, provisional or conflicting facts, blocking unknowns, source references, requested output, and stop condition. Do not use a multi-step table for a single-skill route.

## Quality Bar

- One skill is the default; every extra step requires a handoff.
- Questions change the route rather than collect nice-to-have detail.
- Context setup is selective, not ritualistic.
- Boundaries are explicit and unavailable skills are not presented as executable.
- Dependencies are ordered, with no circular handoffs.
- The user can start immediately; related work stays deferred.
