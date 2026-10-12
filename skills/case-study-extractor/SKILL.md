---
name: case-study-extractor
description: Extract credible customer stories, proof points, outcome claims, and approved quotes from notes, transcripts, and source data. Use when asked to turn customer evidence into an internal proof story, case-study draft, quote bank, or publication-ready evidence packet. Route cross-account pattern synthesis to field-feedback-synthesizer and final one-pager or slide packaging to one-pager-and-slide-outline.
---

# Case study extractor

Extract customer evidence that a seller or writer can reuse with its limits and permissions intact.

A measured current value can be reported with its definition, period, and population. A change claim also needs a comparable baseline. Reconstructed statements are paraphrases, not quotes.

**Honest.** "In a three-customer pilot, unresolved handoffs fell 28% in 60 days. Directional. Not a benchmark. Named use requires customer approval we do not have."

**Overclaim.** "Customers cut delivery delays by 28% with MosaicOps."

Default to internal. Mark every external-use field `Not approved` or `Unknown` until you have the permission.

## Inputs

Ask only for what changes claim strength or reuse:

1. Intended output and audience
2. Source packet with locators
3. Metric definition, baseline, period, population
4. Permission for name, logo, each quote, each metric, channel, and expiry

Do not invent numbers, quotes, or approvals.

## Supporting material

Read [references/case-study-template.md](references/case-study-template.md) for claim statuses, the permission matrix, and story shape. Skip it if you are only extracting a quote bank.

## Procedure

1. Set the boundary.
   Sources, audience, and reuse permissions before any narrative. Strength and permission stay separate.
2. Extract units.
   Starting state, problem, intervention, adoption, result. Source IDs on each. Keep conflicts.
3. Validate numbers.
   Check definition, result, period, population, and calculation. Require a comparable baseline for improvement claims, and check what else changed before attributing the result to the intervention. Retain credible qualitative evidence when no defensible metric exists.
4. Handle quotes exactly.
   Verbatim, with speaker, date, context, locator. Paraphrases stay outside quotation marks.
5. Classify claims: `Verified`, `Supported`, `Anecdotal`, `Unverified`. Publication status is a different field.
6. Tell the story only where the evidence links challenge, approach, and outcome. Keep the conditions that limit transfer.
7. Produce the smallest requested branch: quote bank, proof-point packet, internal narrative, customer-review draft, or publication packet.

For cross-account patterns use `field-feedback-synthesizer`. For final packaging use `one-pager-and-slide-outline`.

Do not contact a customer, request approval, or publish without explicit user authorization.

## What to return

Every branch includes use status, locators, permission fields, and the gaps that block the requested use.

- Quote bank, proof-point packet, internal narrative, customer-review draft, or publication packet
- Never the larger dossier when a narrower branch is enough

## Quality bar

- Every material claim and quote has a locator.
- Numbers include definition, period, population, and attribution limit; change claims also include a comparable baseline.
- Quotes are exact. Paraphrases are labeled.
- Unknown permission never reads as approved.
- The internal version is useful to a seller and still safe for review.
