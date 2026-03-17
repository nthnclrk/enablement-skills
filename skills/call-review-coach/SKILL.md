---
name: call-review-coach
description: Review a specific sales call and deliver evidence-backed coaching feedback with prioritized next-practice actions. Use when asked to coach a rep from a call recording, transcript, or notes across discovery, demo, objection, or closing moments. Route requests to create roleplay drills to roleplay-scenario-builder and requests to define discovery scoring standards to discovery-rubric-auditor.
---

# Call Review Coach

Turn one sales call into clear coaching priorities that improve next-call execution.

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

1. Frame the review objective and success criteria for this specific call type.
2. Extract high-signal moments with concrete evidence from transcript lines or notes.
3. Check evidence quality and coverage (full transcript vs partial notes) and label confidence before scoring.
4. Score performance using the reference rubric with explicit rationale per dimension.
5. Separate strengths from gaps, then rank the top 1-3 coaching priorities.
6. Convert priorities into next-call practice actions with observable behavior targets.
7. Provide a short manager follow-up plan for reinforcement on the next call.

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
