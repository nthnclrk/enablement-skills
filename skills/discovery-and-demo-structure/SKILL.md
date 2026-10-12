---
name: discovery-and-demo-structure
description: Design an adaptive discovery guide and outcome-led demo flow for a defined buyer, segment, stage, and meeting type. Use to create or improve question paths, stakeholder coverage, demo sequencing, and next-step structure. Use discovery-rubric-auditor to score completed discovery, call-review-coach to coach one recorded call, and talk-track-builder for a standalone pitch or spoken message.
---

# Discovery and demo structure

Design a conversation that helps the seller understand the buyer's problem and demonstrate only what the buyer needs to evaluate.

This skill designs the meeting architecture. For spoken lines inside an existing structure, use `talk-track-builder`.

**Gated.** "You said late handoffs hit the Friday ship. If I show the missed-window alert and the owner assignment, does that test the thing you would actually need to believe?"

**Dump.** "Let me start with the platform overview, then walk you through all six modules."

If there is no credible decision this meeting can produce, propose one before you build the path.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for what changes the flow:

1. Meeting type: discovery, demo, or combined
2. Who is in the room, time available, and the decision this meeting is for
3. What is already known versus hypothesized
4. Approved capabilities, proof, and demo-environment limits

Do not invent buyer commitments, metrics, or product claims.

## Supporting material

Read [references/discovery-demo-framework.md](references/discovery-demo-framework.md) for topic patterns, demo-gating rules, and meeting modes. Skip it if you are only tightening an existing guide.

## Procedure

1. Name the decision.
   What the buyer should be able to decide next, and what the seller must learn or prove. Done when that sentence is specific.
2. Separate knowns from hypotheses.
   Each consequential unknown becomes a question, not a fact in the script.
3. Build an adaptive path.
   For each topic: why it matters, an opening, what to listen for, if/then branches. Prioritize. This is not a list that must be completed in order.
4. Plan stakeholder coverage.
   What each role can confirm, what needs someone else, where views may conflict.
5. Gate the demo.
   Map each block to a confirmed outcome, criterion, or risk. For an exploratory buyer who cannot yet articulate the problem, offer a short, clearly framed example to test relevance, then return to discovery. Use verified capabilities and specify when to stop or change direction.
6. Write the transition.
   Restate what you heard. Ask permission to show the matching path.
7. Design the close.
   Recap confirmed outcomes and open questions. Ask for a next step. Do not write a proposed action as if the buyer already agreed.
8. Name the few fields to capture after the call.

For scoring completed discovery use `discovery-rubric-auditor`. For one recorded call use `call-review-coach`.

## What to return

- Meeting frame: type, audience, knowns, hypotheses, decision, time
- Discovery path with listen-fors and branches
- Stakeholder coverage
- Demo map with the buyer statement that unlocks each block
- Close plan
- Capture plan that preserves unknowns as unknown

Discovery-only, demo-only, or combined. Do not ship all three unless asked.

## Quality bar

- Every question and demo block serves the named decision.
- Each demo block has a reason to show it, a question to test relevance, and a stop or transition condition.
- Hypotheses stay labeled until the buyer confirms them.
- The guide is usable live, not a 40-question checklist.
- No invented capability, proof, or commitment.
