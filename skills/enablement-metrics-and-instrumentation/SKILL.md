---
name: enablement-metrics-and-instrumentation
description: Define revenue enablement metrics and instrumentation plans that connect enablement activities to business outcomes. Use when the user asks for KPI frameworks, leading and lagging indicator design, measurement plans, or instrumentation mapping across CRM, learning, content, and performance systems. Route executive narrative packaging of results to enablement-impact-story.
---

# Enablement Metrics And Instrumentation

Build a measurement system that links enablement work to observable performance change.

## Confirm Inputs First

Confirm:

- Initiative goals and intended behavior change
- Systems available for data capture
- Current baseline metrics
- Reporting audience and decision cadence
- Data quality constraints
- Whether a current context artifact from `revenue-enablement-context` exists

If blockers remain, ask only for missing baseline or data-source details. Otherwise proceed with assumptions and confidence labels.

## Read The Right Reference

Read [references/kpi-tree-framework.md](references/kpi-tree-framework.md) before defining metrics.
Read [references/kpi-tree-examples.md](references/kpi-tree-examples.md) when you need canonical metric-tree examples for onboarding and launch programs.

## Default Workflow

1. Reuse current `revenue-enablement-context` if available; otherwise label assumptions that affect metric interpretation.
2. Translate initiative goals into a logic chain: activity -> behavior -> business outcome.
3. Select one primary business outcome per initiative to prevent metric sprawl.
4. Define leading indicators for adoption, readiness, and execution quality.
5. Define lagging indicators for commercial outcomes.
6. Map each metric to owner, source system, and refresh cadence.
7. Set baseline, target, and review thresholds.
8. Add data quality checks and interpretation caveats.
9. Produce KPI tree and instrumentation plan.

## What To Avoid

- Using activity counts as success metrics with no behavior or outcome link.
- Tracking too many KPIs to drive decisions.
- Claiming causality from one trend line without confounder checks.
- Defining metrics that no system can actually measure.

## Tool Notes

- Keep metric design tool-agnostic.
- If tools exist, map metrics to existing CRM, BI, LMS, and content systems instead of proposing new infrastructure.
- For outcome-sensitive reporting, highlight data freshness and missingness explicitly.

## Output Contract

Default output includes:

- KPI tree
- Metric dictionary with formulas
- Instrumentation map by system and owner
- Baseline and target table
- Review cadence and exception thresholds
- Decision-use notes: what each metric should trigger (continue, adjust, stop)

## Quality Bar

- Leading and lagging indicators are clearly connected.
- Metrics are measurable with available systems.
- Attribution limits are explicit to avoid false certainty.
- Outputs support real operating decisions, not dashboard noise.
- Metric set is compact enough to run in a real operating cadence.
