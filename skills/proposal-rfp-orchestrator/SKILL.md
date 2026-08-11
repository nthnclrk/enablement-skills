---
name: proposal-rfp-orchestrator
description: Orchestrate proposal and RFP response work across owners, deadlines, compliance, and review cycles. Use when asked to coordinate an RFP response, build a proposal workplan, map requirements to owners, or run structured proposal reviews. For single-meeting briefing needs, use executive-briefing-builder or account-brief-builder.
---

# Proposal RFP Orchestrator

Create a controlled response process that keeps the team compliant, on time, and focused on the buyer's evaluation criteria.

## Confirm Inputs First

Collect the minimum required inputs:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Request type (`proposal`, `RFP`, or both)
- Solicitation ID, current document version, issue date, addenda, precedence rules, and authoritative source
- Question and submission deadlines with timezones, plus mandatory milestones
- Buyer-issued requirements, evaluation criteria, submission instructions, and mandatory attachments
- Available contributors and owners
- Approved content sources and reusable answer libraries
- Known differentiators, risks, constraints, and required legal, security, finance, or executive approvals

If planning inputs are missing, ask for the smallest missing set or use labeled assumptions for the workplan only. Never use assumptions to answer a mandatory requirement or make a factual, legal, security, commercial, customer, or product claim.

## Read The Right Reference

- For compliance matrix, review gates, and role definitions, read [references/proposal-governance-framework.md](references/proposal-governance-framework.md).

## Default Workflow

1. Control the solicitation and decide bid/no-bid.
Confirm the authoritative version and addenda, then assess mandatory disqualifiers, relationship and buyer access, solution fit, delivery capacity, economics, evidence readiness, required effort, and who has decision authority.

2. Build the requirement matrix.
Decompose compound clauses into atomic child requirements. Retain parent ID, document version, addendum, page or section, response location, owner, proof, and verification state. Use explicit cross-references when one response supports more than one requirement.

3. Assign section owners and source inputs.
Set the writer, SME, approver, and source of truth for each section.

4. Shape the response strategy.
Define the main buyer problems, win themes, proof points, and any gaps that need escalation.

5. Apply hard stops.
Mark unsafe assumptions and unverified mandatory answers as blocked. Assign an owner and deadline; never convert a placeholder into final response text.

6. Run structured reviews.
Use a draft review, challenge review, and final proofing pass with clear gates. Reconcile new addenda before each gate and show what changed.

7. Finalize the submission package.
Check compliance, formatting, approvals, and delivery instructions. Do not send or upload the package without the user's explicit approval.

## Tool Notes

- `Docs/Office suites` are useful for collaborative drafting and version control.
- `Project tools` are useful for owner tracking and deadline management.
- `Knowledge bases` are useful for reusable approved content blocks.

Keep workflow tool-agnostic when these systems are unavailable.

## Output Contract

Deliver:

1. Response strategy summary
2. Solicitation-control log and atomic requirement matrix
3. Section owner plan and timeline
4. Win-theme and proof-point map
5. Approved-content source map and reuse rules
6. Review plan with gates and owners
7. Submission readiness checklist with go/no-go status and unresolved hard stops
8. Open questions and assumptions

## Quality Bar

- Every atomic requirement appears once in the matrix with parent and source traceability, a specific owner, verification state, and response status. Shared answers are cross-referenced rather than duplicated.
- The response uses buyer language, not internal jargon.
- Proof points are current and tied to approved sources.
- Review buffers are built in before the deadline.
- Unsupported claims and stale content are removed; missing mandatory items remain visible as blockers.
- Do not fabricate qualifications, certifications, references, or customer outcomes.
- Do not mark the response submission-ready while a mandatory answer, artifact, or approval is unverified.
- Do not send, upload, or submit externally without explicit user approval.
