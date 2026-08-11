# Systems Registry

Use this directory when a skill needs real operating context from the systems enablement teams already use.

These are not API adapters. They are workflow playbooks for:
- pulling the right data out of common systems
- formatting it into agent-friendly inputs
- deciding which repo skills to run
- publishing outputs back safely when a human approves it

> Last verified: 2026-07-31. Vendor plans, permissions, APIs, and agent-native access paths change frequently; use each playbook's verification note before relying on a workflow.

## Scope And Limits

This directory is intentionally selective. It covers common, reliable workflows that help enablement teams use agents well; it does not attempt to document every feature, integration path, or AI-native workflow available inside each platform.

These systems evolve quickly. Treat each playbook as representative guidance for export, analysis, and controlled write-back patterns, then verify advanced, newly released, or tenant-specific capabilities against current vendor documentation and your workspace configuration.

## How To Use This Layer

1. Pick the system that already holds the most trustworthy evidence.
2. Export the minimum useful data for the task.
3. Run the matching skill with that export plus a short scope note.
4. Review outputs before any writeback to CRM, content platforms, or collaboration tools.

Default posture:
- read/analyze first
- keep exports minimal
- preserve traceability IDs in working files
- require explicit approval before writes

## System Playbooks

- [salesforce.md](salesforce.md): CRM exports for forecast, deal inspection, account briefs, and stage design.
- [hubspot.md](hubspot.md): CRM exports and imports for the same core revenue workflows in HubSpot teams.
- [gong.md](gong.md): call transcripts, metadata, and conversation patterns for coaching and objection analysis.
- [highspot.md](highspot.md): content performance, launch adoption, and governance workflows using Highspot data.
- [seismic.md](seismic.md): reporting, LiveSend, learning, and webhook-driven workflows from Seismic.
- [notion.md](notion.md): structured knowledge inputs and controlled writeback into Notion.
- [slack.md](slack.md): field-signal capture, launch feedback, and leadership narrative inputs from Slack.

Confluence is intentionally omitted. The repo is optimized around the systems above, and Notion covers the knowledge-base workflow we want to support here.

## Which System To Reach For

Use Salesforce or HubSpot when the task depends on:
- pipeline shape
- stage hygiene
- forecast risk
- account and renewal context

Use Gong when the task depends on:
- transcript evidence
- objection patterns
- call-level coaching signals

Use Highspot or Seismic when the task depends on:
- content inventory
- asset usage and engagement
- launch adoption
- governance decisions

Use Notion when the task depends on:
- source-of-truth docs
- planning artifacts
- structured operating pages
- controlled publishing of outputs

Use Slack when the task depends on:
- field feedback
- launch questions
- leader updates
- lightweight distribution after human review

## Skill To System Mapping

Use these as likely evidence sources, not as a claim that every tenant exposes every field or workflow.

- `account-brief-builder`: Salesforce, HubSpot, Gong, Notion, Slack
- `battlecard-builder`: Highspot, Seismic, Notion
- `call-insights-to-objections`: Gong, Slack, Highspot, Seismic
- `call-review-coach`: Gong
- `case-study-extractor`: Gong, Notion, Highspot, Seismic
- `certification-program-builder`: Seismic, Notion
- `content-gap-analysis`: Highspot, Seismic, Notion, Slack
- `content-governance-system`: Highspot, Seismic, Notion
- `deal-inspection-coach`: Salesforce, HubSpot, Gong
- `discovery-and-demo-structure`: Gong, Notion
- `discovery-rubric-auditor`: Gong
- `enablement-impact-story`: Highspot, Seismic, Salesforce, HubSpot, Notion, Slack
- `enablement-metrics-and-instrumentation`: Highspot, Seismic, Salesforce, HubSpot
- `enablement-program-design`: Notion, Seismic
- `enablement-router`: use this registry to select the system required by the downstream skill
- `executive-briefing-builder`: Salesforce, HubSpot, Notion
- `field-feedback-synthesizer`: Slack, Gong, Salesforce, HubSpot, Notion, Highspot, Seismic
- `forecast-risk-brief`: Salesforce, HubSpot, Slack
- `manager-coaching-cadence`: Seismic, Gong, Notion
- `mutual-action-plan-builder`: Salesforce, HubSpot, Notion
- `objection-library-builder`: Gong, Notion, Seismic, Slack
- `onboarding-program-builder`: Seismic, Notion
- `onboarding-to-value-playbook`: Salesforce, HubSpot, Notion
- `one-pager-and-slide-outline`: Highspot, Seismic, Notion
- `partner-enablement-package`: Notion, Highspot, Seismic, Slack
- `pipeline-stage-definition-and-exit-criteria`: Salesforce, HubSpot
- `product-launch-enablement`: Highspot, Seismic, Notion, Slack
- `proposal-rfp-orchestrator`: Notion, Slack
- `qbr-ebr-builder`: Salesforce, HubSpot, Highspot, Seismic, Notion
- `quarterly-enablement-planner`: Notion, Seismic
- `release-notes-to-seller-updates`: Notion, Slack, Highspot, Seismic
- `renewal-and-expansion-enablement`: Salesforce, HubSpot, Notion
- `revenue-enablement-context`: Notion as a durable home, plus any evidence system relevant to the context being built
- `roleplay-scenario-builder`: Gong, Notion, Seismic
- `talk-track-builder`: Gong, Highspot, Seismic, Notion
- `value-prop-and-positioning`: Notion, Highspot, Seismic, Gong
- `win-loss-synthesis`: Salesforce, HubSpot, Gong, Slack, Notion

## Input Packaging Rules

For most workflows, hand the agent:
- one or more CSV exports
- one short Markdown note describing scope, date range, and timezone
- any known field definitions or metric caveats

Include a compact source manifest in the note:

- source system, tenant/workspace, and access path (UI export, API, MCP, or connector)
- extraction timestamp, reporting window, and timezone
- source object/report and stable record IDs
- raw field names plus any canonical names used in the working files
- known omissions, redactions, refresh lag, and permission limits
- sensitivity classification and intended audience
- write-back intent: `none`, `draft`, or `approved action`

Prefer:
- one file per source object or report
- ISO dates
- stable IDs
- explicit segment/stage labels

Avoid:
- oversized raw dumps with unused columns
- silent joins across mismatched exports
- presenting derived signals as if they were raw vendor fields
- broad write access before the analysis is reviewed
