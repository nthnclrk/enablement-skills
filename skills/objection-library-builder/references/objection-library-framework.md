# Objection Library Framework

Use this framework to build consistent objection handling artifacts.

## Objection Card Template

| Field | Guidance |
| --- | --- |
| Objection label | Short phrase the team recognizes quickly |
| Typical wording | Verbatim examples or explicitly labeled paraphrases; never rewrite a paraphrase as a quotation |
| Evidence reference | Source ID or link, observed date, transcript confidence, and anonymized context |
| Persona and stage | Who raises it and when |
| Priority | Priority 1, 2, or 3, with the decision rule shown |
| Prevalence | Observed count, usable-source denominator, unique-account breadth, and concentration note |
| Business / deal impact | Blocking, material, or limited, with evidence |
| Influenceability | High, mixed, or low within the team's control |
| Evidence confidence | High, medium, or low based on coverage, source quality, and consistency |
| Analyst interpretation | Root cause hypothesis such as risk, misunderstanding, fit gap, or timing; keep separate from source wording |
| Response path | Acknowledge -> Diagnose -> Reframe -> Proof -> Confirm |
| Proof source | Source reference, approved wording, owner, last-verified date, and approval status |
| Escalation owner | Role to involve when objection cannot be resolved in call |
| Landmine | Statement to avoid |
| Lifecycle | Owner, version, status, last-reviewed date, and review triggers |

## Priority Matrix

Start with impact and prevalence, then adjust the response investment for influenceability and confidence:

| Business / Deal Impact | Higher Prevalence | Lower Prevalence |
| --- | --- | --- |
| Blocking or material | `Priority 1` | `Priority 1` if it can block the decision; otherwise `Priority 2` with explicit monitoring |
| Limited | `Priority 2` when a reusable response removes recurring friction | `Priority 3` |

- Low influenceability increases escalation and expectation-setting; it does not erase impact.
- Low confidence creates a validation action and can limit response investment, but a rare potential blocker remains visible until resolved.
- Report observed counts, usable-source denominator, unique-account breadth, and concentration. Do not equate repeated mentions from one account with broad prevalence.

When the source set is incomplete, report observed count and coverage rather than asserting organization-wide frequency.

## Response Pattern

1. Acknowledge the concern in neutral language.
2. Diagnose with one or two clarifying questions.
3. Reframe the decision criterion around buyer outcomes.
4. Support with the strongest available proof.
5. Confirm the next decision step.

## Escalation Rules

- Escalate legal terms to legal or deal desk.
- Escalate security architecture to security or product.
- Escalate pricing exceptions to approved commercial owners.
- Escalate implementation commitments to services or CS.

Do not provide commitments outside approved policy.

## Lifecycle Governance

Use these states:

- `draft`: evidence and response are still being assembled
- `reviewed`: the designated subject-matter owner has checked accuracy
- `approved`: authorized for the stated audience and channel
- `retired`: superseded, invalidated, or no longer safe to use

Trigger review when product behavior, pricing, policy, legal guidance, proof, buyer wording, or observed outcomes materially change. Keep one active version, retain the superseded reference, and record who approved the change.
