---
name: enablement-metrics-and-instrumentation
description: Define revenue enablement KPI trees and measurement plans that connect enablement work to business outcomes. Use when the user asks for KPI frameworks, leading and lagging indicators, measurement plans, or instrumentation across CRM, learning, content, and performance systems. Route executive narrative packaging of results to enablement-impact-story.
---

# Enablement Metrics And Instrumentation

Build a measurement system that links enablement work to observable performance change.

## Confirm Inputs First

Confirm:

- Initiative goals and intended behavior change
- Systems available for data capture
- Current baseline metrics
- Eligible populations, exclusions, time windows, and segmentation needs
- Stable entity IDs, event timestamps, and join keys available across systems
- Reporting audience and decision cadence
- Data quality constraints
- Supplied current context or relevant sections of `.enablement/context.md`, when available; stale, inferred, or conflicted material remains provisional

If blockers remain, ask only for the missing metric definitions, ownership decisions, or data-source details. Use labeled assumptions only for reversible measurement design; leave definitions, baselines, joins, thresholds, ownership, and source behavior unknown until verified.

## Read The Right Reference

Read [references/kpi-tree-framework.md](references/kpi-tree-framework.md) before defining metrics.
Read [references/kpi-tree-examples.md](references/kpi-tree-examples.md) when you need canonical metric-tree examples for onboarding and launch programs.

## Default Workflow

1. Set the initiative, population, definitions, and evidence boundary from supplied current context and source material.
2. Translate initiative goals into a logic chain: activity -> behavior -> business outcome.
3. Select one primary business outcome per initiative to prevent metric sprawl.
4. Define leading and lagging metrics with formula, numerator, denominator, grain, population, filters, and time window.
5. Specify missing instrumentation as durable events or snapshots with stable IDs, timestamps, required properties, and system owner.
6. Define joins, source precedence, and point-in-time rules before combining systems.
7. Set verified baseline, target, and continue/adjust/stop thresholds. When a value is not supported, record the missing decision, decision owner, and required-by point rather than inventing it.
8. Define the evidence design appropriate to the claim: descriptive, contribution, or causal. Record eligibility and exposure, comparison method, lag window, material confounders, sample sufficiency, practical or statistical decision rule, and failure conditions.
9. Add QA tests for completeness, uniqueness, validity, referential integrity, timeliness, and reconciliation.
10. Define access, privacy, retention, refresh, and exception ownership.
11. Produce the KPI tree, metric dictionary, data contract, evidence design, and instrumentation plan.

## What To Avoid

- Using activity counts as success metrics with no behavior or outcome link.
- Tracking too many KPIs to drive decisions.
- Claiming causality from one trend line without checking other factors.
- Defining metrics that no system can actually measure.
- Joining mismatched grains or current-state fields in ways that rewrite historical truth.
- Treating a UI click as the target behavior when a durable business event exists.

## Tool Notes

- Keep metric design tool-agnostic.
- If tools exist, map metrics to existing CRM, BI, LMS, and content systems instead of proposing new infrastructure.
- For outcome-sensitive reporting, highlight data freshness and missingness explicitly.
- Do not recommend production tracking changes or new data collection without identifying the responsible system owner and approval path.
- Do not change production tracking, create external records, or publish reports without explicit user approval of the exact scope and destination.

## Output Contract

Default output includes:

- KPI tree
- Metric dictionary with formulas
- Instrumentation map by system and owner
- Event/snapshot data contract with grain, keys, filters, joins, and source precedence when new capture or historical state is required
- QA and reconciliation plan with failure owner
- Baseline and target table
- Evidence design with claim mode, eligibility and exposure, comparison strategy, lag, confounders, sufficiency, and failure conditions
- Review cadence and exception thresholds
- Decision-use notes: what each metric should trigger (continue, adjust, stop)

## Quality Bar

- Leading and lagging indicators are clearly connected.
- Every metric is reproducible from named fields, filters, joins, and time windows.
- Join logic preserves source grain and historical state.
- QA failures have a visible owner and block unsupported claims.
- Attribution limits are explicit to avoid false certainty.
- Outputs support real operating decisions, not dashboard noise.
- Metric set is compact enough to run in a real operating cadence.
