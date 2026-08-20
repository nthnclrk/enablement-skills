---
name: enablement-router
description: Route revenue enablement requests to the smallest coherent skill or sequence. Use when the user asks which skill to use, combines multiple enablement jobs, needs a staged workflow, or describes a performance problem without knowing the right enablement response. Route clear single-artifact requests directly to the corresponding specialist skill.
---

# Enablement router

Shortest path. One skill is the default. Extra steps need a handoff.

If the user asked for a battlecard, do not send them through context, positioning, and a launch plan first.

**Direct.** "Build the card with `battlecard-builder`. You already have the competitor and the claim limits."

**Tour.** "First we should establish context, then positioning, then a program charter, then the battlecard."

Route only, unless the user also asked you to do the work. Read [references/route-map.md](references/route-map.md) when two skills look alike.

## When to route

Derive the job from the request before asking. Ask one question only when the answer changes the primary skill, the order, or the audience mode.

A performance miss with no diagnosed cause goes to `enablement-program-design` in discovery mode. Do not assume training. Stop if the cause is product, incentive, capacity, or territory.

Add `revenue-enablement-context` only when missing or stale assumptions would weaken the first step.

## How to pick

1. Translate the request into jobs and one observable end result.
   Done when you can name the artifact they will actually use.
2. Drop related work nobody asked for.
3. Match jobs to the route map. Use the boundary column when two skills look alike.
4. Mark each step `Available now` or `Additional skill needed`. Do not invent install commands.
5. One skill by default. A second skill only when the first produces a required handoff.
6. Three skills or fewer. If you need more, return phase one, the evidence that it is done, and the trigger for phase two.

## What to return

Direct route: what to do next, primary skill and availability, nearest boundary, first input.

Sequence: a short table with order, skill, availability, job, handoff, and expected output. Not for a single-skill route.

Include assumptions, deferred work, and one starting action. A handoff packet is facts, conflicts, blocking unknowns, sources, requested output, and stop condition.

## Done when

- A clear single-artifact ask never went through the router as a tour.
- Unavailable skills are not presented as runnable.
- The user can start immediately.
- Related work stays deferred.
