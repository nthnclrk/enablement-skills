# Win-Loss Coding Framework

Use this framework to keep coding consistent across analysts and periods.

## Primary Reason Families

- `business_case`: weak value clarity, ROI uncertainty, unclear priority
- `product_fit`: missing capability, workflow mismatch, technical constraints
- `execution`: poor discovery, weak championing, mismanaged process
- `commercial`: pricing, terms, procurement, contracting friction
- `competition`: competitor strength, incumbent inertia, replacement risk
- `timing`: project delay, re-prioritization, internal change
- `no_decision`: status quo bias or unresolved stakeholder alignment

## Coding Rules

- Assign one primary reason and up to two secondary reasons per deal.
- Require evidence snippets for primary reason assignment.
- Tag each reason with `stage_observed` and `stakeholder_role`.

## Evidence Integrity Rules

- Record the source type for every coded item (interview, call note, CRM field).
- Do not treat generic CRM close reasons as sufficient evidence by themselves.
- Keep direct observation and analyst interpretation in separate fields.

## Confidence Model

- `High`: consistent theme across sources and segments with clear evidence
- `Medium`: recurring theme with partial evidence coverage
- `Low`: small sample, weak evidence quality, or contradictory signals

## Synthesis Output Minimums

- Show top themes for wins and losses separately.
- Show meaningful differences by segment or competitor where data supports it.
- Include concrete implications for messaging, coaching, and process.
