---
name: content-gap-analysis
description: Audit revenue enablement content coverage and prioritize the highest-impact gaps by role, stage, and use case. Use when asked to review existing assets, identify missing or stale content, or produce a prioritized content backlog. Route content creation to one-pager-and-slide-outline, battlecard-builder, or talk-track-builder.
---

# Content Gap Analysis

Identify the most important content gaps and prioritize them by business impact rather than volume.

## Confirm Inputs First

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Confirm the content inventory scope and source.
- Confirm which roles and teams the audit should cover.
- Confirm stages or lifecycle moments to map against.
- Confirm known recurring field requests and blockers.
- Confirm evaluation horizon (this quarter, half, annual planning).
- If inputs are incomplete, ask for only the minimum missing items. Use labeled assumptions only for reversible audit scope or backlog sequencing; keep asset facts, usage signals, ownership, dates, approvals, and retirement decisions unknown until verified.

## Read The Right Reference

- Read [references/content-gap-prioritization.md](references/content-gap-prioritization.md) for scoring rules and output format.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the inventory is pulled from a content repository, wiki, or field-signal channel.

## Default Workflow

1. Build a clean inventory of current assets with owner and freshness metadata.
2. Map each asset to role, stage, and job-to-be-done coverage.
3. Identify high-friction moments with weak or missing content support.
4. Classify the issue before scoring:
   missing, stale, duplicated, hard to find, underused, or wrong format.
5. Rate value using anchored impact, frequency, and strategic-alignment criteria. Keep the dimensions visible; do not combine them with unconfirmed weights.
6. Grade evidence confidence separately; do not let weak evidence inflate or erase potential value.
7. Assign a decision tier: mandatory, commit now, validate first, plan, or monitor. State the reason and any unresolved evidence requirement.
8. Choose the root-cause action: create, update, consolidate, retire, improve discoverability, or reinforce distribution.
9. Sequence within priority tiers using deadline, dependency, effort, and owner capacity.
10. Build a backlog with owners, validation steps, and expected outcome metrics.
11. Route adjacent work:
   For synthesis of raw field notes, use field-feedback-synthesizer.
   For creating prioritized assets, use the relevant content production skill.

## Tool Notes

- Optional tools can speed inventory quality but are not required:
  docs repositories, Notion, CMS exports, LMS usage reports, and call libraries.
- Use [references/source-system-guide.md](references/source-system-guide.md) for minimum fields, gap-cause classification, and safe writeback boundaries.
- If tool exports are unavailable, proceed with manual inventory and labeled confidence.

## Output Contract

- Coverage map by role, stage, and job-to-be-done.
- Prioritized gap backlog with dimension ratings, decision tier, and rationale.
- Recommended action type per gap:
  create, update, consolidate, retire, improve discoverability, or reinforce distribution.
- Gap cause tag per item:
  missing, accuracy/freshness, format/quality, duplication, discoverability, distribution/adoption, or mixed.
- Separate value dimensions, evidence confidence, and effort estimate. Use a composite score only when the organization has supplied or confirmed the weighting and decision rules.
- Ownership suggestions and target completion windows.
- Assumptions and confidence notes when source data is partial.

## What To Avoid

- Calling everything a content gap when discovery/distribution is the real issue.
- Treating low usage as low quality without discoverability checks.
- Prioritizing by stakeholder volume instead of business impact and frequency.
- Dividing by effort in a way that makes easy, low-value work outrank important work.
- Presenting arbitrary weights or cutoffs as an established prioritization policy.
- Recommending retirement from low usage alone.

## Quality Bar

- Prioritization reflects impact and frequency, not stakeholder volume.
- Value, evidence confidence, and delivery effort remain separate and visible.
- Every priority tier can be traced to evidence, materiality, urgency, and the stated decision rule; no unexplained weighted score determines the backlog.
- Coverage model is explicit and reproducible.
- Recommendations include realistic owners and sequence.
- Low-confidence findings are clearly labeled.
- Output can be used directly for quarterly planning.
