---
name: proposal-rfp-orchestrator
description: Orchestrate proposal and RFP response work across owners, deadlines, compliance, and review cycles. Use when asked to coordinate an RFP response, build a proposal workplan, map requirements to owners, or run structured proposal reviews. For single-meeting briefing needs, use executive-briefing-builder or account-brief-builder.
---

# Proposal RFP orchestrator

Help a proposal lead decide whether to bid, assign the response work, and verify every requirement before submission.

A good response process names the disqualifier, the owner of every atomic requirement, and the gate that stops an unverified yes. If the user wants a meeting brief, use `executive-briefing-builder` or `account-brief-builder`.

**Bid/no-bid first.** "The buyer requires SOC 2 Type II; our evidence covers Type I. The bid owner must obtain an explicit buyer-approved exception under the solicitation rules or decline. Internal approval cannot waive the buyer's requirement."

**Writing sprint.** "We'll figure out security in the challenge review. Start the executive summary."

If a mandatory answer is still a guess, the package is not ready.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the workplan:

1. Request type, solicitation ID, authoritative version, addenda, and precedence rules
2. Question and submission deadlines with timezones
3. Buyer requirements, evaluation criteria, and mandatory attachments
4. Contributors, approved content sources, and required legal, security, finance, or executive approvals

If a planning input is missing, label the workplan assumption. Never use an assumption to answer a mandatory requirement or to make a factual, legal, security, commercial, or product claim.

## Supporting material

Read [references/proposal-governance-framework.md](references/proposal-governance-framework.md) before building the compliance matrix, review gates, or readiness verdict.

## Procedure

1. Control the solicitation, then decide bid/no-bid.
   Confirm the authoritative version and addenda. Test mandatory disqualifiers, buyer access, solution fit, delivery capacity, economics, evidence readiness, and effort. Done when a named owner has bid, no-bid, or a dated exception path. Do not start section drafts before that.
2. Build the requirement matrix.
   Split compound clauses into atomic children. Keep parent ID, version, addendum, locator, response location, owner, proof, and verification. Cross-reference shared answers. Done when every buyer shall/must has its own row.
3. Assign owners and sources.
   Writer, SME, approver, and approved source of truth for each section. Restricted assets stay restricted.
4. Shape the response strategy.
   Buyer problems, win themes, proof you actually have, and gaps that need escalation. Buyer language, not internal jargon.
5. Apply hard stops.
   Unverified mandatory answers stay blocked with owner, evidence required, and due time. Never convert a placeholder into buyer-facing text.
6. Run the gates.
   Use the review stages the team can staff: draft, challenge, and final where appropriate. Reconcile addenda and test compliance at each relevant stage. An internal exception does not waive a mandatory buyer requirement; record the buyer's authorised acceptance.
7. Package for submission.
   Compliance, formatting, approvals, delivery instructions. Mark READY, READY WITH APPROVED EXCEPTION, or NOT READY. Do not send or upload without explicit user approval.

## What to return

For a matrix or readiness review, return that deliverable and its blockers. For a full response plan, include:

- Bid/no-bid decision with owner and disqualifiers
- Solicitation-control log and atomic requirement matrix
- Section owners, timeline, and source map
- Win-theme and proof map, including gaps
- Review gates with owners
- Submission readiness with go/no-go and unresolved hard stops
- Open questions and labeled workplan assumptions

Do not write unverified answer text, invent certifications or references, or produce a meeting brief instead of a response plan.

## Quality bar

- Bid/no-bid is explicit before drafting advice.
- Every atomic requirement has a parent, owner, verification state, and status.
- Unsupported claims stay blocked, not softened into yes.
- No invented qualifications, pricing, SLAs, capacity, or customer outcomes.
- The package is not submission-ready while a mandatory item is unverified.
- No external send or upload without explicit approval.
