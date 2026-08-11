# Win-Loss Coding Framework

Use this framework to keep coding consistent across analysts and periods.

## 1) Sample Accounting

Create one row per material outcome and segment slice:

| Slice | Eligible Closed Deals | Selected | Contacted | Participated | Evidence Available | Coded | Excluded And Reason |
| --- | --- | --- | --- | --- | --- | --- | --- |

Define each stage once. A deal may be selected but not contacted, contacted but not participate, or participate without usable evidence. Preserve those differences.

Report finding frequency as `supporting coded deals / coded deals in the stated slice`. Also show the eligible closed-deal population and participation coverage so the reader can see selection and response bias. Never present interview percentages as population prevalence unless the sampling design supports that inference.

## 2) Evidence Ledger

Use stable IDs and keep one row per evidence item:

| Evidence ID | Deal ID | Outcome | Source | Date | Speaker Role | Stage | Raw Evidence | Attribution Permission | Confidentiality | Analyst Note |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Keep raw evidence immutable. Put interpretation and later coding in separate fields.

## 3) Reason Families

- `business_case`: weak value clarity, ROI uncertainty, unclear priority
- `product_fit`: missing capability, workflow mismatch, technical constraints
- `execution`: poor discovery, weak championing, mismanaged process
- `commercial`: pricing, terms, procurement, contracting friction
- `competition`: competitor strength, incumbent inertia, replacement risk
- `timing`: project delay, re-prioritization, internal change
- `no_decision`: status quo bias or unresolved stakeholder alignment

## 4) Coding Ledger

| Deal ID | Codebook Version | Coder | Primary Outcome Reason | Secondary Reasons | Root-Cause Hypothesis | Evidence IDs | Adjudication/Conflict |
| --- | --- | --- | --- | --- | --- | --- | --- |

Version the codebook and preserve coder/adjudication history so changes across periods are not mistaken for market movement.

### Calibration And Adjudication

- Pilot-code a representative subset that includes different outcomes, segments, and evidence types.
- With multiple coders, compare primary reason and material secondary-code agreement. Define the acceptable agreement level before full coding; if it is missed, refine anchors and repeat the pilot.
- Resolve disagreements against the evidence ledger, record the adjudicator and rationale, then freeze and version the codebook for the analysis period.
- With one coder, use benchmark anchors and a delayed blind recode of the pilot subset. Report `inter-rater reliability not established` and keep aggregate findings directional when self-consistency is weak.
- Report the measure used, the subset and denominator, result, unresolved disagreements, and any reliability limitation. Do not invent a universal pass threshold.

## 5) Cause Coding Rules

- Assign one primary reason only when evidence supports a dominant reason. Preserve relevant secondary reasons; use `mixed` or `unresolved` when no dominant explanation is defensible.
- Code `observed fact`, `stakeholder-reported reason`, `contributing factor`, and `analyst root-cause hypothesis` separately.
- Require at least one traceable evidence item for a primary reason; otherwise use `unresolved`.
- Tag each reason with `stage_observed` and `stakeholder_role`.
- Preserve disagreements between buyer, seller, manager, and system evidence rather than forcing consensus.
- Do not treat a primary outcome reason as proven causality. Use causal language only when the research design supports it.

## 6) Evidence Integrity Rules

- Record the source type for every coded item (interview, call note, CRM field).
- Do not treat generic CRM close reasons as sufficient evidence by themselves.
- Keep direct observation and analyst interpretation in separate fields.
- Count independent deals, not repeated mentions within one deal, when describing recurrence.
- Show counterexamples and contradictory evidence beside each material finding.

## 7) Finding Confidence

For each finding record:

- supporting deals and coded-deal denominator
- count with direct buyer evidence
- source classes represented
- counterexample count and material contradictions
- participation and evidence coverage for the slice
- excluded or missing segments

Assign:

- `High`: repeated across independent deals, supported by direct buyer evidence or equally strong primary evidence, adequate coverage for the stated slice, and no unexplained material contradiction.
- `Medium`: repeated but limited by coverage, source diversity, segment concentration, or a resolvable contradiction.
- `Low`: isolated, CRM-code-only, heavily selected, materially contradictory, or based on weak/unclear evidence.

State the determining limitation. Confidence applies only to the named slice; it does not transfer automatically to another segment, period, or competitor.

## 8) Confidentiality And Attribution

- Record whether each quote is named, anonymized, paraphrase-only, or internal-only.
- Remove customer, rep, deal, and contract details not required for the finding.
- Follow the user's minimum-cell policy. If none exists, aggregate or suppress a segmented result when the combination of details could identify a person or account.
- Never infer permission from access to a transcript or interview note.
- Keep rep-performance conclusions out of win-loss synthesis unless that use and audience were explicitly approved.

## 9) Synthesis Output Minimums

- Show top themes for wins and losses separately.
- Show meaningful differences by segment or competitor where data supports it.
- Include concrete implications for messaging, coaching, and process.
- Attach the sample ledger and an evidence/confidence pointer to every material finding.
