---
name: call-insights-to-objections
description: Analyze a defined set of sales calls or notes and produce an evidence-backed objection brief by segment, persona, or stage. Use for recurring pushback, proof gaps, and message patterns across multiple conversations. Use call-review-coach for one-call coaching, win-loss-synthesis for outcome-cause research, and objection-library-builder for the governed response asset.
---

# Call insights to objections

Cluster what buyers actually said across a defined call set. Stop at the brief. The governed library is a different job.

**Fails.** "Approved response: 'Our implementation is proven and low-risk across similar rollouts.'"

**Passes.** "Implementation capacity appeared in 6 of 18 usable discovery calls across 4 accounts. Buyer language: 'we do not have anyone to own the rollout.' Observed consequence: extra validation, not a hard stop. Route the response asset to `objection-library-builder`."

One recorded call is `call-review-coach`. Why deals were won or lost is `win-loss-synthesis`.

## Confirm Inputs First

Ask only for the inputs that change the clusters:

1. The decision this brief must inform
2. Time window, call types, segments, personas, and available call count
3. Source format: transcript, notes, or mixed, plus which metadata exists
4. Whether the audience needs a diagnostic brief, an action backlog, or inputs for a later library

Do not force shared-context setup for a self-contained source set. Do not invent outcomes, quotes, or usage.

## Read The Right Reference

Read [references/objection-coding-framework.md](references/objection-coding-framework.md) before you code, count, or assign confidence. Read [references/source-system-guide.md](references/source-system-guide.md) when the evidence comes from a call platform, shared notes, or a message export.

## Default Workflow

1. Frame the set.
   Decision question, inclusion rules, window, slices, and unit of analysis. Done when a reviewer can see which conversations are in and which are out.
2. Register every eligible conversation.
   Stable source ID and the metadata needed to trace a finding. Unusable or missing content is missing coverage, not an objection-free call.
3. Code without collapsing too early.
   Explicit objection, implied concern, buyer question, and seller interpretation stay separate. Tag type, buyer language, response, observed consequence, and a root-cause hypothesis.
4. Count once per conversation for prevalence.
   Extra mentions are intensity, not a bigger sample. Show the eligible-call denominator and unique-account breadth on every compared slice.
5. Cluster the same concern, not the same wording.
   Merge only when the underlying buyer issue is the same. Keep distinct concerns separate even when the later response would overlap.
6. Score impact from what happened on the call.
   Blocking, material friction, open concern, or unknown. Deal impact and root cause stay hypotheses unless the evidence establishes them.
7. Recommend the smallest next action.
   Message clarification, proof, product feedback, seller practice, process, or more research. Owner and validation signal. Do not write approved response language.
8. Check concentration and privacy.
   One rep, account, or team must not silently drive the conclusion. Redact what a broad audience should not see.

Do not write findings back to a system or publish messaging without explicit approval.

## Output Contract

Return a brief enablement can act on without pretending it is a library:

- Scope and coverage: question, inclusion rules, eligible vs usable calls, account and rep breadth, metadata gaps
- Objection register: theme, buyer wording, count and denominator, slices, observed consequence, confidence, source IDs
- Evidence pack: short redacted excerpts or labeled paraphrases
- Action backlog: response type, owner, validation signal — not approved copy
- Blind spots: missing coverage, conflicts, and what would change the ranking

Do not produce the governed objection library. That is `objection-library-builder`.

## Quality Bar

- Recurring means at least two independent accounts, unless the user set a different rule.
- Buyer language, analyst interpretation, and recommendation are not the same sentence.
- Isolated signals stay visible without being promoted to themes.
- No invented outcomes, win rates, or approved responses.
- A reader can trace every material theme to source IDs.
