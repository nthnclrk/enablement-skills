---
name: call-review-coach
description: Review one sales call and turn it into clear coaching priorities and next-practice actions. Use when asked to coach a rep from a recording, transcript, or notes across discovery, demo, objection handling, or closing. Route practice-drill requests to roleplay-scenario-builder and discovery scoring standards to discovery-rubric-auditor.
---

# Call Review Coach

Turn one sales call into coaching that changes the next call.

## Confirm Inputs First

- If a current revenue-enablement-context exists, use it first for ICP, persona, stage, and messaging expectations. If not, ask for only the highest-impact missing context.
- Confirm the call source: transcript, recording notes, or summary.
- Confirm call type: discovery, demo, technical validation, commercial review, or close.
- Confirm rep context: role, tenure, and target segment.
- Confirm the coaching objective: discovery depth, commercial framing, next-step control, or objection handling.
- Confirm scoring standard: use provided rubric or default to `references/call-coaching-rubric.md`.

If any required item is missing, ask for the minimum missing details. If the user wants speed, proceed with labeled assumptions.

## Read The Right Reference

- Read [references/call-coaching-rubric.md](references/call-coaching-rubric.md) before scoring.

## Default Workflow

1. Set the call objective and what good looks like for this call type.
2. Pull the moments that mattered most, with exact evidence from the transcript or notes.
3. Check how complete the evidence is and label confidence before scoring.
4. Score against the rubric with brief, plain-language reasons.
5. Separate what the rep did well from the biggest gaps, then pick the top 1-3 priorities.
6. Turn each priority into a specific next-call behavior the rep can practice.
7. Add a short manager follow-up so the next call gets inspected for the same behavior.

## Tool Notes

- If conversation intelligence tools are available, use timestamps, talk tracks, and question-level snippets as evidence.
- If no tooling exists, score from notes and call summary without inventing evidence.
- Keep method tool-agnostic: evidence quality matters more than system choice.

## Output Contract

- `Call Context`: type, segment, rep level, and review objective.
- `Scorecard`: dimension-by-dimension score with evidence.
- `Strengths To Keep`: behaviors to preserve.
- `Top Gaps`: prioritized coaching gaps with impact notes.
- `Next-Call Practice Plan`: concrete drills and execution checkpoints.
- `Manager Follow-Up`: what to inspect in the next 1-2 calls.

## Quality Bar

- Tie every score or claim to explicit call evidence.
- Limit coaching to the fewest high-impact priorities instead of long issue lists.
- Make actions behavior-specific and testable in the next call.
- Avoid generic advice that cannot be inspected by a manager.
- State clearly that a single call is directional coaching input, not a full rep-level verdict.
