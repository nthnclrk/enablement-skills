# Proposal RFP Governance Framework

Use this framework to keep proposal and RFP responses controlled and auditable.

## 1) Solicitation Control Log

| Document / Addendum | Version | Issued At | Authority / Precedence | Questions Due | Submission Due | Source And Locator | Reconciled By / At |
| --- | --- | --- | --- | --- | --- | --- | --- |

Use the buyer's stated precedence rules. If two documents conflict and precedence is unclear, mark the affected requirements blocked and raise a clarification question; do not choose silently.

## 2) Compliance Matrix Template

| Atomic Requirement ID | Parent ID | Buyer Requirement | Mandatory? | Source Document / Version | Addendum | Page / Section | Response Section Or Cross-Reference | Owner | Evidence Source | Verification | Status | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Split compound requirements into atomic child IDs so one satisfied clause cannot hide another unresolved clause. Keep the original parent and locator for auditability. One response may be cross-referenced from several atomic rows, but each requirement retains its own verification and status.

## 2a) Approved Source Map Template

| Source Asset | Owner | Approved Use | Last Reviewed | Restricted Notes |
| --- | --- | --- | --- | --- |

Use `verified`, `unverified`, or `not applicable` in the verification field. `Not applicable` requires an owner-approved rationale.

## 3) Hard-Stop Rules

Never infer, soften, or complete an answer from general knowledge when it concerns:

- mandatory compliance or eligibility requirements
- security, privacy, regulatory, accessibility, or legal representations
- certifications, insurance, financial standing, or corporate qualifications
- pricing, discounts, contract terms, warranties, SLAs, or indemnities
- implementation capacity, dates, staffing, integrations, or product roadmap commitments
- customer references, customer permission, performance claims, or measured outcomes

Use this internal placeholder instead:

`UNVERIFIED — owner: <name/role>; evidence required: <artifact>; due: <time>; submission impact: <blocker/risk>`

Do not copy that placeholder into a buyer-facing answer. If a mandatory item remains unverified at the final gate, mark the package `NOT READY` and surface the bid/no-bid or exception decision to the authorized owner.

An internal exception can authorize submission with a disclosed gap; it cannot make an unmet buyer requirement true, waive the buyer's rule, or justify an unsupported `yes` answer.

## 4) Review Gate Model

Use three gates unless the user requests a different model:

- Draft gate: confirm solicitation version, addenda reconciliation, structure, requirement coverage, owners, and internal placeholders.
- Challenge gate: recheck addenda, then stress-test claims, evidence, differentiation, exceptions, and risk.
- Final gate: confirm no unreconciled buyer update remains, then verify every mandatory item, required approval, attachment, format rule, and submission instruction.

## 5) Submission Readiness Checklist

- All requirements mapped in the compliance matrix
- All mandatory artifacts included
- Claims matched to evidence
- Approvals captured
- Delivery method and timing confirmed
- No unresolved hard-stop placeholder in buyer-facing content
- Authorized owner records `READY`, `READY WITH APPROVED EXCEPTION`, or `NOT READY`
- User explicitly approves any external send or upload

## 6) Role Definitions

- Proposal lead: owns timeline, risk, and final integration.
- Section owner: owns content quality and requirement coverage.
- Reviewer: challenges evidence, clarity, and evaluator alignment.
- Content steward: approves reusable source assets and restricted-use boundaries.

Only the authorized legal, security, finance, product, or executive owner may approve exceptions in their domain. The proposal lead coordinates those decisions but does not assume that authority.
