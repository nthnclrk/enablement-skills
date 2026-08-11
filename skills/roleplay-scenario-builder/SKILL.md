---
name: roleplay-scenario-builder
description: Build developmental sales role-play scenarios with facilitator-only briefs, behaviorally anchored feedback, and run protocols. Use for practice drills in discovery, demos, objections, negotiation, or executive conversations. Route consequential readiness or pass/fail decisions to certification-program-builder; this skill may supply only the scenario component of a governed certification. Route real-call coaching to call-review-coach and discovery scoring to discovery-rubric-auditor.
---

# Roleplay Scenario Builder

Design practice scenarios that change how reps actually sell.

## Confirm Inputs First

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Confirm target role: SDR, AE, SE, AM, or manager.
- Confirm capability focus: discovery, demo, commercial conversation, or objection handling.
- Confirm scenario context: segment, buyer persona, and deal stage.
- Confirm difficulty level: baseline, stretch, or advanced.
- Confirm feedback expectations: behavior anchors, numeric rubric, or qualitative feedback. If the result controls readiness or access, route the standard and decision rules to `certification-program-builder`.
- Confirm run constraints: available time, participant count, facilitator role, retry policy, and whether a pass threshold already exists.

If inputs are incomplete, ask only for missing essentials. Use labeled assumptions for fictional scenario details and reversible run choices only; never present them as real customer, competitor, product, or proof evidence.

## Read The Right Reference

- Read [references/roleplay-scenario-framework.md](references/roleplay-scenario-framework.md) before generating scenarios.

## Default Workflow

1. Define the behavior you want and the observable evidence that would demonstrate it; distinguish critical failures from coachable misses.
2. Build one focused scenario by default. Add a progression only when the user needs it, changing one difficulty variable at a time.
3. If you have real field evidence, base the scenario on anonymized examples.
4. Split participant-visible context from facilitator-only facts. Keep hidden blockers, reveal conditions, buyer constraints, scoring anchors, and escalation cues out of the participant brief.
5. Add the pressure points, objections, and decision moments the rep needs to handle.
6. Write the run protocol: roles, timebox, reveal rules, pause or retry rules, observation capture, and debrief order.
7. Create behaviorally anchored criteria tied to visible behavior and cited observations. Use an existing pass threshold when supplied; otherwise report the evidence without inventing one.
   In a governed certification, provide only the scenario and observable evidence prompts; do not set or administer the consequential decision here.
8. End with participant self-assessment, facilitator feedback, and one focused retry or next-practice action.

## Tool Notes

- Keep scenario generation tool-agnostic by default.
- If LMS or coaching platforms exist, format outputs to their schema only when requested.

## Output Contract

- `Scenario`: one focused scenario by default, or a justified progression that changes one variable at a time.
- `Participant Brief`: context, objective, constraints, and success criteria.
- `Facilitator-Only Guide`: hidden information, reveal conditions, timing, escalation cues, and prompts.
- `Buyer Persona Script`: likely questions, concerns, and pushback.
- `Behaviorally Anchored Scorecard`: observable criteria, anchors, cited evidence, critical failures, and supplied pass rule if one exists.
- `Run Protocol`: role assignment, timebox, observation, pause or retry rules, and debrief order.
- `Debrief Guide`: reflection questions and next-practice actions.

## Quality Bar

- Keep scenarios commercially realistic and stage-appropriate.
- Test for behavior change, not memorized scripts.
- Ensure scoring is observable and consistent across reviewers.
- Include at least one unexpected turn to test adaptation.
- When evidence-derived scenarios are used, preserve realism while removing identifying details.
- Do not leak facilitator-only facts into the participant brief or score style, confidence, or personality as a proxy for the target behavior.
- Feedback cites what happened in the scenario and ends with one behavior to retry.
