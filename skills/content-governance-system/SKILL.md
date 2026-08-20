---
name: content-governance-system
description: Design a practical content ops system for revenue enablement content, including taxonomy, ownership, lifecycle controls, and quality checks. Use when asked to reduce content sprawl, define source-of-truth rules, or operationalize publishing and retirement workflows. Route gap prioritization to content-gap-analysis.
---

# Content governance system

Design the weekly operating model that keeps enablement content accurate and findable. This is not an inventory. If the team cannot run it every week with the people they have, it is not done.

**Fails.** "Classify all 400 assets, stand up a content council, and review everything quarterly."

**Passes.** "Each Wednesday: owners clear due and overdue reviews, intake picks one request, publishers ship only approved versions. Live assets stay published while overdue for review. Urgent launch changes use a 48-hour exception with a named follow-up owner."

A one-time coverage audit and backlog is `content-gap-analysis`.

## Confirm Inputs First

Ask only for the inputs that change the operating model:

1. Repositories and content types in scope
2. Who already owns accuracy, claim approval, and the right to publish
3. Current pain: sprawl, stale claims, unclear source of truth, or blocked launches
4. Who will run the weekly cadence, and how much time they actually have

If ownership or system-write authority is unknown, leave it unknown. Do not invent usage.

## Read The Right Reference

Read [references/governance-model-template.md](references/governance-model-template.md) for the two status axes, approval-vs-publish split, and a weekly cadence you can copy. Read [references/source-system-guide.md](references/source-system-guide.md) when the rules must map into publishing systems the team already uses.

## Default Workflow

1. Name the weekly job.
   Who meets or reviews, on which day, and what gets decided. Done when a new owner could run next week without a kickoff project.
2. Set decision rights.
   Content approval, publish authorization, and system write are three different rights. A claim owner may approve wording and still lack permission to publish.
3. Keep two independent axes.
   Publication: `draft`, `in_review`, `approved`, `published`, `retired`. Review: `current`, `due`, `overdue`, `blocked`. A live asset stays `published` while due or overdue. Review status must not hide it from published denominators.
4. Trigger review from risk, not a universal calendar.
   Legal, security, pricing, and product claims review when the source changes or validity ends. Convenience content can wait.
5. Define intake that matches capacity.
   One prioritization path for new requests. No shadow queues. Urgent work uses a time-boxed exception that cannot skip legal or security approval.
6. Name the quality checks that can fail a publish.
   Message accuracy, proof, audience, compliance. Cosmetic checks that nobody enforces do not go in the model.
7. Separate canonical source from distribution copies.
   One content ID and version. Changes happen in the canonical source, then propagate. Do not create a second source of truth to "make it easier to find."
8. Scale to the team you have.
   Unused councils, unused gates, and unused metadata fields are failed governance. Measure current-content rate, orphan rate, and review completion — not a usage number you do not have.

Do not publish, archive, relabel, or change permissions without explicit approval of the exact targets.

## Output Contract

Return an operating model the team can run next week:

- Weekly cadence: who does what, on which day, and what "done" means
- Scope and decision rights, including the approval-vs-publish split
- Taxonomy and metadata the team will actually maintain
- Publication and review policies with entry, exit, and SLAs
- Intake, exception path, and retirement rules
- Operating metrics that available systems can measure
- Assumptions, and ownership or usage you refused to invent

Do not deliver a prioritized gap backlog. That is `content-gap-analysis`.

## Quality Bar

- A named person can run the cadence next week without a cleanup project.
- Ownership and write authority are unambiguous.
- Publication and review names match in the policy, the metadata, and the mapped systems.
- Approval is not treated as permission to change a live system.
- Urgent launches have an exception path that still protects mandatory approvals.
- No invented usage or ROI.
