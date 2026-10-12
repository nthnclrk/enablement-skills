# Proposal governance judgment

Use this when you are deciding bid/no-bid, building the matrix, or calling readiness. The skill body has the procedure.

## Bid/no-bid before writing

A writing plan is wasted work if a mandatory disqualifier is already true.

**Fails.** Kick off drafting while security "looks into" a required certification.

**Passes.** "The required certification is unmet. The bid owner must obtain a buyer-approved exception under the solicitation rules or decline. Security confirms the evidence; it cannot waive the buyer's requirement."

Test: mandatory disqualifiers, buyer access, solution fit, delivery capacity, economics, evidence readiness, required effort, decision authority.

If two documents conflict and precedence is unclear, block the affected requirements and raise a clarification. Do not choose silently.

## Atomic requirements

Split compound clauses. One satisfied sentence cannot hide another unmet shall.

Each row keeps parent ID, source document, version, addendum, page or section, response location or cross-reference, owner, evidence, verification, and status.

One response may support several rows. Each row still gets its own verification.

Verification is `verified`, `unverified`, or `not applicable` with an owner-approved rationale.

## Hard stops

Never infer, soften, or complete an answer from general knowledge when it concerns:

- mandatory compliance or eligibility
- security, privacy, regulatory, accessibility, or legal representations
- certifications, insurance, financial standing, or corporate qualifications
- pricing, discounts, terms, warranties, SLAs, or indemnities
- implementation capacity, dates, staffing, integrations, or roadmap
- customer references, permission, or measured outcomes

Internal placeholder:

`UNVERIFIED — owner: <role>; evidence required: <artifact>; due: <time>; submission impact: <blocker/risk>`

Do not copy that placeholder into a buyer-facing answer. An internal exception can authorize submission with a disclosed gap. It cannot make an unmet requirement true or justify an unsupported yes.

## Review gates

Use the review stages the team can staff, preserving the relevant checks:

- Draft: version, addenda, structure, coverage, owners, placeholders
- Challenge: recheck addenda, then stress-test claims, evidence, exceptions, and risk
- Final: no unreconciled buyer update; every mandatory item, approval, attachment, format rule, and delivery instruction

## Readiness verdict

Authorized owner records `READY`, `READY WITH APPROVED EXCEPTION`, or `NOT READY`.

The package is not ready while a mandatory answer, artifact, or approval is unverified. An exception to a mandatory buyer requirement needs evidence that the buyer's authorised process accepts it. Internal approval alone cannot establish compliance. Do not send or upload without explicit user approval.

## Roles

- Proposal lead: timeline, risk, final integration. Does not assume legal, security, finance, or product authority.
- Section owner: content quality and coverage
- Reviewer: challenges evidence and evaluator alignment
- Content steward: reusable sources and restricted-use boundaries

## Optional forms

Use these only when the user wants a scanned log.

Solicitation control: document, version, issued at, precedence, questions due, submission due, source, reconciled by.

Matrix: atomic ID, parent, requirement, mandatory, source/version, addendum, locator, response or cross-reference, owner, evidence, verification, status.

Source map: asset, owner, approved use, last reviewed, restrictions.
