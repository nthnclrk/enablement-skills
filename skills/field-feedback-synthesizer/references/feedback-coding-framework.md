# Feedback Coding Framework

Use this framework to make a defined feedback corpus reviewable and decision-ready. Adapt the fields to the decision; do not collect detail that has no analytical use.

## Sample Frame

Record before coding:

- Research question and decision owner
- Inclusion and exclusion rules
- Collection method and period
- Counting unit and denominator
- Source mix, eligible population, and coverage
- Known selection, response, survivorship, manager, or channel bias
- Permitted quotation, identity, retention, and distribution treatment

## Record Schema

| Field | Purpose |
| --- | --- |
| Record ID | Stable reference for the coded item |
| Origin ID | Identifies copies from the same originating statement |
| Source type and source ID | Call, survey, CRM note, manager note, support item, or other source |
| Captured date | Source date, kept unknown if unavailable |
| Unit ID | Pseudonymous respondent, account, opportunity, call, or other counting unit |
| Segment metadata | Only the role, region, segment, persona, or stage needed for analysis |
| Original text | Verbatim statement or faithful excerpt |
| Evidence type | Observed event, participant report, secondhand report, or interpretation |
| Theme and subtheme | Applied codebook labels |
| Severity | Consequence if the issue occurs; separate from frequency |
| Business impact | Supported or hypothesized effect, clearly labeled |
| Confidentiality | Shareable, internal, restricted, or quotation prohibited |
| Coder and notes | Reviewer, ambiguity, conflicts, and coding rationale |

## Coding Rules

1. Build codes from the research question and pilot them on a mixed subset.
2. Define each code with inclusion, exclusion, and overlap rules.
3. Preserve original language; normalized wording must not replace source evidence.
4. Apply multiple codes only when each represents a distinct signal.
5. Record contradictory evidence and negative cases rather than forcing consensus.
6. Freeze the codebook before full coding or record every later change and recode affected records.
7. For a consequential decision, have a second reviewer code a varied sample and resolve material disagreement.

## Starter Themes

Use these only when they fit the question:

- Message or value clarity
- Product or use-case fit
- Competitive pressure
- Pricing or commercial friction
- Proof or trust deficit
- Sales-process or workflow friction
- Implementation, security, legal, or change risk
- Manager, skill, or capacity constraint

## Duplication And Independence

- Collapse duplicate exports, reposts, summaries, and copied excerpts under one `Origin ID`.
- Treat two mentions from one person or account as repeated evidence from one unit, not two independent units.
- Keep genuinely independent observations separate even when wording is similar.
- Report mention count and independent-unit count separately when repeated exposure matters.

## Counts And Denominators

Use the denominator that matches the claim. Examples:

- `8 of 31 respondents mentioned implementation risk`
- `12 of 46 reviewed calls contained a procurement objection`
- `17 coded mentions across 9 independent accounts`

Do not convert unstructured convenience feedback into a prevalence estimate for the wider field. Show base sizes for segment comparisons and suppress or qualify cuts too small to interpret responsibly.

## Confidence Assessment

Assess confidence across four dimensions:

- **Evidence strength:** direct observation or source detail versus secondhand summary
- **Breadth:** independent units, source types, segments, and time periods represented
- **Relevance:** fit between the sample and the decision population
- **Consistency:** convergence, contradiction, and plausible alternative explanations

Assign `high`, `medium`, or `low` only with a short rationale. High frequency from one biased channel does not create high confidence.

## Interpretation And Action

Keep these layers distinct:

- **Observation:** what the included evidence shows
- **Interpretation:** what the pattern may mean
- **Root-cause hypothesis:** a proposed explanation requiring validation
- **Decision:** what the owner chooses to do

For each recommended action, name the evidence, owner, capacity or effort, validation step, decision point, and what would disconfirm the recommendation.

Use the minimum excerpt needed to support a finding. Redact unnecessary identifying detail and honor restrictions on attribution or quotation.
