# Seismic: Agent Workflow Playbook

This guide shows how enablement teams can use Seismic data and workflows with this repository's skills.

> Last verified: 2026-07-31. Seismic app scopes, tenant products, reporting tables, Early Access events, and write operations vary by tenant; verify them in the current data dictionary and developer portal.

## Scope And Limits

This playbook focuses on practical Seismic patterns for content, reporting, learning, and controlled sharing workflows. It is not a complete inventory of Seismic products, connectors, or rapidly changing AI-assisted capabilities.

Verify tenant-specific configuration, webhook behavior, and newly released Seismic features against current provider docs before treating them as durable workflow paths.

## What Seismic Is Most Useful For

Seismic is especially useful for:
- Reporting-grade content, engagement, learning, and usage data extraction.
- Event-driven automation (webhooks) when content/program states change.
- Controlled sharing workflows (for example, LiveSend) and embedded content discovery (Universal Content Picker).

## Practical Workflows

### 1) Weekly Content Effectiveness and Gap Prioritization

Goal: Identify what content is underperforming and what to build next.

Export/use from Seismic:
- Reporting API v2 datasets for content usage, content views, library content metadata, search behavior, and user activity.
- Data dictionary (`fields` and `tables`) to avoid metric-definition drift.
- Reporting API data is designed for ETL rather than high-frequency interactive reads and is updated at least once every 24 hours under the standard SLA.

Repo skills that benefit:
- `content-gap-analysis`
- `content-governance-system`
- `battlecard-builder`
- `one-pager-and-slide-outline`

Agent-ready formats:
- CSV or JSON from reporting extracts.
- SQL tables for recurring warehouse-backed analysis.

Outputs to publish back carefully:
- Prioritized refresh/create backlog.
- Metadata cleanup recommendations.
- Draft governance decisions (no automatic archival/deletion).

### 2) LiveSend Engagement -> Objection and Messaging Improvements

Goal: Turn buyer interaction signals into better talk tracks and objection handling.

Export/use from Seismic:
- LiveSend reporting tables (links, link contents, sessions, page views).
- Optional email and interaction reporting context.

Repo skills that benefit:
- `call-insights-to-objections`
- `objection-library-builder`
- `talk-track-builder`
- `value-prop-and-positioning`

Agent-ready formats:
- `livesend_links.csv`
- `livesend_link_contents.csv`
- `livesend_link_members.csv`
- `livesend_viewing_sessions.csv`
- `livesend_content_viewing_sessions.csv`
- `livesend_page_views.csv`

Outputs to publish back carefully:
- Updated objection library and talk tracks.
- Persona/stage message deltas for field rollout.

### 3) Readiness and Coaching Impact Loop

Goal: Connect training/coaching activity to seller behavior changes.

Export/use from Seismic:
- Learning/reporting datasets (assignments, learning progress, skill-related datasets).
- Program and task reporting to measure execution and completion.

Repo skills that benefit:
- `manager-coaching-cadence`
- `certification-program-builder`
- `onboarding-program-builder`
- `enablement-impact-story`

Agent-ready formats:
- Weekly CSV extracts by team/manager.
- Simple long-format event table (user, action, timestamp, program/skill).

Outputs to publish back carefully:
- Coaching focus areas by manager/team.
- Certification or onboarding update proposals.

### 4) Event-Driven Governance Alerts (Optional)

Goal: Reduce lag between content changes and enablement action.

Export/use from Seismic:
- Webhook events (content manager changes, workflow states, LiveDoc completion, user/group lifecycle, program/planner updates).
- Check each selected event in the current webhook catalog: several content, LiveSend, user/group, and program-task events are marked Early Access even when adjacent event families are generally available.

Repo skills that benefit:
- `content-governance-system`
- `quarterly-enablement-planner`
- `field-feedback-synthesizer`

Agent-ready formats:
- Raw webhook JSON payloads, normalized to an append-only event log.

Outputs to publish back carefully:
- Alert summaries and recommended follow-up tasks.
- Draft ownership routing, never automatic destructive actions.

## Recommended Data Package for Agents

Create a recurring extract package:
- `seismic_reporting_fields.csv`
- `seismic_reporting_tables.csv`
- `content_usage.csv`
- `content_views.csv`
- `library_contents.csv`
- `livesend_links.csv`
- `livesend_link_contents.csv`
- `livesend_link_members.csv`
- `livesend_viewing_sessions.csv`
- `livesend_content_viewing_sessions.csv`
- `livesend_page_views.csv`
- `learning_progress.csv`
- `webhook_events.jsonl` (if used)

Keep raw reporting data separate from canonical concepts and derived analysis:

