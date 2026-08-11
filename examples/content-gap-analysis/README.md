# Content Gap Analysis Exemplar

## Use Case

Prioritize content work without confusing low usage, poor discoverability, duplication, staleness, and genuinely missing assets.

## Fixtures

- [content_inventory.csv](content_inventory.csv): current assets, lifecycle state, ownership, audience, freshness, and replacement relationships
- [usage_signals.csv](usage_signals.csv): views, failed searches, and field requests
- [scope.md](scope.md): audience, stages, planning horizon, priorities, and evidence limits

All assets and signals are fictional.

## Natural Prompt

> Audit content_inventory.csv against usage_signals.csv and scope.md. Build a coverage view and a sequenced 90-day backlog using create, update, consolidate, or retire. Explain the evidence and confidence behind each recommendation, distinguish content quality from discoverability, and do not treat low views alone as a retirement case.

## Expected Output Excerpt

| Candidate | Action | Priority rationale | Confidence |
| --- | --- | --- | --- |
| Mid-market ROI template | Create | Fourteen field requests and no in-scope business-case asset; the enterprise calculator is not an approved substitute | High |
| Pricing Objection Sheet | Update | Seventeen requests, overdue review, and weak recent use indicate demand plus a quality/freshness problem | High |
| Security FAQ | Improve discoverability before rewriting | The approved asset is current, but 19 failed searches and only six views suggest findability friction | Medium |
| Discovery Guide v1 | Consolidate | A newer approved canonical version exists; redirect and archive only after owner review | High |

The deprecated webinar deck is a retirement candidate because it has a named replacement and no recent use—not because zero views alone prove low value.

## Review Checklist

- Coverage is filtered to the segment, roles, and stages in scope
- Each recommendation identifies the problem as missing, stale, duplicated, low-quality, or hard to find
- The enterprise-only calculator is not counted as adequate mid-market coverage
- Failed searches are not misread as content consumption
- Draft assets are not judged on adoption before publication
- Impact, frequency, strategic urgency, evidence confidence, and effort remain visible rather than being collapsed into an unconfirmed weighted score
- Each item is assigned to a decision tier with a reason; high-potential but weakly supported work is validated before build capacity is committed
- Ownership and a realistic target window appear in the backlog
- No asset is retired, relabeled, or republished automatically

## Deliberate Uncertainty

Usage covers only 90 days, search failures come from one repository, and no direct content-quality review was supplied. Where those limitations matter, the answer should recommend validation before irreversible action.
