# KPI tree judgment

Use this when you are choosing metrics or checking a tree. The skill body has the procedure.

## Four tiers

Label every metric before you write a target.

| Tier | What it measures | Typical grain |
| --- | --- | --- |
| Adoption | Exposure or completion of enablement work | Person, session, asset |
| Execution | The field behavior the work was meant to change | Call, opportunity, inspection |
| Productivity | Whether the motion got faster or cleaner | Hire, opportunity, account |
| Commercial | The business result leadership already manages | Opportunity, account, book |

Explain the proposed link from exposure to behaviour and outcomes. Include relevant tiers and identify unmeasured links; every initiative does not need a metric in every tier.

**Fails.** Success metric: certification completion. "Insight": completion will lift win rate.

**Passes.** Adoption: eligible reps who participated in practice. Execution: observed discovery quality on eligible calls. Productivity: time to independent work. Commercial: eligible-opportunity win rate. Assessment pass rate is supporting evidence of readiness, not proof of live behaviour or commercial effect.

Do not use activity completion as a proxy for behavior or business impact.

## Metric contract

Define every metric with:

| Field | Required definition |
| --- | --- |
| Business question | Decision the metric should inform |
| Formula | Numerator and denominator, written out |
| Unit and grain | One row per event, rep, opportunity, account, session, or cohort |
| Eligible population | Who or what can enter the denominator |
| Exclusions and filters | Test records, incomplete periods, roles, segments |
| Time semantics | Event time, snapshot time, lookback, cohort rule |
| Source fields | System, object, named fields |
| Stable keys | Entity IDs used to deduplicate and join |
| Owner and cadence | Business owner, data owner, refresh, latency |
| Baseline and target | Comparison period, target, review threshold |

If the calculation, population, time window, source, or required keys are unknown, label the metric `not yet reproducible`. A missing target or review owner is a separate operating gap; it does not make an otherwise defined calculation irreproducible.

## Events, grain, and joins

Instrument a durable state change when the behavior happens at a point in time. Use a snapshot when state can change and history matters. Prefer `certification_passed` over `button_clicked`.

- Declare native grain before joining.
- Aggregate a one-to-many source before the join, or counts fan out.
- Join on stable IDs, not names.
- Use event time. Do not attach today's owner, stage, or segment to past events unless that rewrite is the stated definition.
- Define source precedence when two systems record the same field.

## Evidence design

Choose the strongest claim the design can support:

- `descriptive`: what changed for the defined population
- `contribution`: exposure, timing, behavior, and a comparison make the initiative a plausible contributor
- `causal`: an experimental or credible quasi-experimental design estimates a defined effect

A pre/post line is descriptive. Do not upgrade it after seeing the result. Do not infer exposure from a win or a loss.

For contribution or causal work, record eligibility, exposure, comparison, lag, confounders, sufficiency, the decision rule, and what invalidates the result.

## Thin evidence

If a required join key or population is missing, mark the metric `not yet reproducible`. A missing baseline blocks a change claim but may still permit a current-value calculation. Name the missing input and its owner; propose a required-by date only when useful and label it proposed.

Do not invent win rates, usage, or ROI to fill the cell. Do not set a commercial target from an adoption trend.

## QA and decisions

Define a threshold, failure action, and owner for completeness, uniqueness, validity, referential integrity, timeliness, reconciliation, and unexplained changes after a logic update.

A failed check blocks or downgrades the claim. It does not become a general caveat.

Set `continue`, `adjust`, and `stop` thresholds before the review when you can. If you cannot, record that as a missing decision, not a number.
