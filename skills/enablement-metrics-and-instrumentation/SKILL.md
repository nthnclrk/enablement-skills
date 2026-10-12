---
name: enablement-metrics-and-instrumentation
description: Define enablement metrics, KPI trees and measurement plans. Use for a single metric definition, leading and lagging indicators, or instrumentation across CRM, learning, content and performance systems. Route the leadership narrative of results already in hand to enablement-impact-story.
---

# Enablement metrics and instrumentation

Define a small set of reproducible measures that helps an owner decide whether to continue, adjust, or stop an enablement initiative.

Label what each measure represents: adoption, execution, productivity, or commercial outcome. Completion measures adoption; observed job behaviour measures execution. Include the links relevant to the initiative, and mark unmeasured links rather than inventing metrics to fill the tree.

**Fails.** "If 80% of AEs complete certification, win rate will rise 8 points this quarter."

**Passes.** "Adoption: eligible sellers completing certification. Readiness signal: first-attempt pass rate. Execution: observed discovery quality on eligible calls. Commercial: win rate for the defined opportunity cohort. Participation and assessment results alone cannot establish a commercial effect."

If the user wants the leadership narrative of results already in hand, use `enablement-impact-story`.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the tree:

1. The initiative and the question the measure must inform
2. Eligible population, exclusions, and time window
3. Systems, events, and join keys that actually exist
4. Who reviews the numbers, and how often they decide

If a baseline, formula, join, or owner is unknown, leave it unknown. Do not invent win rates, usage, or ROI.

## Supporting material

Read [references/kpi-tree-framework.md](references/kpi-tree-framework.md) for the four tiers, metric contract, and claim limits. Read [references/kpi-tree-examples.md](references/kpi-tree-examples.md) when the initiative is onboarding or a product launch and you need a worked tree.

## Procedure

1. Name the question.
   Establish what the owner needs to know or decide. For one metric, define its purpose and limits. For a programme measurement plan, identify the intended business outcome and the measures needed to assess progress. Done when each requested measure has a clear use; an operational question need not become a full commercial KPI tree.
2. Tier the tree.
   Explain how the work is expected to change behaviour and contribute to the outcome. Select a leading behaviour measure and the downstream measures the decision needs. Completion and usage may explain exposure, but cannot establish effectiveness alone.
3. Write the contract.
   Formula, grain, population, filters, time window, source fields, and stable keys. Done when a second analyst could reproduce the number from the contract alone. Otherwise label it `not yet reproducible`.
4. Instrument the missing events.
   Durable state changes, not clicks. Name the trigger, keys, timestamp, owner, and latency. Prefer `certification_passed` over `button_clicked`.
5. Fix joins before combining systems.
   Native grain first. Aggregate one-to-many sources before the join. Use event time, not today's owner or stage, unless that rewrite is the stated definition.
6. Set the evidence design.
   Descriptive, contribution, or causal. Record eligibility, exposure, comparison, lag, confounders, and what would invalidate the claim. A pre/post line is descriptive. Do not upgrade it after seeing the result.
7. Set decisions and QA.
   Continue / adjust / stop thresholds, or record the missing owner and required-by date. Completeness, uniqueness, validity, referential integrity, timeliness, reconciliation. A failed QA check blocks or downgrades the claim; it does not become a footnote.
8. Keep the set small enough to review on the stated cadence.

Do not publish reports, change production tracking, or collect new data without a named system owner and explicit approval of the exact scope.

## What to return

For one metric, return its definition, source, limitations, and decision use. For a full measurement plan, include:

- The question or decision, intended business outcome, and primary measure
- The tree, with every metric labeled adoption, execution, productivity, or commercial
- A metric dictionary: formula, grain, population, window, source, keys, or `not yet reproducible`
- Instrumentation and join rules for anything that does not exist yet
- Evidence design and the claim it can support
- QA checks with failure owners
- Continue / adjust / stop rules, or the missing decision
- Assumptions and unresolved measurement inputs

Do not attach an executive impact narrative unless the user asked for results they already have. That is `enablement-impact-story`.

## Quality bar

- Commercial claims have relevant execution evidence. Adoption can answer a participation question; it cannot establish effectiveness by itself.
- A second analyst can reproduce every claimed number from the contract.
- Attribution does not exceed the evidence design.
- No invented win rates, usage, baselines, or ROI.
- QA failures are visible and owned.
- The set fits the review cadence.
