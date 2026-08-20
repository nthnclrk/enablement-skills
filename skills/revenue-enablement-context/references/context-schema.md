# Revenue enablement context schema

Use this for `.enablement/context.md`. Keep sections short. Empty is better than generic. Preserve unresolved information. Do not invent answers.

**Fails.** A persona section that says "economic buyers care about ROI."

**Passes.** "VP Ops owns the Friday review. They will not change tools unless missed handoffs show up as a named delivery risk."

## Contents

- [State And Governance Rules](#state-and-governance-rules)
- [Default Context Template](#default-context-template)
- [Optional Scoped Brief](#optional-scoped-brief)

## State And Governance Rules

Use one state for each section:

- `confirmed`: explicitly approved by the user or supported by a current authoritative source
- `inferred`: supported by evidence but not yet confirmed
- `conflicted`: credible sources disagree; preserve the alternatives and name the decision owner
- `missing`: important information is unavailable

Start every populated section with:

```markdown
> State: confirmed | Last verified: YYYY-MM-DD | Reuse: approved
> Sensitivity: internal | Sources: [path, URL, or source name]
```

Use `Reuse: limited — [scope]` or `Reuse: not approved` when appropriate. In a machine-readable export, preserve the scope in `reuse_scope`; never reduce a limited approval to the bare value `limited`. Sensitivity should be `public`, `internal`, `confidential`, or `restricted`. A section can contain individually labeled inferred or conflicted facts even when most of it is confirmed.

## Default Context Template

```markdown
# Revenue Enablement Context

<!-- enablement-context-schema: 1 -->

## Context Handshake

- Canonical path: `.enablement/context.md`
- Business scope:
- Owner:
- Last reviewed:
- Default sensitivity:
- Approved uses:
- Deliberately excluded material:

## Company And Product

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- Company and revenue model
- Product lines, use cases, and constraints
- Market/category and durable terminology

## Audiences And Buying Committee

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- ICP, segments, and exclusions
- Users, champions, decision makers, financial buyers, and technical influencers
- Jobs, pains, decision criteria, objections, and verified customer language

## Sales Process

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- Stages with entry and exit criteria
- Qualification and forecast definitions
- Roles, handoffs, conversion risks, and required evidence

## Packaging And Commercials

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- Packaging and pricing logic
- Discount, approval, legal, and claim constraints

## Messaging, Objections, And Evidence

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- Positioning and value pillars
- Approved proof points and claim boundaries
- Common objections, response principles, and words to use or avoid

## Competitive Context

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- Direct alternatives, adjacent approaches, and status quo
- Where each option is strong, win conditions, traps, and evidence limits

## Tools And Canonical Sources

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

| System or source | Purpose | Canonical object/view | Owner | Freshness expectation | Access/write boundary |
| --- | --- | --- | --- | --- | --- |

Do not record credentials or tokens. Link to authoritative locations rather than copying raw exports.

## Current Priorities

> State: | Last verified: | Reuse:
> Sensitivity: | Sources:

- Current initiatives, deadlines, dependencies, risks, and success measures

## Conflicts, Missing Information, And Review Queue

| Item | State | Competing evidence or gap | Decision owner | Next review |
| --- | --- | --- | --- | --- |
```

## Optional Scoped Brief

Create `.enablement/briefs/<slug>.md` only when initiative- or artifact-specific context will be reused. Link to the canonical context and avoid copying its durable facts.

```markdown
# [Initiative Or Artifact] Brief

- Canonical context: `../context.md`
- Owner:
- Last updated:
- Sensitivity:

## Objective And Audience

## Deliverable, Stage, And Time Horizon

## Approved Source Material

## Target-Specific Facts And Assumptions

## Approvals And Delivery Or Write-Back Boundary

## Open Decisions
```
