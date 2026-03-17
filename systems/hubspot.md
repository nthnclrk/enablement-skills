# HubSpot System Playbook For Agent Workflows

Use this playbook when a repo skill needs CRM evidence from HubSpot and you want reliable, low-friction inputs for Codex/Claude Code.

## Scope And Limits

This playbook covers representative HubSpot workflows that are dependable for enablement analysis and controlled write-back. It is not an exhaustive guide to HubSpot's full product surface or newer AI-native features.

Verify advanced automations, portal-specific limits, and recently released capabilities against current HubSpot documentation and your workspace configuration before relying on them.

## What HubSpot Is Useful For In This Repo

HubSpot is strongest here for:

- `forecast-risk-brief`
- `deal-inspection-coach`
- `pipeline-stage-definition-and-exit-criteria`
- `account-brief-builder`
- `executive-briefing-builder`
- `qbr-ebr-builder`
- `renewal-and-expansion-enablement`
- `field-feedback-synthesizer` (when notes/calls are captured in CRM activity)

## How To Pull Data (Practical Paths)

Use the lightest path that fits the task:

1. Object view export in-app (fastest for one analysis cycle)
- Go to object index views (for example Deals, Companies, Contacts), open the exact filtered view, then export.
- Best for immediate analysis where your saved view already captures scope.
- Include associations when needed (for example company + deal context).

2. List/view export via CRM Exports API (repeatable automation)
- Use API export jobs when you need repeatable or scheduled extracts.
- Poll export status, then download generated file(s).
- Best for recurring enablement workflows or multi-team pipelines.

3. One-record contact export (privacy/compliance workflows)
- Use contact-level export when handling DSAR-style or single-account investigations.
- This is usually too narrow for pipeline-level enablement analysis, but useful for audit support.

## Minimal Data To Pull Per Skill

Use these as minimum columns so agents can produce reliable outputs.

### `forecast-risk-brief`
- Objects: `Deals` (required), `Companies` (recommended)
- Minimum deal fields:
  - Record ID
  - Deal Name
  - Deal Owner
  - Pipeline
  - Deal Stage
  - Amount
  - Close Date
  - Create Date
  - Last Modified Date
- Recommended additions:
  - Forecast-related properties used by your team
  - Next activity date
  - Associated company name + Record ID

### `deal-inspection-coach`
- Objects: `Deals`, `Companies`, associated activity where available
- Minimum fields:
  - Deal Record ID and name
  - Stage and pipeline
  - Amount
  - Close date
  - Create date and last modified date
  - Deal owner
  - Associated contacts/companies
- Optional but high-value:
  - Call/meeting recency indicators
  - Last activity date and next activity date

### `account-brief-builder` and `executive-briefing-builder`
- Objects: `Companies`, associated `Deals`, associated key `Contacts`
- Minimum fields:
  - Company Record ID and name
  - Industry, segment/tier, owner
  - Open deals (stage, amount, close date)
  - Key stakeholders (name/title where available)
  - Recent activity timestamps

### `pipeline-stage-definition-and-exit-criteria`
- Objects: `Deals`
- Minimum fields:
  - Pipeline
  - Deal stage
  - Win/loss outcome fields used by your team
  - Create date, close date, last modified date
  - Stage movement evidence available in your reporting/export layer

### `qbr-ebr-builder` and `renewal-and-expansion-enablement`
- Objects: `Companies`, `Deals`
- Minimum fields:
  - Company Record ID and name
  - Renewal/term dates (if tracked)
  - Expansion deal indicators
  - Deal stage, amount, owner
  - Recent commercial activity markers

## Agent-Friendly Input Formats

Most reliable formats for Codex/Claude:

- CSV exports from object views (preferred)
- XLSX exports when CSV is not practical
- CSV plus a short Markdown context note (scope, date window, timezone)

If exporting associations:
- Keep Record ID columns in the file.
- Prefer explicit association columns over inferred joins.

## What Skill Outputs Can Be Written Back

Use writeback only after explicit user confirmation.

Usually safe to write back:

- Draft risk labels or inspection notes into review fields (if your team has dedicated fields)
- Next-step plans into notes/tasks before changing core forecast properties
- Stage-exit guidance into internal enablement docs before CRM schema/process changes

If importing updates into HubSpot:

- Use imports to create/update records with a unique identifier.
- Prefer `Record ID` for deterministic updates.
- Use small pilot imports first (single team/segment), then scale.
- Note: existing emails, meetings, notes, and tasks cannot be updated via import.

## Example Prompts For This Repo

- `Use $forecast-risk-brief on this HubSpot deals export (CSV) for this quarter. Prioritize enterprise deals with close dates in the next 45 days.`
- `Use $deal-inspection-coach on this HubSpot stage-2 and stage-3 deals export. Return top 8 intervention opportunities and concrete manager coaching actions.`
- `Use $pipeline-stage-definition-and-exit-criteria on this 12-month HubSpot closed won/lost deal export and propose measurable exit criteria by stage.`
- `Use $account-brief-builder for this strategic account using HubSpot company + associated deals exports.`

## Safety And Privacy Boundaries

- Default to read-only CRM access.
- Do not auto-update stage, owner, close date, lifecycle, or forecast properties.
- Keep customer PII (emails, phone numbers, personal notes) out of broad team outputs unless required.
- Use least-data exports: only properties required for the target skill.
- Treat exports as sensitive files and store/share with the same controls as CRM access.

## Operational Notes From Official Docs

- HubSpot record exports are asynchronous and delivered via email/download links.
- Export files can include associations; defaults and limits apply unless explicitly customized.
- HubSpot supports high-volume exports, and large exports can be partitioned into multiple files/zip archives.
- Import updates require unique identifiers; `Record ID` supersedes other unique identifiers when present.

## Official HubSpot Docs Used

- [Export your records](https://knowledge.hubspot.com/import-and-export/export-records)
- [Import records for multiple objects](https://knowledge.hubspot.com/import-and-export/import-objects)
- [Understand the import tool](https://knowledge.hubspot.com/import-and-export/understand-the-import-tool)
- [Export contact data](https://knowledge.hubspot.com/import-and-export/export-contact-data)
- [CRM Exports API guide](https://developers.hubspot.com/docs/api-reference/crm-exports-v3/guide)
- [CRM Exports API changelog: partitioning and association limits](https://developers.hubspot.com/changelog/crm-export-partitioning-and-association-limits)
