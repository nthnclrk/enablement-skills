---
name: call-insights-to-objections
description: Extract recurring objection patterns from call transcripts and call notes, then convert them into evidence-backed enablement priorities. Use when the user asks to analyze call sets, identify common pushback themes, or prioritize objection training updates by segment, persona, or deal stage. For coaching a single call, use call-review-coach. For writing the final objection messaging asset, use objection-library-builder.
---

# Call Insights To Objections

Convert raw call evidence into prioritized objection insights that enablement and PMM teams can act on.

## Confirm Inputs First

Confirm the minimum required inputs before analysis:

- If a current revenue-enablement-context exists, use it first for ICP, persona, stage, and message guardrails. If not, ask for only the highest-impact missing context.
- Transcript or note source and time window
- Segment and persona scope
- Call types in scope (discovery, demo, pricing, procurement, renewal)
- Minimum sample expectation or available call count
- Desired output audience (enablement, PMM, sales leadership)

If any of these are missing, ask for only the missing items. If the user prefers speed, proceed with labeled assumptions.

## Read The Right Reference

- Read [references/objection-coding-framework.md](references/objection-coding-framework.md) before coding objections or assigning confidence tiers.
- Read [references/source-system-guide.md](references/source-system-guide.md) when evidence is being pulled from call platforms, shared notes, or Slack exports.

## Default Workflow

1. Define scope and segmentation.
Lock the analysis window, segment, and persona scope so counts are interpretable.

2. Prepare source evidence.
Normalize transcripts or notes into comparable units with call metadata (date, segment, stage, outcome).

3. Code objections using the reference taxonomy.
Tag explicit and implied objections, then assign root-cause and severity tags.

4. Quantify and cluster.
Rank by frequency, deal impact, and recurrence across segments. Collapse near-duplicate phrasings into a single theme.

5. Attach evidence.
Provide concrete snippets or examples for each high-priority objection theme.

6. Translate insights into actions.
Propose specific enablement updates: talk-track revisions, battlecard updates, drills, and manager coaching prompts.

7. Check weighting and bias.
Avoid over-weighting loud reps, one team, or a narrow call slice when generalizing themes.

8. Flag confidence and blind spots.
Show where sample size, source quality, or segment coverage weakens confidence.

## Tool Notes

- Tool-agnostic default: work from transcripts, notes, or CSV exports.
- Use [references/source-system-guide.md](references/source-system-guide.md) for minimum metadata, source weighting, and safe handoff boundaries.
- Optional CI tools can scale the workflow, but keep the analysis independent of any one platform.
- Do not require proprietary scoring features; treat platform scores as inputs, not ground truth.

## Output Contract

Default output includes:

- Objection theme table: theme, frequency, severity, affected personas/stages, confidence
- Evidence pack: representative snippets per theme
- Top enablement actions: owner, expected impact, suggested timeline
- Assumptions and data quality caveats

## Quality Bar

- Themes are distinct, not duplicate phrasings.
- Claims are traceable to real call evidence.
- Recommendations are concrete enough to execute this week.
- Confidence levels are explicit and justified.
- Output clearly separates observation, interpretation, and recommendation.
- Weight conclusions by source breadth so one noisy slice does not dominate the output.
