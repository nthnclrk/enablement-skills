# Systems Registry

Use this directory when a skill needs real operating context from the systems enablement teams already use.

These are not API adapters. They are workflow playbooks for:
- pulling the right data out of common systems
- formatting it into agent-friendly inputs
- deciding which repo skills to run
- publishing outputs back safely when a human approves it

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

- `forecast-risk-brief`: Salesforce, HubSpot
- `deal-inspection-coach`: Salesforce, HubSpot, Gong
- `pipeline-stage-definition-and-exit-criteria`: Salesforce, HubSpot
- `account-brief-builder`: Salesforce, HubSpot, Gong, Notion
- `executive-briefing-builder`: Salesforce, HubSpot, Notion
- `qbr-ebr-builder`: Salesforce, HubSpot, Highspot, Seismic, Notion
- `call-insights-to-objections`: Gong, Slack
- `call-review-coach`: Gong
- `discovery-rubric-auditor`: Gong
- `content-gap-analysis`: Highspot, Seismic, Notion, Slack
- `content-governance-system`: Highspot, Seismic, Notion
- `battlecard-builder`: Highspot, Seismic, Notion
- `product-launch-enablement`: Highspot, Seismic, Notion, Slack
- `release-notes-to-seller-updates`: Notion, Slack, Highspot, Seismic
- `field-feedback-synthesizer`: Slack, Gong, Salesforce, HubSpot
- `enablement-impact-story`: Highspot, Seismic, Salesforce, HubSpot, Notion

## Input Packaging Rules

For most workflows, hand the agent:
- one or more CSV exports
- one short Markdown note describing scope, date range, and timezone
- any known field definitions or metric caveats

Prefer:
- one file per source object or report
- ISO dates
- stable IDs
- explicit segment/stage labels

Avoid:
- oversized raw dumps with unused columns
- silent joins across mismatched exports
- broad write access before the analysis is reviewed
