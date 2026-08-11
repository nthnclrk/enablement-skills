# Objection Coding Framework

Use this framework to code conversation evidence before synthesis.

## Unit Of Analysis

- Use the eligible conversation as the denominator for prevalence.
- Count a theme at most once per conversation for prevalence, even when it appears several times.
- Track repeated instances separately when they reveal intensity or response failure.
- Exclude unusable sources from the denominator and report why they were unusable.
- Do not treat an unmentioned objection as disproved; mark it `not observed in available evidence`.

## Evidence Record

Capture:

- source ID and date
- account, rep or team, segment, persona, and call type or stage when available
- `explicit objection`, `implied concern`, `buyer question`, or `seller interpretation`
- short excerpt or precise paraphrase
- seller response and buyer reaction, when present
- observed consequence, when present
- objection type, root-cause hypothesis, and coding notes

## Objection Types

- `Value`: expected impact or business case is unclear or insufficient.
- `Priority`: urgency or relative importance is weak.
- `Product Fit`: capability, workflow, or technical fit is questioned.
- `Implementation Risk`: migration, integration, adoption, or support is a concern.
- `Trust`: security, compliance, vendor risk, evidence, or credibility is questioned.
- `Commercial`: price, budget, terms, procurement, or legal conditions are at issue.
- `Change Cost`: switching effort, retraining, disruption, or internal capacity is a concern.
- `Decision Alignment`: stakeholders, criteria, or approval path are not aligned.

Code the buyer's underlying concern, not merely the seller's response. Apply more than one type only when the evidence contains genuinely distinct concerns.

## Impact Status

- `Blocking`: the buyer explicitly conditions or stops progress on the concern.
- `Material friction`: the concern causes extra validation, delay, escalation, or a requested concession.
- `Open concern`: the issue is raised but its effect is not established.
- `Unknown`: the source does not show the consequence.

Do not infer causation from a later stall or loss without corroborating evidence.

## Root-Cause Hypotheses

- `message_gap`
- `proof_gap`
- `process_gap`
- `product_gap`
- `commercial_mismatch`
- `competitive_pressure`
- `stakeholder_misalignment`

Label root cause as a hypothesis unless direct evidence supports it. A product objection can still originate in proof, positioning, or process.

## Confidence Decision

Assess confidence from four visible factors:

1. recurrence across independent conversations
2. source fidelity and metadata completeness
3. representation across the intended slice
4. consistency of buyer language and observed consequence

Use `high`, `medium`, or `low` only after stating the reasons. Do not rely on a universal call-count threshold; the necessary sample depends on the decision, market, and available population.

## Comparison Rules

- Show counts and denominators together.
- Show unique call, account, and rep or team coverage so one source concentration is visible.
- When several calls come from one account, report unique-account recurrence alongside call prevalence.
- Prefer counts over percentages for small samples.
- Do not rank slices whose coverage or inclusion rules are materially different without a clear caveat.
- Keep an important isolated signal separate from the recurring-theme ranking.
