# Salesforce System Playbook For Agent Workflows

Use this playbook when a repo skill needs CRM evidence from Salesforce and you want consistent, agent-friendly inputs.

> Last verified: 2026-07-31. Salesforce editions, permissions, custom objects, report types, API versions, and field names vary by org; verify them in the target org.

## Scope And Limits

This playbook covers common Salesforce patterns that are reliable for enablement workflows. It is not a complete map of Salesforce features, ecosystem tooling, or newer AI-assisted capabilities.

Verify advanced automation, org-specific objects, and recently released features against current Salesforce documentation and your own workspace setup before treating them as supported workflow paths.

## What Salesforce Is Useful For In This Repo

Salesforce is strongest here for:

- `forecast-risk-brief`
- `deal-inspection-coach`
- `pipeline-stage-definition-and-exit-criteria`
- `account-brief-builder`
- `executive-briefing-builder`
- `qbr-ebr-builder`
- `renewal-and-expansion-enablement`

## How To Pull Data (Practical Paths)

Use the lightest path that fits the task:

1. Report export (fastest for one analysis cycle)
- Run a scoped report and export as `Details Only` CSV.
- Use this for forecast, deal inspection, and account briefing.
- Good when the user already has report logic and filters in place.

2. Data Export Service (broad snapshot)
- Use Setup -> Data Export for object-level CSV backups in zip files.
- Good for larger periodic snapshots and cross-skill analysis.
- Better for broad context building than for immediate tactical coaching.
- Select only the required objects when using an export as agent input. Scheduled cadence is edition-dependent, and generated zip files are short-lived.

3. Data Loader export (repeatable and higher volume)
- Use Data Loader when you need repeatable exports, larger volumes, or command-line automation.
- Good for scheduled extracts feeding recurring enablement workflows.
- The Data Loader UI supports Windows and macOS; its command-line automation interface is Windows-only.

## Minimal Data To Pull Per Skill

Use these as minimum columns so agents can produce reliable outputs.

### `forecast-risk-brief`

- Objects: `Opportunity` (required), `Account` (recommended)
- Minimum fields:
  - Opportunity ID
  - Opportunity Name
  - Account ID or Name
  - Owner
  - Stage
  - Close Date
  - Amount
  - Forecast Category (if used)
  - Last Modified Date
  - Next Step
  - Created Date

### `deal-inspection-coach`

- Objects: `Opportunity`, `Account`, `Contact Roles` (if available)
- Minimum fields:
  - Opportunity ID and Name
  - Stage and a real stage-timing source, such as Opportunity History / Stage Duration
  - Amount
  - Close Date
  - Next Step
  - Primary contact/stakeholder fields available in your org

### `account-brief-builder` and `executive-briefing-builder`

- Objects: `Account`, `Opportunity`, recent activity source
- Minimum fields:
  - Account Name
  - Industry/Segment fields used by your team
  - Active opportunities and stages
  - Renewal fields (if account-focused)
  - Recent activity timestamps

### `pipeline-stage-definition-and-exit-criteria`

- Objects: `Opportunity`
- Minimum fields:
  - Stage
  - Stage change timing data available in your org
  - Win/Loss outcomes
  - Close Date variance patterns

### `qbr-ebr-builder` and `renewal-and-expansion-enablement`

- Objects: `Account`, `Opportunity` (renewal/expansion), optional product/usage source outside Salesforce
- Minimum fields:
  - Account ID/Name
  - Renewal date or renewal indicator fields
  - Expansion opportunity fields
  - Amount and stage
  - Owner

## Raw Fields, Canonical Concepts, And Derived Signals

| Salesforce raw field or report column | Canonical concept | Derived signal (do not present as a raw field) |
| --- | --- | --- |
| Opportunity ID, Account ID | `opportunity_id`, `account_id` | join coverage, duplicate risk |
| Stage, Forecast Category | `stage`, `forecast_category` | forecast confidence, stage-fit assessment |
| Amount, Close Date | `amount`, `close_date` | weighted exposure, timing risk |
| Created Date, Last Modified Date | `created_at`, `updated_at` | record age and staleness; not stage duration |
| Opportunity History: From Stage, To Stage, Stage Duration | `stage_from`, `stage_to`, `stage_duration_days` | stage velocity, stall risk |
| Next Step, Last Activity | `next_step`, `last_activity_at` | next-step quality, inactivity risk |

