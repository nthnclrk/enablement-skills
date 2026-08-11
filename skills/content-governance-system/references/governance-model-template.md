# Governance Model Template

Use this model to define a maintainable enablement content system.

## 1) Scope And Decision Rights

- In-scope content types:
- Out-of-scope content types:
- Final decision owner:
- Escalation path:
- Content approval authority:
- System-write authority:

## 2) Taxonomy And Metadata

| Field | Purpose |
| --- | --- |
| Stable content ID | Preserve identity across systems and versions |
| Canonical location | Identify the authoritative content object |
| Role / stage / job | Support findability and intended use |
| Content owner | Own accuracy and lifecycle decisions |
| Evidence or claim owner | Approve domain-specific claims |
| Version and effective date | Prevent silent divergence |
| Publication status | `draft`, `in_review`, `approved`, `published`, or `retired` |
| Review status | `current`, `due`, `overdue`, or `blocked` |
| Approved audience | Separate internal, partner, and customer-safe use |
| Approved by / approved at | Preserve the approval record |
| Last reviewed / review trigger | Show freshness and why review is due |

## 3) Publication And Review Policies

### Publication Status

| State | Entry Criteria | Allowed Transition | Exit Evidence |
| --- | --- | --- | --- |
| `draft` | Owner and scope assigned | `in_review` | Review package and source evidence complete |
| `in_review` | Required reviewers and version fixed | `draft` or `approved` | Approval decision, comments, approver, and date recorded |
| `approved` | All required claim and compliance approvals recorded | `published` or `draft` | Publish authorization or revision decision recorded |
| `published` | Approved version published to the canonical location | `in_review` or `retired` | Live version, audience, publisher, and publish date recorded |
| `retired` | Owner approved retirement and dependencies were checked | None, except a new version starts at `draft` | Archive/redirect location, successor, and retirement date recorded |

### Review Status

| State | Meaning | Exit Evidence |
| --- | --- | --- |
| `current` | No review trigger is active and approved validity has not ended | New trigger or due condition recorded |
| `due` | A review trigger fired and the conditional review window remains open | Review completed or due window elapsed |
| `overdue` | The conditional review window elapsed without a completed decision | Review decision and follow-up recorded |
| `blocked` | Review cannot finish because evidence, approval, or ownership is missing | Blocker resolved and review resumes |

A published asset retains `publication_status: published` while its review status is `due`, `overdue`, or `blocked`. Review status must not make a live asset disappear from published-content denominators.

Set target times by content risk, deadline, change rate, and available owner capacity. Legal, security, pricing, product, or time-bound claims should use source-change or validity triggers; do not assign one universal review interval.

## 4) Approval And Write Boundary

Content approval and system mutation are separate decisions:

- A claim owner may approve wording without authorizing publication.
- A publisher may implement only the approved version, audience, location, and permissions.
- An agent may draft the matrix, migration plan, and proposed changes, but must not publish, unpublish, relabel, archive, move, or change access without explicit user authorization for the resolved targets.
- An urgent exception must record scope, approver, expiry or review trigger, and follow-up owner. It cannot bypass a mandatory legal, security, or compliance approval.
- Distribution copies inherit the canonical content ID and version. Changes belong in the canonical source, then propagate through the approved process.

## 5) Ownership Matrix

| Activity | Responsible | Approver | Consulted | Informed |
| --- | --- | --- | --- | --- |
| New request triage |  |  |  |  |
| Content drafting |  |  |  |  |
| Messaging QA |  |  |  |  |
| Compliance QA |  |  |  |  |
| Publish and distribution |  |  |  |  |
| Refresh and retirement |  |  |  |  |

Add separate rows for `claim approval`, `publish authorization`, and `system write` when different people hold those rights.

## 6) Operating Metrics

- `Current-content rate = live published assets with review_status current / all live published assets in scope`.
- `Orphan rate = published assets without an active owner / published assets in scope`.
- `Review completion rate = due reviews completed by their conditional SLA / reviews due`.
- `Canonical coverage = distributed assets linked to a canonical content ID and version / distributed assets in scope`.
- Track adoption or performance only when audience eligibility and usage definitions are available.
