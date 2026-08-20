# Feedback coding judgment

Use this when you are coding a corpus or deciding whether a theme is broad enough to act on. The skill body has the procedure.

## Observation vs recommendation

Keep four lines apart:

- Observation: what the included evidence shows
- Interpretation: what the pattern may mean
- Root-cause hypothesis: a proposed explanation that still needs validation
- Decision: what the owner chooses to do

**Fails.** "Reps hate the security FAQ, so rewrite it."

**Passes.** "Observation: 17 mentions of security-review friction across 9 accounts and 3 source types. Interpretation: sellers cannot find or cannot use the current FAQ. Hypothesis: discoverability, not accuracy. Recommendation: confirm search and location before rewriting."

## Source-breadth scoring

Confidence is not frequency. Score four dimensions, then assign `high`, `medium`, or `low` with a reason:

- Evidence strength: direct observation vs secondhand summary
- Breadth: independent units, source types, segments, and time periods
- Relevance: fit between the sample and the decision population
- Consistency: convergence, contradiction, and plausible alternatives

High frequency from one Slack channel is not high confidence.

Report mention count and independent-unit count separately. Collapse duplicate exports, reposts, and copied excerpts under one origin ID. Two mentions from one person or account are one unit.

## Sample frame

Record before coding: research question, inclusion and exclusion, collection method and period, counting unit and denominator, source mix, known bias, and quotation rules.

Use the denominator that matches the claim:

- `8 of 31 respondents mentioned implementation risk`
- `12 of 46 reviewed calls contained a procurement objection`
- `17 coded mentions across 9 independent accounts`

Do not convert unstructured convenience feedback into a prevalence estimate for the wider field. Suppress or qualify cuts whose base is too small.

## Coding

Build codes from the question. Pilot on a mixed subset. Define inclusion, exclusion, and overlap. Preserve original language. Apply multiple codes only for distinct signals. Record contradictions instead of forcing consensus. Freeze the codebook before the full pass, or recode after every later change.

Starter themes, only when they fit: message clarity, product fit, competitive pressure, commercial friction, proof or trust, process friction, implementation or change risk, manager or capacity constraint.

Keep frequency, severity, evidence strength, and business impact as separate fields. Severity is the consequence if the issue occurs, not how often it was mentioned.

## Thin evidence

If the corpus is one channel, one team, or one week, say so and keep recommendations reversible. Name the next evidence that would change the decision. Do not invent usage or win rates to make a theme look company-wide.

Use the minimum excerpt needed. Redact unnecessary identifying detail.

## Optional theme line

```text
Theme / n of N / independent units / source types
Observation
Recommendation and what would disconfirm it
Breadth score and the limiting factor
```
