# Gong System Playbook

This playbook explains how revenue enablement teams can use Gong data with the skills in this repo.

> Last verified: 2026-07-31. Public API, Data Cloud, MCP, seat, permission, and Gong-credit behavior can vary by tenant and contract; confirm access with a Gong technical admin.

## Scope And Limits

This playbook focuses on reliable Gong workflows for transcript analysis, coaching, and objection work. It does not attempt to cover every Gong capability, adjacent integration, or newer AI-led workflow surface.

Verify newly released features, tenant-specific data access, and advanced automation options against current Gong documentation and your own configuration before expanding beyond these patterns.

## What Gong Is Useful For In This Repo

- Evidence-backed call coaching and rep feedback
- Discovery quality audits using real transcript evidence
- Objection mining across many calls
- Field feedback synthesis from customer conversations
- Deal inspection support when paired with CRM context

Most relevant repo skills:

- `call-review-coach`
- `call-insights-to-objections`
- `discovery-rubric-auditor`
- `deal-inspection-coach`
- `field-feedback-synthesizer`
- `discovery-and-demo-structure`

## How To Pull Data

Use one of these paths based on scope and speed.

### Path A: UI-first for single-call or small-batch work

- Open the call page and use transcript/snippet UI.
- Download the transcript only when the user's assigned seat and permission profile allow it.
- Use this for coaching, rubric audits, and rapid analysis.

### Path B: Public API for near-real-time programmatic pulls

- Requires Gong API access from a Technical Admin.
- API docs are available in Gong app settings.
- Respect the default customer-wide limits (3 requests/sec and 10,000 requests/day across API endpoints), and verify any tenant-specific limits.
- Use this for repeatable pipelines, weekly objection mining, and automation workflows.

### Path C: Data Cloud for analytics teams and warehouse-first workflows

- Use when analysts need normalized reporting tables.
- Good for BI dashboards and cross-system analysis.
- Most Data Cloud analytics are refreshed daily rather than near-real-time; verify destination-specific and dataset-specific exceptions before setting freshness expectations.

### Path D: Gong MCP for account/deal insight workflows

- The hosted Gong MCP server is read-only and returns AI-generated account/deal insights, not raw transcripts or activity lists.
- Private calls are excluded. Personal access follows the authorizing user's permissions; shared access is organization-wide and should be reserved for governed backend/reporting use.
- A paid Gong seat, technical-admin setup, OAuth client credentials, and sufficient Gong credits are required.
- Use MCP for fast account reviews, deal reviews, and executive briefing inputs. Use UI/API transcript extraction when the skill needs timestamped primary evidence.

## Data To Export For Agent Workflows

For most skills, collect this minimum data:

- Call ID and call URL
- Call date/time and duration
- Team, segment, and rep metadata
- Associated account/opportunity identifiers if available
- Full transcript text or timestamped snippets
- Speaker attribution
- Call outcome/status markers
- Tracker/key-topic hits when available

### Skill-to-Field Mapping

Keep raw Gong data separate from canonical concepts and agent-derived signals.

| Skill | Raw Gong inputs | Canonical concepts | Derived signals (label as analysis) |
| --- | --- | --- | --- |
| `call-review-coach` | call ID/URL, transcript, speaker attribution, call type, occurred time | `source_id`, `source_url`, `speaker_turns`, `occurred_at` | coaching moments, behavior patterns, recommended changes |
| `discovery-rubric-auditor` | transcript, speaker attribution, call date/type | `speaker_turns`, `occurred_at`, `call_type` | questions asked, discovery depth, next-step quality |
| `call-insights-to-objections` | transcript/snippets, tracker hits, rep/team metadata, linked CRM IDs | `evidence_text`, `segment`, `stage`, `account_id`, `opportunity_id` | objection clusters, prevalence, outcome relationship |
| `field-feedback-synthesizer` | transcript/snippets, rep/team metadata, linked customer context | `evidence_text`, `team`, `segment`, `customer_context` | topic clusters, sentiment, confidence |
| `deal-inspection-coach` | transcript, timestamps, call URL, linked account/opportunity IDs | `evidence_text`, `occurred_at`, `account_id`, `opportunity_id` | deal-risk signals, chronology, manager intervention |

## Formats Agents Can Work From Reliably

- JSON array of calls with transcript text and metadata
- CSV with one row per call plus transcript column
- Markdown packet with one section per call and clear headings

Recommended JSON shape:

```json
[
  {
    "call_id": "123",
    "call_url": "https://app.gong.io/call?id=123",
    "occurred_at": "2026-03-01T10:00:00Z",
    "rep_name": "Rep A",
    "segment": "Mid-Market",
    "stage": "Discovery",
    "account_name": "Example Co",
    "transcript": "...",
    "snippets": [
      {"start_sec": 640, "text": "We are worried about rollout risk"}
    ],
    "trackers": ["price", "security"],
    "derived": {
      "outcome": "next_meeting_booked"
    }
  }
]
```

## What Can Be Written Back Or Shared

Direct write-back in Gong is limited compared with read/analysis workflows. Practical destinations for skill outputs are usually:

- CRM notes/tasks (for managers and deal teams)
- Notion or internal docs for playbooks and coaching artifacts
- Slack channel summaries for launches or field patterns

Gong-native write scenarios are typically admin/system workflows, such as uploading external recordings or managing user/CRM data via API.

## Example Prompts Using This Repo

- `Use $call-review-coach on this Gong transcript and return a manager-ready coaching plan with top 3 behavior changes.`
- `Use $discovery-rubric-auditor on these 12 Gong calls from enterprise discovery stage and score each against discovery depth and next-step quality.`
- `Use $call-insights-to-objections on this weekly Gong export and produce the top objection clusters by segment, with evidence snippets and recommended enablement actions.`
- `Use $field-feedback-synthesizer on these Gong snippets plus Slack notes and produce theme clusters with confidence labels.`
- `Use $deal-inspection-coach with this Gong call pack and linked Salesforce opportunity IDs to surface deal-risk signals and next manager interventions.`

## Safety And Privacy Boundaries

- Treat transcripts as sensitive data; redact customer-identifying or confidential details before broad sharing.
- Do not auto-post transcript-derived analysis to wide channels without review.
- Keep access scoped to minimum roles needed for the workflow.
- If transcript redaction is requested, note that redaction is irreversible and can reduce downstream Gong AI/tracker quality.
- Require explicit approval before any destructive or broad-distribution action.

## Official Gong Sources Used

- API access and in-app API docs location: https://help.gong.io/docs/receive-access-to-the-api
- OAuth app setup: https://help.gong.io/docs/create-an-app-for-gong
- API vs Data Cloud tradeoffs: https://help.gong.io/docs/choosing-between-gongs-api-and-data-cloud-for-analytics
- Transcript usage and download behavior: https://help.gong.io/docs/view-a-call-transcript
- Transcript redaction behavior and impact: https://help.gong.io/docs/redact-sensitive-information
- CRM export behavior (transcripts not exported): https://help.gong.io/docs/export-data-as-salesforce-tasks-or-events
- Gong rules and Zapier automation behavior: https://help.gong.io/docs/faqs-for-gong-rules
- Gong MCP server behavior: https://help.gong.io/docs/about-gong-mcp-server
- Gong MCP integration setup: https://help.gong.io/docs/create-an-integration-to-connect-to-the-mcp-server
- Gong MCP and AI API credit usage: https://help.gong.io/docs/how-mcp-server-tools-and-apis-consume-credits
- Public API default rate-limit example: https://help.gong.io/docs/uploading-calls-from-a-non-integrated-telephony-system
