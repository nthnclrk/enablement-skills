---
name: case-study-extractor
description: Extract and structure credible customer case studies from raw notes, transcripts, and outcome data. Use when asked to turn messy source material into proof-led narratives for sales and enablement use. Route broad feedback synthesis to field-feedback-synthesizer and slide packaging to one-pager-and-slide-outline.
---

# Case Study Extractor
Convert raw customer evidence into a concise case narrative that revenue teams can reuse confidently.

## Confirm Inputs First
- If a current `revenue-enablement-context` exists, use it first for ICP framing, persona naming, and proof-quality expectations.
- Confirm customer scope and permission constraints.
- Confirm source materials available.
- Confirm measurable outcomes and baseline context.
- Confirm primary audience and usage context.
- Confirm whether anonymization is required.
- If inputs are incomplete, ask for only the minimum missing items or proceed with labeled assumptions.

## Read The Right Reference
- Read [references/case-study-template.md](references/case-study-template.md) for structure, evidence grading, and quote handling.

## Default Workflow
1. Validate source reliability and permission boundaries.
2. Extract core arc:
   initial state, challenge, approach, results, and implications.
3. Separate measurable outcomes from directional claims.
4. Capture implementation details that make results believable.
5. Grade evidence strength and remove weak unsupported claims.
6. Define privacy mode:
   named customer, anonymized customer, or internal-only narrative.
7. Draft narrative variants:
   short proof snippet and full case summary.
8. Route adjacent work:
   For cross-account pattern synthesis, use field-feedback-synthesizer.
   For downstream one-pager or slide packaging, use one-pager-and-slide-outline.

## Tool Notes
- Optional tools may improve data quality:
  CRM exports, product analytics, customer success notes, and transcript tools.
- If tool access is unavailable, proceed with explicit evidence grading.

## Output Contract
- Case narrative with clear before-after structure.
- Outcome table with metric, baseline, current value, and timeframe.
- Quote shortlist with context notes.
- Evidence-grade notes for each major claim.
- Publication status:
  draft, approved, restricted.
- Anonymization profile and disclosure constraints.
- Assumptions list when source inputs were incomplete.

## What To Avoid
- Treating directional anecdotes as quantified outcomes.
- Publishing customer evidence before approval status is explicit.
- Dropping anonymization details that affect safe reuse.

## Quality Bar
- Story is outcome-led and commercially relevant.
- Claims are traceable to source evidence.
- Baseline and timeframe are explicit for quantified results.
- Weak claims are downgraded or removed.
- Narrative is reusable by sellers without major edits.
