# KPI Tree And Instrumentation Framework

Use the KPI tree to choose what matters. Use the contracts below to make each metric reproducible.

## 1) Logic Layers

- `Outcome`: the commercial result, such as win rate, sales cycle, expansion, or time to productivity.
- `Behavior`: the observable field action expected to influence the outcome.
- `Activity`: the enablement exposure or practice intended to change the behavior.

Do not use activity completion as a proxy for behavior or business impact.

## 2) Metric Contract

Define every metric with:

| Field | Required definition |
| --- | --- |
| Business question | Decision the metric should inform |
| Formula | Explicit calculation, including numerator and denominator |
| Unit and grain | One row per event, rep, opportunity, account, session, or cohort |
| Eligible population | Who or what can enter the denominator |
| Exclusions and filters | Test records, incomplete periods, roles, segments, and other exclusions |
| Time semantics | Event time, snapshot time, lookback window, and cohort rule |
| Dimensions | Approved segment cuts that do not change the metric definition |
| Source fields | System, object/table, and named fields |
| Stable keys | Entity IDs used to deduplicate and join |
| Owner and cadence | Business owner, data owner, refresh schedule, and latency tolerance |
| Baseline and target | Comparison period, target, and review threshold |

If any required field is unknown, label the metric `not yet reproducible` and specify the missing decision or data.

## 3) Event Or Snapshot Contract

Instrument a durable event when the behavior occurs at a distinct point in time. Use a point-in-time snapshot when the state can change and historical state matters.

For each event or snapshot define:

- stable event name and business meaning
- exact trigger and explicit non-triggers
- entity grain and unique event or snapshot ID
- event timestamp and ingestion timestamp
- required entity keys, such as rep, account, opportunity, content, session, or cohort ID
- required properties, allowed values, and null handling
- producing system, consuming system, owner, and expected latency
- deduplication or idempotency rule
- privacy classification, access scope, and retention period

Prefer a durable state transition such as `certification_passed` over a UI interaction such as `button_clicked` when measuring readiness.

## 4) Grain And Join Rules

- Declare the native grain of every source before joining.
- Aggregate a one-to-many source to the intended metric grain before joining it; otherwise counts and amounts can fan out.
- Join on stable IDs, not names or mutable labels.
- Use event-time or effective-date joins for historical reporting; do not attach today's owner, stage, or segment to past events unless that is the stated definition.
- Resolve many-to-many relationships with an explicit bridge and allocation rule.
- Define source precedence when two systems record the same field, and preserve material conflicts for review.

## 5) Filter And Time Rules

- Fix the eligible population before inspecting results.
- Exclude test and duplicate records with explicit, reviewable filters.
- Use complete periods or identify partial-period data.
- Keep baseline and comparison windows seasonally and operationally comparable where possible.
- For cohorts, anchor time to a shared event such as start date, launch exposure, or certification date.

## 6) QA Contract

Define a threshold, failure action, and owner for:

- `Completeness`: required-field and expected-record coverage.
- `Uniqueness`: duplicate rate at the declared grain.
- `Validity`: type, range, and allowed-value checks.
- `Referential integrity`: unmatched keys across required joins.
- `Timeliness`: source latency and stale refreshes.
- `Reconciliation`: totals against the source-of-record report.
- `Stability`: unexplained changes after logic or source updates.

Block or downgrade a claim when a material QA check fails. Never hide a failed check inside a general caveat.

## 7) Evidence Design

Choose the strongest claim the design can support:

- `descriptive`: what changed for the defined population; no contribution claim
- `contribution`: exposure, timing, behavior, and comparison evidence make the initiative a plausible contributor while alternatives remain
- `causal`: an experimental or credible quasi-experimental design estimates a defined effect

For contribution or causal work, record the eligible population, assignment or exposure event, estimand or decision question, comparison method, pre/post and lag windows, material covariates or confounders, sample-sufficiency rule, practical or statistical decision rule, and conditions that invalidate the result. Do not infer exposure from outcome or choose the comparison after inspecting results.

## 8) Decision And Interpretation Rules

- Set `continue`, `adjust`, and `stop/deprioritize` thresholds before the review when practical.
- Pair lagging outcomes with leading behavior indicators, not activity alone.
- Avoid causal claims from one trend line; record comparison limits and confounders.
- Show trend direction with evidence confidence when data is incomplete.
- Version metric definitions and record the effective date when logic changes.
