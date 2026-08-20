---
name: enablement-metrics-and-instrumentation
description: Define revenue enablement KPI trees and measurement plans that connect enablement work to business outcomes. Use when the user asks for KPI frameworks, leading and lagging indicators, measurement plans, or instrumentation across CRM, learning, content, and performance systems. Route executive narrative packaging of results to enablement-impact-story.
---

# Enablement metrics and instrumentation

Build a measurement system you can run. Do not overclaim attribution.

Tier every metric before you name a target: adoption, execution, productivity, or commercial. Completion is adoption. An inspected behavior is execution. Ramp or cycle time is productivity. Win rate is commercial. Skip a tier and the tree becomes a wish.

**Fails.** "If 80% of AEs complete certification, win rate will rise 8 points this quarter."

**Passes.** "Adoption: first-attempt certification pass rate. Execution: inspected discovery quality on eligible calls. Productivity: day-90 ramp attainment. Commercial: launch-eligible win rate. We will not attribute the commercial number to certification until exposure and a comparison exist."

If the user wants the leadership narrative of results already in hand, use `enablement-impact-story`.

## Confirm Inputs First

Ask only for the inputs that change the tree:

1. The initiative and the one commercial question it must inform
2. Eligible population, exclusions, and time window
3. Systems, events, and join keys that actually exist
4. Who reviews the numbers, and how often they decide

If a baseline, formula, join, or owner is unknown, leave it unknown. Do not invent win rates, usage, or ROI.

## Read The Right Reference

Read [references/kpi-tree-framework.md](references/kpi-tree-framework.md) for the four tiers, metric contract, and claim limits. Read [references/kpi-tree-examples.md](references/kpi-tree-examples.md) when the initiative is onboarding or a product launch and you need a worked tree.

## Default Workflow

1. Name the decision.
   One commercial question. One primary commercial metric. Done when a reviewer could continue, adjust, or stop from that number plus its leading indicators.
2. Tier the tree.
   Map enablement work to adoption, then execution, then productivity, then commercial. Every commercial metric needs at least one execution lead. Activity with no behavior link does not enter the success set.
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

## Output Contract

Return a plan a measurement owner can implement:

- The commercial question and the one primary commercial metric
- The tree, with every metric labeled adoption, execution, productivity, or commercial
- A metric dictionary: formula, grain, population, window, source, keys, or `not yet reproducible`
- Instrumentation and join rules for anything that does not exist yet
- Evidence design and the claim it can support
- QA checks with failure owners
- Continue / adjust / stop rules, or the missing decision
- Assumptions, and what you refused to invent

Do not attach an executive impact narrative unless the user asked for results they already have. That is `enablement-impact-story`.

## Quality Bar

- Every commercial metric has an execution lead; adoption is never the success metric.
- A second analyst can reproduce every claimed number from the contract.
- Attribution does not exceed the evidence design.
- No invented win rates, usage, baselines, or ROI.
- QA failures are visible and owned.
- The set fits the review cadence.
