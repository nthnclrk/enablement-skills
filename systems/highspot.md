# Highspot: Agent Workflow Playbook

This guide shows how enablement teams can use Highspot data and workflows with this repository's skills.

## Scope And Limits

This playbook is intentionally conservative. It covers representative Highspot workflows that are useful for agent-assisted enablement work, not the full product surface or every AI-enabled experience inside the platform.

Some deeper Highspot documentation is tenant-gated. Verify advanced capabilities, admin-only operations, and recently released features against current Highspot docs and your workspace before relying on them operationally.

## What Highspot Is Most Useful For

Highspot is best used as the operating system for:
- Content governance at scale (find stale, low-value, or off-message assets).
- Buyer engagement visibility (which assets and rooms are actually used).
- In-workflow enablement via CRM/collaboration integrations.

From official Highspot docs: content scorecards, bulk actions, initiative analytics, and CRM-linked engagement are core capabilities.

## Practical Workflows

### 1) Monthly Content Governance Sweep

Goal: Decide what to archive, refresh, or create next.

Export/use from Highspot:
- Content inventory and metadata (asset name, owner, last updated, tags, audience/stage).
- Content performance signals (views, shares, downloads, engagement outcomes).
- Scorecard or analytics snapshots tied to initiatives.

Repo skills that benefit:
- `content-gap-analysis`
- `content-governance-system`
- `battlecard-builder`
- `one-pager-and-slide-outline`

Agent-ready formats:
- CSV exports from analytics/reporting views or connected CRM/BI extracts.
- JSON exports if your team has governed API access.
- Tabular copies from dashboard views when exports are restricted.

Outputs to publish back carefully:
- Approved archive/update list.
- Metadata/tagging normalization plan.
- Net-new content brief backlog.

Do not auto-publish archives/deletions. Require explicit human approval first.

### 2) Launch Readiness and Field Adoption Loop

Goal: Check whether launch assets are actually used in active deals.

Export/use from Highspot:
- Launch asset usage and engagement.
- Digital room/activity signals.
- CRM-linked activity context (where available via integration).

Repo skills that benefit:
- `product-launch-enablement`
- `talk-track-builder`
- `field-feedback-synthesizer`
- `call-insights-to-objections`

Agent-ready formats:
- Weekly CSV snapshots by launch asset.
- Deal-stage pivot tables.
- Short qualitative field notes from Slack/CRM comments.

Outputs to publish back carefully:
- Updated launch talk tracks.
- Objection handling deltas.
- "Keep/refresh/retire" decision memo per launch asset.

### 3) Rep Enablement Impact Story

Goal: Turn usage + outcome signals into an executive narrative.

Export/use from Highspot:
- Initiative scorecards and engagement trends.
- Training/content adoption patterns.
- Revenue-linked indicators from CRM-connected workflows.

Repo skills that benefit:
- `enablement-impact-story`
- `enablement-metrics-and-instrumentation`
- `qbr-ebr-builder`

Agent-ready formats:
- Monthly KPI tables (CSV/XLSX).
- Simple metric dictionary (field name -> business meaning).

Outputs to publish back carefully:
- Exec-ready narrative brief.
- KPI definition updates for consistency.

## Recommended Data Package for Agents

Create a recurring extract package:
- `content_inventory.csv`
- `content_engagement.csv`
- `initiative_scorecard_snapshot.csv`
- `crm_context_extract.csv` (if integrated)
- `field_feedback_notes.md`

Minimum columns to include:
- Content ID, title, owner, team, persona, stage, created/updated date.
- Views, shares, downloads, buyer/room engagement, influenced outcomes where available.

## Example Prompts Using Repo Skills

- "Use `content-gap-analysis` on `content_inventory.csv` + `content_engagement.csv` and produce top 10 gaps by role/stage with confidence scores."
- "Use `content-governance-system` to generate a 30-day archive/update queue from low-usage and stale assets, but return draft actions only."
- "Use `enablement-impact-story` to build a QBR narrative from `initiative_scorecard_snapshot.csv` and `crm_context_extract.csv`."

## Safety Boundaries

- Default to read/analyze workflows.
- Never auto-archive, auto-delete, or change permissions.
- Treat CRM-linked signals as directional until validated with RevOps.
- Keep credentials and tenant config out of this repo.
- If API/support docs are tenant-gated, confirm allowed export/write paths with your Highspot admin before automation.

## Official Documentation Used

- [Highspot Integrations](https://www.highspot.com/integrations/)
- [Highspot Analytics](https://www.highspot.com/product/analytics/)
- [Highspot Sales Content Management](https://www.highspot.com/product/sales-content-management-system/)
- [Highspot + Salesforce integration](https://www.highspot.com/integrations/salesforce/)
- [Highspot + Slack integration](https://www.highspot.com/integrations/slack/)
- [Highspot Integration Directory (Exchange)](https://exchange.highspot.com/integrations)
- [Highspot Developer Portal (sign-in required)](https://developers.highspot.com/)
- [Highspot Support Portal (sign-in required)](https://support.highspot.com/)
