---
name: call-insights-to-objections
description: Analyze a defined set of sales calls or notes and produce an evidence-backed objection brief by segment, persona, or stage. Use for recurring pushback, proof gaps, and message patterns across multiple conversations. Use call-review-coach for one-call coaching, win-loss-synthesis for outcome-cause research, and objection-library-builder for the governed response asset.
---

# Call Insights To Objections

Turn conversation evidence into prioritized objection themes and specific enablement actions.

## Confirm Inputs First

- Use current context supplied by the user. If `.enablement/context.md` is available, read only the relevant ICP, persona, stage, and messaging sections. Treat stale, inferred, or conflicted context as provisional and never update it silently.
- Confirm the question this analysis must answer, the time window, included call types, segments, personas, stages, and available call count.
- Confirm the source format and metadata coverage: call ID, date, call type or stage, segment, persona, rep or team, and outcome when available.
- Confirm whether the audience needs a diagnostic brief, a prioritized action backlog, or inputs for a governed objection library.
- Ask only for missing inputs that would materially change the analysis. Do not force shared-context setup for a self-contained source set.

Use assumptions only to frame reversible analysis choices, such as a proposed grouping. Do not assume source facts, metrics, quotes, commitments, dates, approvals, requirements, outcomes, or customer and product claims. Leave them unknown until verified.

## Read The Right Reference

- Read [references/objection-coding-framework.md](references/objection-coding-framework.md) before coding objections, counting themes, or assigning evidence confidence.
- Read [references/source-system-guide.md](references/source-system-guide.md) when pulling evidence from call platforms, shared notes, or message exports.

## Default Workflow

1. **Define the analysis frame.** Record the decision question, inclusion and exclusion rules, time window, slices, source coverage, and unit of analysis before coding.
2. **Build the evidence register.** Give every eligible conversation a stable source ID and retain the metadata needed to trace each finding. Treat missing or unusable content as missing coverage, not as an objection-free call.
3. **Code without collapsing too early.** Separate explicit objections, implied concerns, questions, and seller interpretations. Tag the objection type, buyer language, response, observed consequence, and plausible root cause.
4. **Normalize the counts.** Count a theme once per conversation for prevalence; report additional instances separately when repetition matters. Show the eligible-call denominator and source coverage for every compared slice.
5. **Cluster and challenge themes.** Merge equivalent wording only when the underlying buyer concern is the same. Keep distinct concerns separate even when the recommended response overlaps.
6. **Assess impact and confidence.** Base impact on observed consequences such as delay, extra validation, concessions, or a stated decision. Treat root cause and deal impact as hypotheses when the evidence does not establish them.
7. **Choose an action.** For each priority theme, select the smallest useful response: message clarification, proof asset, product feedback, seller practice, process change, or further research. Name an owner and validation signal; propose a date only when it is not presented as a commitment.
8. **Check bias and privacy.** Test whether one rep, account, team, or overrepresented slice drives the conclusion. Redact personal or confidential details and keep raw evidence access aligned with its source permissions.

## Tool Notes

- Work from transcripts, detailed notes, or structured exports; do not require proprietary platform scores.
- Preserve source IDs and as-of dates through analysis. Use excerpts only where access and confidentiality rules permit.
- Do not write findings back to a system, publish messaging, or attribute performance to an individual without explicit approval and appropriate evidence.

## Output Contract

- `Scope And Coverage`: decision question, inclusion rules, eligible and usable calls, unique account and rep or team coverage, metadata gaps, and represented slices.
- `Objection Register`: theme, buyer wording summary, call count and denominator, affected slices, observed consequence, confidence, and source IDs.
- `Evidence Pack`: short, redacted excerpts or precise paraphrases, clearly labeled, with source metadata.
- `Action Backlog`: recommended response, rationale, owner, priority, validation signal, and any dependency.
- `Blind Spots`: missing coverage, conflicts, likely biases, and questions that require more evidence.

## Quality Bar

- Make every material finding traceable to source evidence and distinguish quotes from paraphrases.
- Do not present uneven samples, missing transcripts, or repeated mentions within one call as broad prevalence.
- Separate observed buyer language, analyst interpretation, root-cause hypothesis, and recommendation.
- Compare segments, personas, or stages only when their denominators and source quality are visible.
- Keep isolated signals visible without promoting them to recurring themes.
- Produce actions specific enough to assign, test, and review.
