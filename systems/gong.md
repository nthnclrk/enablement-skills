# Gong System Playbook

This playbook explains how revenue enablement teams can use Gong data with the skills in this repo.

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
- Download transcript only if your org enables transcript download in profile settings.
- Use this for coaching, rubric audits, and rapid analysis.

### Path B: Public API for near-real-time programmatic pulls

- Requires Gong API access from a Technical Admin.
- API docs are available in Gong app settings.
- Respect rate limits (3 requests/sec and 10,000 requests/day per token).
- Use this for repeatable pipelines, weekly objection mining, and automation workflows.

### Path C: Data Cloud for analytics teams and warehouse-first workflows

- Use when analysts need normalized reporting tables.
- Good for BI dashboards and cross-system analysis.
- Not near-real-time by design, and updates are daily.

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

| Skill | Must-have Gong fields | Nice-to-have Gong fields |
| --- | --- | --- |
| `call-review-coach` | call URL, transcript, speaker turns, call type, date | tracker hits, moments/snippets |
| `discovery-rubric-auditor` | transcript, speaker turns, questions asked, next-step language | topic/tracker tags, outcome marker |
| `call-insights-to-objections` | transcript/snippets, segment, stage, rep/team, date window | tracker tags, call outcome |
| `field-feedback-synthesizer` | transcript snippets, rep/team metadata, customer context | talk ratio, topic clusters |
| `deal-inspection-coach` | transcript evidence plus linked deal/account IDs | tracker tags, chronology of call moments |

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
    "outcome": "next_meeting_booked"
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

- API access and in-app API docs location: https://help.gong.io/docs/receive-access-to-api
- OAuth app setup: https://help.gong.io/docs/create-oauth-app
- API vs Data Cloud tradeoffs: https://help.gong.io/docs/how-to-use-api-and-data-cloud
- Transcript usage and download behavior: https://help.gong.io/docs/see-a-call-transcript
- Transcript redaction behavior and impact: https://help.gong.io/docs/redact-call-transcript-data
- CRM export behavior (transcripts not exported): https://help.gong.io/docs/export-data-as-salesforce-tasks-or-events
- Slack sharing automation entry point: https://help.gong.io/docs/send-call-data-to-slack-via-zapier
