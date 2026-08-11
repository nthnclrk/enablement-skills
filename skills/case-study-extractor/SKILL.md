---
name: case-study-extractor
description: Extract credible customer stories, proof points, outcome claims, and approved quotes from notes, transcripts, and source data. Use when asked to turn customer evidence into an internal proof story, case-study draft, quote bank, or publication-ready evidence packet. Route cross-account pattern synthesis to field-feedback-synthesizer and final one-pager or slide packaging to one-pager-and-slide-outline.
---

# Case Study Extractor

Turn raw customer evidence into a useful story without overstating the result or its permission to be reused.

## Confirm Inputs First

- Use current context supplied by the user or `.enablement/context.md` when available for audience, terminology, and proof standards.
- Treat stale, inferred, or conflicted context as provisional. Never silently update shared context.
- Confirm the intended output, audience, channel, and whether the work is extraction, internal drafting, customer review, or approved publication.
- Confirm the source packet and stable locators: transcript, notes, customer communication, CRM or success record, product data, and outcome calculations as available.
- Confirm metric definition, baseline or comparison, result, period, population, calculation, and known attribution limits.
- Confirm permission separately for customer name, logo, each quote, each metric or claim, anonymized use, audience, channel, and expiry or review date.

Ask only for missing inputs that affect claim strength or reuse. If permission is absent or unclear, keep the output internal and mark every external-use field as `Not approved` or `Unknown`.

Use assumptions only for reversible planning choices, such as narrative order. Keep source facts, metrics, quotes, commitments, dates, approvals, requirements, identities, and customer or product claims unknown until verified.

## Read The Right Reference

- Read [references/case-study-template.md](references/case-study-template.md) for the evidence ledger, permission matrix, and default story formats.

## Default Workflow

1. Set the evidence and permission boundary.
   Inventory sources, access limits, intended audience, and reuse permissions before drafting. Treat evidence strength and permission to publish as separate decisions.
2. Extract evidence units.
   Capture the initial state, problem, intervention, adoption, result, and significance with source IDs and locators. Preserve conflicting accounts.
3. Validate quantified outcomes.
   Record the metric definition, baseline or comparison, result, period, population, calculation, and source. State attribution limits; do not turn correlation or customer opinion into a causal claim.
4. Handle quotes exactly.
   Keep source wording verbatim with speaker, date, context, and locator. Put paraphrases outside quotation marks and never reconstruct a quote from a summary.
5. Classify each claim.
   Use `Verified`, `Supported`, `Anecdotal`, or `Unverified` based on the reference rules. Keep publication status separate.
6. Build the story.
   Connect challenge, approach, and outcome only where the evidence supports the link. Retain constraints, implementation conditions, and counterevidence that affect transferability.
7. Produce the requested safe reuse format.
   Choose the smallest branch that satisfies the request: quote bank, proof-point packet, internal case narrative, customer-review draft, or publication evidence packet. Produce named, anonymized, customer-facing, or publication-ready copy only within the recorded permission boundary.
8. Route adjacent work.
   Use field-feedback-synthesizer for cross-account patterns and one-pager-and-slide-outline for final packaging.

## Tool Notes

- CRM, product analytics, customer-success records, and transcript tools can improve traceability; access does not make a claim authoritative by itself.
- Minimize personal or confidential data. Redact material that is not needed for the agreed output.
- Do not contact a customer, request approval, publish, or write evidence into a shared system without explicit user authorization.

## Output Contract

Every branch includes `Use Status`, source locators, the minimum relevant evidence and permission fields, and gaps that block the requested use.

- `Quote bank`: exact wording, speaker role, context, locator, quote-specific permission, and safe-use notes.
- `Proof-point packet`: outcome table plus the relevant claim-ledger and permission rows.
- `Internal case narrative`: starting state, challenge, approach, adoption conditions, outcomes, significance, and supporting claim ledger.
- `Customer-review draft`: review copy plus every claim, quote, identity, logo, audience, and channel permission requiring confirmation.
- `Publication evidence packet`: final narrative, outcome table, quote bank, claim ledger, and complete permission matrix.

Do not produce the larger dossier when a narrower branch satisfies the request.

## Quality Bar

- Make every material claim and quote traceable to a source and locator.
- Keep evidence strength separate from customer approval and channel permission.
- Include the definition, baseline or comparison, period, population, and attribution limit for quantified claims.
- Use exact quotes only; label paraphrases and directional observations accurately.
- Preserve qualifications that affect whether the result is repeatable or representative.
- Never publish or imply approval when identity, quote, metric, claim, audience, or channel permission is unknown.
- Make the default internal version useful to a seller without making it unsafe for review.
