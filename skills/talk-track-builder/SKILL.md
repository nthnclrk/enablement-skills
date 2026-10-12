---
name: talk-track-builder
description: Write persona- and stage-specific spoken language for a defined conversation moment or an existing call structure. Use for openers, value bridges, proof lines, closes and conversation branches. Route a reply to a specific buyer concern to objection-library-builder, meeting architecture to discovery-and-demo-structure, and positioning to value-prop-and-positioning.
---

# Talk track builder

Write natural spoken language that helps a seller handle a defined conversation moment.

A talk track covers one conversation moment, one objective, and one next-step ask. If the user wants the meeting architecture (what to discover, what to demo, in what order), use `discovery-and-demo-structure` first.

**Spoken line.** "Before we look at the product, can we start with the handoff misses that brought you here? Where does ownership break today, and what happens downstream when it does?"

**Script.** "Thanks so much for taking the time today. I'm excited to share how our AI-powered platform delivers unmatched visibility across your operational handoffs."

Use wording the intended speaker could say naturally to this audience.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the lines:

1. Who is speaking, and to whom
2. The conversation moment and the one outcome it must produce
3. How long they actually get to talk
4. Approved proof and claim boundaries

If proof is missing, leave spoken proof slots marked `needs source`. Do not invent customers, numbers, pricing, or implementation promises.

## Supporting material

Read [references/talk-track-framework.md](references/talk-track-framework.md) for the spoken-line test, branch pattern, and worked excerpts. Skip it if the user already gave you a structure and only wants lines.

## Procedure

1. Name the job.
   Identify the conversation objective and the appropriate next move. A full track may close with a proposed action, owner, and time; an opener or short reply may simply invite a useful answer. Fit the ask to the moment rather than inventing a commitment.
2. Pick the moment, not the whole call.
   Discovery, demo, commercial, renewal, expansion, or a coaching conversation. One primary. If the discovery or demo architecture is not yet defined, route that design to `discovery-and-demo-structure`.
3. Write the through-line.
   Opening frame, one context check, the few questions that change the next move, a value bridge, proof only if you have it, close. Cut any beat that does not serve the objective.
4. Write the lines.
   One breath each. Buyer language, not product language. Role and stage should change the questions and the ask, not just the nouns.
5. Hang proof on a moment.
   One sentence, under 20 seconds, with source and scope. Directional evidence stays directional. No source, no spoken claim.
6. Branch the turns you can hear coming.
   For each: the trigger you listen for, a diagnostic question, then the response. Usual set: skepticism, "we already have a process," price, competitor. Skip branches this moment will not raise.
7. Mark the landmines.
   What not to say. Where to stop and ask. Where to hand off to SE, legal, or deal desk.
8. Read it aloud.
   Split anything you cannot say in one breath. Delete phrases a person would never say to another person. Flag high-stakes rollouts for rehearsal.
9. Add manager checks only if someone asked to coach or inspect this track.

For message strategy use `value-prop-and-positioning`. For an objection system use `objection-library-builder`. For compete guidance use `battlecard-builder`. For coaching one recorded call use `call-review-coach`.

## What to return

For an opener, reply, or close, return the lines and any material claim caveat. For a full track, include:

- Who says it, to whom, in what moment, and how much time they have
- The objective and the next-step ask, written as spoken lines
- The through-line as executable lines, not topic labels
- Proof lines with source, scope, and when to use them, or an explicit gap
- Branches only for turns this conversation will actually hit
- Landmines
- Assumptions, if you had to make any
- A rehearsal note only when delivery risk warrants it

Do not add a discovery question bank, demo checklist, or manager scorecard unless this moment needs it.

## Quality bar

- A seller can use this five minutes before the call without rewriting it.
- Every "say" element is a spoken line, not a topic to discuss.
- Every line survives being read aloud.
- Each question changes the next move.
- Every proof line has a source, or is marked as a gap.
- The next move fits the conversation moment, and any proposed commitment is clearly an ask.
- The lines fit the requested moment, audience, and available speaking time.