| Raw Seismic dataset | Canonical concept | Derived signal (label as analysis) |
| --- | --- | --- |
| Library/content metadata and usage tables | `content_id`, `owner`, `audience`, `stage`, `used_at` | staleness, governance priority, content gap |
| LiveSend links, members, sessions, content sessions, page views | `share_id`, `recipient_id`, `session_id`, `content_id`, `viewed_at` | engagement depth, follow-up signal, message/content hypothesis |
| Assignments and learning progress | `learner_id`, `assignment_id`, `status`, `completed_at` | readiness gap, completion trend |
| Webhook envelope (`id`, `version`, `occurredAt`, `tenantId`, `data`) | `event_id`, `schema_version`, `occurred_at`, `tenant_id`, `payload` | routing priority, governance alert |

LiveSend engagement is directional. Do not convert views or time spent into objections, intent, or revenue influence without call/CRM evidence and an explicit analytical method.

## Formats Agents Can Reliably Work From

- CSV: best default for skill workflows and audits.
- JSON: best for webhook/event-driven processing.
- SQL tables: best for trend and cohort queries.
- Universal Content Picker callback JSON: useful for embedded workflow context (selected content ID, path, profile, properties).

## What Can Be Imported/Published Back (Carefully)

Safe first steps:
- Publish analysis outputs as drafts (content recommendations, coaching plans, launch updates).
- Generate sharing artifacts (for example, LiveSend links) only after explicit intent.
- Stage metadata or workflow updates for human review before execution.

Avoid by default:
- Automatic content deletions/archival.
- Bulk permission/taxonomy rewrites.
- Silent workflow-state changes in programs or approvals.

## Example Prompts Using Repo Skills

- "Use `content-gap-analysis` with `content_usage.csv`, `content_views.csv`, and `library_contents.csv`; return a prioritized role x stage gap matrix with confidence."
- "Use `call-insights-to-objections` on `livesend_link_contents.csv` + call notes to produce top objection patterns and recommended talk-track updates."
- "Use `manager-coaching-cadence` and `learning_progress.csv` to propose a 6-week manager coaching plan by team."
- "Use `enablement-impact-story` to summarize last quarter enablement impact from Seismic reporting extracts; include metric caveats where definitions changed."

## Safety Boundaries

- Keep auth and tenant secrets outside this repo.
- Start read-only; escalate to write operations only with explicit approval.
- Validate reporting field definitions against Seismic data dictionary before trend claims.
- For webhook automations, use idempotent processors and audit logs.
- Treat early-access webhook events as potentially unstable schema surfaces.

## Official Documentation Used

- [Seismic Developer Portal Home](https://developer.seismic.com/seismicsoftware/)
- [Seismic API Reference Overview](https://developer.seismic.com/seismicsoftware/reference/)
- [Reporting API Overview](https://developer.seismic.com/seismicsoftware/reference/h1-reporting-api-overview)
- [Reporting Data Dictionary: Fields](https://developer.seismic.com/seismicsoftware/reference/reporting-fieldsget)
- [Reporting Data Dictionary: Tables](https://developer.seismic.com/seismicsoftware/reference/reporting-tablesget)
- [Extracting Reporting Data with Python (JSON/CSV/SQL examples)](https://developer.seismic.com/seismicsoftware/docs/extracting-reporting-data-with-python)
- [Universal Content Picker](https://developer.seismic.com/seismicsoftware/docs/content-picker)
- [Webhooks Overview](https://developer.seismic.com/seismicsoftware/docs/webhooksoverview)
- [Generate LiveSend Link](https://developer.seismic.com/seismicsoftware/reference/generatelivesendlink)
- [LiveSend Links Reporting](https://developer.seismic.com/seismicsoftware/reference/reporting-livesendlinksget)
- [LiveSend Link Contents Reporting](https://developer.seismic.com/seismicsoftware/reference/reporting-livesendlinkcontentsget)
- [LiveSend Link Members Reporting](https://developer.seismic.com/seismicsoftware/reference/reporting-livesendlinkmembersget)
- [LiveSend Viewing Sessions Reporting](https://developer.seismic.com/seismicsoftware/reference/reporting-livesendviewingsessionsget)
- [LiveSend Content Viewing Sessions Reporting](https://developer.seismic.com/seismicsoftware/reference/reporting-livesendcontentviewingsessionsget)
- [LiveSend Page Views Reporting](https://developer.seismic.com/seismicsoftware/reference/reporting-livesendpageviewsget)
- [Microsoft Power Automate Seismic Configuration Connector](https://learn.microsoft.com/en-us/connectors/seismicconfiguration/)
- [Microsoft Power Automate Seismic Library Connector](https://learn.microsoft.com/en-us/connectors/seismiclibrary/)
