---
name: win-loss-synthesis
description: Synthesize win-loss interviews, notes, and deal evidence into clear themes and actions. Use when asked why deals were won or lost, how patterns vary by segment or competitor, or what to change in messaging, process, or coaching. For a single competitive asset, route to battlecard-builder.
---

# Win Loss Synthesis

Turn mixed win-loss evidence into findings that change enablement priorities.

## Confirm Inputs First

Confirm the minimum analysis scope:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Data sources (interviews, CRM notes, call snippets, closed-lost reasons)
- Time window, segment scope, and total eligible closed-deal population
- Inclusion/exclusion rules, selection method, and win/loss/no-decision mix
- Interview/contact, response, and evidence-availability counts by material slice
- Competitors or alternatives in scope
- Confidentiality, consent, attribution, and minimum-cell rules for quotes and segmented reporting
- Decision audience: PMM, enablement, or sales leadership

Ask for only missing items. If the user wants a fast draft, proceed with labeled limitations, but do not imply the sample represents the eligible population when sample accounting is incomplete.

## Read The Right Reference

- Read [references/win-loss-coding-framework.md](references/win-loss-coding-framework.md) before classifying themes or quantifying findings.

## Default Workflow

1. Set analysis boundaries.
Define the eligible population, inclusion/exclusion rules, outcome definitions, and what counts as evidence.

2. Build the sample ledger.
Account for eligible, selected, contacted, participated, evidence-available, coded, and excluded deals by outcome and material segment.

3. Normalize evidence.
Use stable deal and evidence IDs; preserve source, date, speaker role, attribution permission, stage, segment, alternative, and outcome.

4. Code reasons and context.
Separate observed fact, stakeholder-reported reason, contributing factor, and analyst root-cause hypothesis before assigning a primary outcome reason.

5. Calibrate the coding process.
Double-code a representative subset when multiple analysts are involved, adjudicate disagreements against source evidence, and freeze a versioned codebook before the main pass. With one analyst, use a delayed blind recode against benchmark examples and report that inter-rater reliability was not established.

6. Check coverage and bias.
Compare coded deals with the eligible population; show response and evidence-coverage denominators before drawing broad conclusions.

7. Compare patterns.
Show supporting deals, counterexamples, source mix, and denominators for differences by segment, persona, stage, and alternative.

8. Assign finding confidence.
Apply the reference rules using independent-deal count, direct buyer evidence, coverage, source diversity, and contradiction.

9. Protect confidentiality.
Use only approved attribution, redact restricted detail, and suppress or aggregate slices that would expose a person or account.

10. Prioritize implications.
Translate defensible findings into owner-addressable messaging, coaching, process, and product decisions.

## Tool Notes

- Tool-agnostic default: interviews and notes are sufficient for useful synthesis.
- Optional tools: CRM exports and call-intelligence snippets improve speed and traceability.
- Treat standardized CRM reason codes as one input only; validate against qualitative evidence.
- Do not publish identifiable quotes, deal details, or rep-level conclusions outside the approved audience.
- Audience approval does not authorize a send or system write. Do not publish, distribute, or update an external system without explicit user approval of the exact artifact, destination, and scope.

## Output Contract

Default output includes:

- Findings summary by outcome with top coded themes
- Sample-accounting table with population, selection, participation, evidence, exclusions, and denominators
- Auditable finding table with supporting deals, counterexamples, source mix, confidence, and confidentiality status
- Coding-calibration record with codebook version, agreement or recode result, adjudication decisions, and reliability limits
- Segment/persona/alternative comparison table
- Priority implications by function (enablement, PMM, sales management, product)
- Action plan with owner, decision, dependency, and evidence-based sequence
- Assumptions, confidence notes, and unresolved questions

## Quality Bar

- Evidence coverage is broad enough to avoid single-deal storytelling.
- Counts always include the relevant denominator and outcome mix.
- Reported reasons, contributing factors, and analyst root-cause hypotheses remain distinct.
- Interpretation is clearly distinguished from observed facts.
- Recommendations are specific and owner-addressable.
- Insights are segmented where materially different.
- Findings can be defended in leadership review.
- Selection-bias and sample-shape risks are explicitly labeled before strategic recommendations.
- Confidentiality and attribution rules are enforced at quote, deal, and segmented-output level.
