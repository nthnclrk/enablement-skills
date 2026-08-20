# Win-loss coding judgment

Use this when you are coding reasons or quantifying a finding. The skill body has the procedure.

## Sample shape

No ledger, no prevalence language.

| Slice | Eligible | Selected | Contacted | Participated | Evidence available | Coded | Excluded |
| --- | --- | --- | --- | --- | --- | --- | --- |

A deal may be selected but not contacted, contacted but not participate, or participate without usable evidence. Preserve those differences.

Report frequency as `supporting coded deals / coded deals in the stated slice`. Also show the eligible population and participation coverage. Never present interview percentages as population prevalence unless the sampling design supports that inference.

**Fails.** "67% of losses are price."

**Passes.** "Price was the primary coded reason in 8 of 12 interviewed losses. 12 of 41 eligible losses participated. This is the interviewed sample, not the closed-lost population."

## Evidence vs interpretation

Keep four fields apart:

- Observed fact: what the source shows without a why
- Stakeholder-reported reason: what a buyer, seller, or manager said caused the outcome
- Contributing factor: something present that may have mattered
- Analyst root-cause hypothesis: your explanation, labeled as such

**Fails.** "The CRM says `price`, so price lost the deal."

**Passes.** "CRM close reason: price. Buyer interview: security review stalled after verbal yes; price was acceptable. Primary coded reason: `trust` / security. Price is a contributing factor, not the primary reason."

A generic CRM close reason is not sufficient evidence by itself.

## Reason families

`business_case`, `product_fit`, `execution`, `commercial`, `competition`, `timing`, `no_decision`.

Assign one primary reason only when evidence supports a dominant reason. Otherwise `mixed` or `unresolved`. Preserve secondary reasons. Require at least one traceable evidence item for a primary reason.

Count independent deals, not repeated mentions inside one deal.

## Calibration

Pilot-code a mixed subset. With multiple coders, define acceptable agreement before the full pass. Adjudicate against the evidence ledger, then freeze a versioned codebook.

With one coder, use a delayed blind recode and report `inter-rater reliability not established`. Keep aggregate findings directional when self-consistency is weak. Do not invent a universal pass threshold.

## Finding confidence

Record supporting deals, coded-deal denominator, direct-buyer count, source classes, counterexamples, coverage, and missing segments.

- `High`: repeated across independent deals, direct buyer evidence or equally strong primary evidence, adequate coverage, no unexplained material contradiction
- `Medium`: repeated but limited by coverage, source mix, concentration, or a resolvable contradiction
- `Low`: isolated, CRM-code-only, heavily selected, contradictory, or unclear

Confidence applies only to the named slice. It does not transfer to another segment, period, or competitor.

## Thin evidence

If participation is thin, show the ledger and stop short of strategy. Recommend more interviews or a different slice. Do not invent a win rate to make the finding feel market-wide.

Suppress or aggregate a slice when the combination of details could identify a person or account. Never infer quotation permission from access to a transcript.

## Optional finding line

```text
Slice / primary reason / n of coded / eligible population
Evidence vs interpretation
Counterexamples
Confidence and the limiting factor
```