Do not infer stage duration from `Created Date` and `Last Modified Date`. Either use the Opportunity History report type and its Stage Duration field, or label stage timing as unavailable.

## Agent-Friendly Input Formats

Most reliable formats for Codex/Claude:

- CSV export from Salesforce reports (`Details Only`)
- CSV from Data Loader export
- Small Markdown summary plus attached CSV for context

If possible, provide:
- one file per object or report
- ISO dates
- explicit timezone assumption for date cutoffs

## What Skill Outputs Can Be Written Back

Use writeback only after explicit user confirmation.

Usually safe to write back:

- risk flags or inspection notes as draft fields/comments in your internal process
- next-step recommendations into planning docs first, then CRM if approved
- cleaned stage-exit definitions into governance docs before CRM field/process changes

If you must import updates into Salesforce:

- Use Data Import Wizard only for smaller loads of objects it explicitly supports. It does not import Opportunity records.
- Use Data Loader for larger/batch updates or recurring loads.
- Use Data Loader or an approved API path for Opportunity updates.
- Start with a small test file before full import.

## Example Prompts For This Repo

- `Use $forecast-risk-brief on this Salesforce opportunity export (CSV). Focus on enterprise deals closing this quarter.`
- `Use $deal-inspection-coach on this stage-3 pipeline export and highlight top 5 at-risk deals with coachable actions.`
- `Use $pipeline-stage-definition-and-exit-criteria on this 12-month closed-won/lost export and propose measurable exit criteria per stage.`
- `Use $account-brief-builder for this strategic account using the attached Salesforce account/opportunity exports.`

## Safety And Privacy Boundaries

- Keep the default workflow read-only for Salesforce.
- Do not update stages, close dates, owners, or forecast categories automatically.
- Redact customer-sensitive fields before sharing outputs outside the immediate team.
- Keep IDs for traceability in working files, but remove unnecessary identifiers in broad distribution artifacts.
- Label assumptions whenever exports are stale, sparse, or missing critical fields.

## Operational Notes From Official Docs

- Salesforce report runs can be exported as detailed CSV for agent analysis.
- Data Export Service produces object-level CSV snapshots in zip files and is better for broad periodic pulls.
- Data Loader is a client app for bulk export/import and supports recurring, repeatable workflows.
- Data Import Wizard is the safer default for lighter admin-guided imports.

## Official Salesforce Docs Used

- [Data Export Service and Data Loader (Trailhead)](https://trailhead.salesforce.com/content/learn/modules/lex_implementation_data_management/lex_implementation_data_export)
- [Salesforce Data Loader (Developer)](https://developer.salesforce.com/tools/data-loader)
- [Data Import Best Practices (Trailhead)](https://trailhead.salesforce.com/content/learn/modules/lex_implementation_data_management/lex_implementation_data_import)
- [Reports and Dashboards: Quick Look (Trailhead)](https://trailhead.salesforce.com/content/learn/modules/reports-dashboards-quick-look/learn-about-reports-and-dashboards)
- [Manage Reported Data: Export report details as CSV (Trailhead project)](https://trailhead.salesforce.com/content/learn/projects/create-reports-and-dashboards-for-sales-and-marketing-managers/manage-reported-data)
- [Create a report on Opportunity stage duration](https://help.salesforce.com/s/articleView?id=000392663&language=en_US&type=1)
- [Opportunity report fields, including Stage Duration](https://help.salesforce.com/s/articleView?id=sf.reports_oppforesales_tips.htm&language=en_US&type=5)
- [Data Import Wizard supported record types](https://help.salesforce.com/s/articleView?id=sf.records_gen_info.htm&language=en_US&type=5)
