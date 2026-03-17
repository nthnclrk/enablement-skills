# Slack System Playbook

Use Slack as a high-signal source for field feedback and enablement distribution, not as a primary system of record.

## Scope And Limits

This playbook focuses on reliable Slack patterns for exports, message analysis, and controlled posting workflows. It is not a full guide to Slack platform development or the growing set of AI-driven features available inside Slack.

Verify workspace export permissions, retention settings, app scopes, and newly released capabilities against current Slack documentation and your workspace configuration before depending on them.

## What Slack Is Useful For In This Repo

- Capture recurring field questions, objections, and friction from channel threads.
- Pull launch reactions and follow-up questions after product updates.
- Collect manager/rep sentiment and operational blockers for synthesis workflows.
- Distribute finalized enablement outputs back to the right channels after review.

## High-Value Workflows

1. Field signal to synthesis
- Pull messages and threads from selected channels.
- Run `field-feedback-synthesizer` to cluster themes and actions.
- Route major content gaps to `content-gap-analysis`.

2. Launch update loop
- Pull launch or release discussion threads.
- Run `release-notes-to-seller-updates` or `product-launch-enablement`.
- Post a reviewed summary to enablement/sales channels.

3. Leadership narrative input
- Pull QBR/forecast-related discussion threads.
- Run `enablement-impact-story` or `forecast-risk-brief`.
- Publish concise, evidence-linked summary for leadership channels.

## What Data To Pull

Use either exports or API reads, depending on access and policy.

### Export-Based Pull (lowest setup friction)

- Workspace export JSON for channel content and file links.
- Thread context from per-channel JSON files in export archives.
- Use this when API setup is blocked or cross-team access is inconsistent.

### API-Based Pull (better for recurring workflows)

- Channel discovery: `conversations.list`
- Channel history: `conversations.history`
- Thread history: `conversations.replies`
- Message posting: `chat.postMessage`
- Scheduled posting: `chat.scheduleMessage`
- User metadata enrichment: `users.info` (if permitted)

## Minimal Input Shape For Agents

For each message record, keep:

- `channel_id`
- `channel_name`
- `ts`
- `thread_ts` (if in thread)
- `user_id`
- `text`
- `reactions` (optional)
- `permalink` (optional but recommended)

For each extraction job, include:

- Time window used
- Channel/thread scope
- Any known redactions
- Confidence caveats (missing threads, restricted channels, low context)

## Skills That Benefit Most

- `field-feedback-synthesizer`
- `content-gap-analysis`
- `release-notes-to-seller-updates`
- `product-launch-enablement`
- `enablement-impact-story`
- `forecast-risk-brief`
- `account-brief-builder`
- `proposal-rfp-orchestrator`

## Safe Write-Back Patterns

- Draft first in local markdown, then post reviewed summaries.
- Post to focused enablement channels before broad channels.
- For long artifacts, post summary + link, not raw dumps.
- Use scheduled messages for planned rollouts when needed.
- For file uploads, use current external upload flow (`files.getUploadURLExternal` then `files.completeUploadExternal`) instead of deprecated `files.upload`.

## Example Prompts Using Repo Skills

- `Use $field-feedback-synthesizer on this Slack export from #aes-emea and #sales-managers for the last 30 days. Return top themes, confidence, and next actions.`
- `Use $release-notes-to-seller-updates on these threads from #product-launches and #support-escalations. Produce a seller update and FAQ deltas.`
- `Use $content-gap-analysis with these Slack thread clusters plus our existing enablement inventory. Prioritize create/update/consolidate decisions for this quarter.`
- `Use $enablement-impact-story from this Slack discussion set and KPI snapshot. Separate observations from interpretation and mark assumptions.`

## What Not To Automate By Default

- Auto-posting to all-company or executive channels.
- DM broadcasts to reps or managers.
- Message deletion or edits after publication without explicit approval.
- Cross-workspace forwarding of sensitive threads.
- Any workflow that posts unreviewed output from raw Slack data.

## Safety And Privacy Boundaries

- Respect workspace policy, legal requirements, and plan-specific export limitations.
- Minimize personally identifiable and sensitive customer details in outputs.
- Keep raw exports/transcripts scoped and access-controlled.
- Require explicit user confirmation before any broad-channel publication.

## Official Slack Docs Used

- [Export your workspace data](https://slack.com/help/articles/201658943-Export-your-workspace-data)
- [How to read Slack data exports](https://slack.com/help/articles/220556107-How-to-read-Slack-data-exports)
- [Guide to Slack import and export tools](https://slack.com/help/articles/204897248-Guide-to-Slack-import-and-export-tools)
- [Conversations API overview](https://api.slack.com/conversations-api)
- [`conversations.list`](https://docs.slack.dev/reference/methods/conversations.list)
- [`conversations.history`](https://api.slack.com/methods/conversations.history)
- [`conversations.replies`](https://api.slack.com/methods/conversations.replies)
- [`chat.postMessage`](https://api.slack.com/methods/chat.postMessage)
- [`chat.scheduleMessage`](https://api.slack.com/methods/chat.scheduleMessage)
- [Working with files and external upload flow](https://api.slack.com/messaging/files/uploading)
- [files.upload retirement notice](https://docs.slack.dev/changelog/2024-04-a-better-way-to-upload-files-is-here-to-stay)
- [`users.info`](https://api.slack.com/methods/users.info)
