# Forecast Risk Brief Exemplar

## Use Case

Prepare a weekly enterprise forecast review from CRM-style data while preserving conflicts between seller-entered fields and supporting evidence.

## Fixtures

- [opportunities.csv](opportunities.csv): six opportunities with stage history, activity, next steps, stakeholders, slips, and procurement state
- [context.md](context.md): review window, operating definitions, manager notes, and known data conflicts

All names and values are fictional.

## Natural Prompt

> Review opportunities.csv and context.md for the 24 July enterprise forecast meeting. Summarize forecast coverage, classify each deal by risk, identify concentration and likely slippage, and propose the smallest useful intervention plan with owners and review points. Label any generated date as proposed. Show conflicts and missing evidence rather than choosing the most optimistic source.

## Expected Output Excerpt

| Opportunity | Category | Risk | Evidence-led interpretation |
| --- | --- | --- | --- |
| BluePeak Logistics | Commit | High | Technical Validation has been unchanged since 18 May, the next step has no buyer owner or date, stakeholder coverage is single-threaded, and the deal has slipped twice. The manager's “verbal yes” does not resolve those gaps. |
| Evertrail Energy | Commit | Indeterminate | Recent movement supports progress, but CRM and buyer email conflict on whether redlines are active; without a verified commercial path or relevant stage-to-close baseline, the stated timing cannot be classified defensibly. |

At least AUD 410,000 of the AUD 1.02 million commit pool is high risk. That is a decision-relevant downside view, not a prediction that the deal will be lost.

## Review Checklist

- Commit, best-case, and upside totals reconcile to the CSV
- Stage aging uses last stage change, not generic last modified time
- Risk and evidence confidence are treated as separate concepts
- Deals with unresolved critical conflicts or unknowns remain Indeterminate and are reported separately
- Every low, moderate, or high tier identifies the decisive evidence and rule; no generic weighted score or stage-aging cutoff determines the classification
- Vague or blank next steps are not upgraded by assumption
- CRM fields remain the base record, while manager and call notes can challenge their reliability
- Each intervention has a named owner, confirmed or proposed review point, date state, and verification signal
- No CRM field changes are proposed as if already approved

## Deliberate Uncertainty

ForestLabs has no next step and unknown procurement status. BluePeak and Evertrail contain conflicting evidence. A strong response downgrades confidence or asks for specific verification rather than silently resolving those gaps.
