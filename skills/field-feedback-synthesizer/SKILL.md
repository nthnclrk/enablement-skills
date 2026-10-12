---
name: field-feedback-synthesizer
description: Synthesize multi-source field feedback into traceable themes, segment differences, evidence limits, and owner-ready actions for enablement, product marketing, sales leadership, or product. Use for a defined corpus of rep notes, manager feedback, call excerpts, surveys, CRM comments, or support signals. Route asset-demand analysis to content-gap-analysis, buyer outcome research to win-loss-synthesis, recurring objection extraction to call-insights-to-objections, and one-call coaching to call-review-coach.
---

# Field feedback synthesizer

Turn a defined set of field feedback into traceable findings and actions. Weigh independent sources and contradictory evidence before recommending a response.

**Fails.** "The field is telling us the security FAQ is broken. Rewrite it this week."

**Passes.** "17 mentions of security-review friction across 9 independent accounts and 3 source types. Observation: sellers cannot find or cannot use the current FAQ. Recommendation: confirm discoverability before rewriting. Confidence: medium — no usage denominator, and 8 of 17 mentions came from one Slack channel."

Asset-demand scoring is `content-gap-analysis`. Recurring call objections are `call-insights-to-objections`. Why deals closed is `win-loss-synthesis`. One recorded call is `call-review-coach`.

## Inputs

Ask only for the inputs that change the synthesis:

1. The decision or research question
2. Included sources, timeframe, teams, segments, and exclusions
3. Counting unit and denominator: records, respondents, accounts, opportunities, or calls
4. Confidentiality and quotation boundaries

If the corpus or question is unresolved, return an analysis plan. If only the denominator is missing, qualitative findings may still be useful; label coverage limits and avoid prevalence claims. Do not invent usage, win rates, or quotes.

## Supporting material

Read [references/feedback-coding-framework.md](references/feedback-coding-framework.md) before you code the corpus, score breadth, or write a recommendation. Skip it if the user already coded the set and wants implications from a finished register.

## Procedure

1. Frame the sample.
   Question, inclusion rules, collection method, counting unit, denominator, and known bias. Done when a reviewer can see what this corpus can and cannot represent.
2. Register sources.
   Stable record and origin IDs. Collapse copies of the same originating statement. Keep independent observations separate.
3. Calibrate the codebook.
   Pilot on a mixed subset. Resolve overlapping codes. Freeze before the full pass, or record every later change.
4. Code without collapsing layers.
   Theme, segment, stage, evidence type, and severity. Frequency, severity, evidence strength, and business impact stay separate dimensions.
5. Quantify with the right denominator.
   Show `n/N`, base sizes, and independent-source breadth. A convenience sample is not population prevalence.
6. Score breadth, then confidence.
   Independent units, source types, segments, and time periods. High frequency from one biased channel is not high confidence.
7. Look for what a ranking would hide.
   Minority, role-specific, regional, and contradictory signals. Report a cut only when the base supports it.
8. Interpret, then recommend.
   Observation, interpretation, root-cause hypothesis, and decision are four lines. Each material recommendation needs an owner, a validation step, and what would disconfirm it.

Do not distribute verbatim feedback or write findings into product, CRM, or planning systems without explicit approval of content, audience, and destination.

## What to return

For a narrow question, return the relevant findings and source limits. For a full synthesis, include:

- Scope and coverage: counting unit, denominator, source mix, exclusions, limits
- Decision summary that separates findings from hypotheses
- Theme table with `n/N`, independent-source breadth, severity, confidence, and evidence references
- Observation vs recommendation, labeled on every material theme
- Representative, minimally necessary excerpts
- Minority, contradictory, and missing signals
- Actions with owner, validation step, and decision point
- What the source mix cannot support

Do not produce a content backlog or an objection library from this pass.

## Quality bar

- Every material finding traces to included records without extra sensitive detail.
- Duplicate copies are not counted as independent sources.
- Breadth is scored; one loud channel cannot set the priority list.
- Observation and recommendation are not the same sentence.
- Root cause stays a hypothesis until evidence establishes it.
- No invented usage, win rates, or quotes.
