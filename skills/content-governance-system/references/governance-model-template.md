# Governance model judgment

Use this when you are designing the weekly operating model. The skill body has the procedure. This is not a content inventory.

## Weekly cadence first

If you cannot name the weekly job, the rest of the model will not run.

**Fails.** "Stand up a content council. Review all 400 assets quarterly. Clean the taxonomy first."

**Passes.** "Wednesday, 45 minutes. Owners clear due and overdue reviews. Intake owner picks one request. Publishers ship only approved versions. Exception queue is time-boxed. Done when overdue reviews are owned, not when every asset is perfect."

Scale the cadence to the people who will actually show up. Unused councils are failed governance.

## Two axes

Keep publication and review independent.

Publication: `draft` → `in_review` → `approved` → `published` → `retired`.

Review: `current`, `due`, `overdue`, `blocked`.

A published asset stays `published` while review is `due`, `overdue`, or `blocked`. Review status must not remove a live asset from published-content denominators.

| Publication | Entry | Allowed next | Exit evidence |
| --- | --- | --- | --- |
| `draft` | Owner and scope assigned | `in_review` | Review package complete |
| `in_review` | Reviewers and version fixed | `draft` or `approved` | Decision, approver, date |
| `approved` | Required claim and compliance approvals recorded | `published` or `draft` | Publish authorization or revision |
| `published` | Approved version at the canonical location | `in_review` or `retired` | Live version, audience, publisher, date |
| `retired` | Owner approved retirement; dependencies checked | New version starts at `draft` | Archive or redirect, successor, date |

Set review targets by risk, deadline, change rate, and owner capacity. Legal, security, pricing, and product claims use source-change or validity triggers. Do not assign one universal review interval.

## Approval is not publish permission

A claim owner may approve wording without authorizing publication. A publisher may implement only the approved version, audience, location, and permissions. An agent may draft the matrix and the change set, but must not publish, unpublish, relabel, archive, move, or change access without explicit authorization for the resolved targets.

An urgent exception records scope, approver, expiry or review trigger, and follow-up owner. It cannot bypass a mandatory legal, security, or compliance approval.

Distribution copies inherit the canonical content ID and version. Changes belong in the canonical source.

## Taxonomy you will maintain

Keep only fields someone will update: stable content ID, canonical location, role / stage / job, content owner, evidence or claim owner, version and effective date, publication status, review status, approved audience, approved by / at, last reviewed / review trigger.

Unused metadata is not governance.

## Operating metrics

- `Current-content rate = live published assets with review_status current / live published assets in scope`
- `Orphan rate = published assets without an active owner / published assets in scope`
- `Review completion rate = due reviews completed by their conditional SLA / reviews due`
- `Canonical coverage = distributed assets linked to a canonical content ID and version / distributed assets in scope`

Track adoption only when audience eligibility and usage definitions exist. Do not invent usage.

## Thin evidence

If ownership is unknown, design the ownership pass before the taxonomy cleanup. If the team cannot staff a council, give one intake owner and one publish owner. Route the one-time backlog to `content-gap-analysis`.
