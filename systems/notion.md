# Notion System Playbook (for `enablement-skills`)

This playbook explains how revenue enablement operators can use Notion as an input/output system for the skills in this repo, using agent tools like Claude Code and Codex.

It is intentionally workflow-first (what to pull, what to produce, how to write back safely), not API-admin documentation.

> Last verified: 2026-07-31. The latest Notion REST API version is `2026-03-11`; Notion MCP tools, workspace permissions, connection capabilities, and Enterprise governance controls can vary by workspace.

## Scope And Limits

This playbook covers common Notion workflows that are dependable for agent-assisted planning, synthesis, and controlled write-back. It does not document every Notion capability, integration path, or fast-changing AI-native feature.

Verify workspace permissions, integration capabilities, and newly released Notion features against current docs and your own workspace before relying on them for production workflows.

## What Notion Is Useful For In This Repo

Use Notion as the durable workspace for:

- Program plans, quarterly enablement plans, and launch plans
- Content inventories and governance trackers
- Feedback and call insight synthesis logs
- Field deliverables (account briefs, executive briefings, QBR/EBR drafts)
- Reusable templates for recurring pages

Most relevant skills:

- `enablement-program-design`
- `quarterly-enablement-planner`
- `content-gap-analysis`
- `content-governance-system`
- `field-feedback-synthesizer`
- `proposal-rfp-orchestrator`
- `qbr-ebr-builder`
- `executive-briefing-builder`
- `release-notes-to-seller-updates`

## Choose One Access Pattern

### Pattern A: Notion MCP (best for agent users)

Use this when working directly from Claude Code/Codex with connected Notion.

- Official basis: Notion MCP is a hosted, actively maintained server for AI tools with OAuth and read/write access constrained by the authorizing user's workspace permissions.
- Good for interactive search, page creation, and updates during a live workflow.

### Pattern B: Notion API (best for scripted pipelines)

Use this when your team runs repeatable scripts or integrations.

- Use `data_sources` endpoints for structured tables and row queries.
- Send an explicit `Notion-Version: 2026-03-11` header for current REST API behavior.
- Prefer the enhanced Markdown page endpoints for agent-friendly document reads and writes. Use page/block endpoints when exact block structure or an unsupported Markdown block type is required.

### Pattern C: UI Export/Import (best for low-setup teams)

Use this when no API or MCP setup is available.

- Export pages/databases as Markdown and CSV, feed files to skills.
- Import or merge CSV back into Notion when needed.

## What To Pull (Input Kits)

Pull the smallest dataset needed for the skill outcome.

### 1) Program and planning kit

Use for:

- `enablement-program-design`
- `quarterly-enablement-planner`
- `product-launch-enablement`

Pull:

- Program/initiative pages (scope, goals, milestones)
- Launch calendar page(s)
- Owner and status properties
- Key dates and dependencies

Minimum reliable structure:

- One data source for initiatives with `title`, `owner`, `status`, `due date`, `priority`
- One page or data source for quarterly calendar/cadence

### 2) Content governance kit

Use for:

- `content-gap-analysis`
- `content-governance-system`
- `battlecard-builder`

Pull:

- Content inventory data source (asset title, audience, stage, owner, last updated, status)
- Engagement notes or linked references
- Taxonomy definitions (if documented in pages)

Minimum reliable structure:

- Data source rows with explicit role/stage metadata
- Consistent `status` and `last updated` fields

### 3) Feedback and field signals kit

Use for:

- `field-feedback-synthesizer`
- `objection-library-builder`
- `release-notes-to-seller-updates`

Pull:

- Feedback logs, call-note summaries, launch reaction pages
- Dates, segment tags, and source tags
- Existing objection/theme labels (if present)

Minimum reliable structure:

- One row/page per feedback item
- `date`, `source`, `segment`, and `theme` (or blank theme) fields

### 4) Field deliverables kit

Use for:

- `account-brief-builder`
- `executive-briefing-builder`
- `qbr-ebr-builder`
- `proposal-rfp-orchestrator`

Pull:

- Existing account/meeting pages and prior deliverables
- Template pages used by the team
- Stakeholder notes and open risk logs

Minimum reliable structure:

- Template-backed pages per deliverable type
- Explicit owner/date metadata

## Structures Agents Can Reliably Work With

These are the safest structures to feed into skills:

1. Data source rows with typed properties (`status`, `select`, `people`, `date`, `number`, `relation`)
2. Template-backed pages for recurring deliverables
3. Enhanced Markdown returned by `GET /v1/pages/:page_id/markdown`, with `truncated` and `unknown_block_ids` checked
4. Markdown + CSV exports from Notion UI
5. Page block trees fetched recursively when enhanced Markdown cannot represent the required block type

Operational notes from official docs:

- `data_sources` are the current table model in Notion API versions `2025-09-03+`; the latest API version is `2026-03-11`.
- The `2026-03-11` API uses `position` instead of `after` for block placement, `in_trash` instead of `archived`, and `meeting_notes` instead of `transcription`.
- Enhanced Markdown endpoints can create, retrieve, and update page content. Large or permission-limited pages may return unknown blocks that require follow-up reads.
- For large pages, block retrieval is paginated and nested blocks require recursive fetches.
- Search is name-oriented and not guaranteed for full workspace enumeration.
- For formulas/rollups/relations, retrieve page property items for more accurate values.

## Writing Skill Outputs Back Into Notion

## Safe write-back options

### Option A: Create pages from templates (recommended)

Best when delivering repeatable outputs like QBR drafts, briefings, or launch updates.

- List available data source templates.
- Create page with `template[type]=default` or `template_id`.
- Wait for template application to finish before post-processing.

### Option B: Update existing pages

Best when refining an in-flight document.

- Update page properties and use enhanced Markdown insert/replace operations when they preserve the intended structure; use block operations for unsupported or precisely positioned content.
- Keep updates additive by default.
- For major rewrites, create a draft page first, then replace after review.

### Option C: Comment-based review loop

Best when your team wants low-risk collaboration.

- Post draft recommendations as page comments.
- Use discussion replies for revisions and approvals.
- Remember API limitations: integrations cannot start a new inline discussion thread. They can update or delete only comments created by that same integration/connection.

### Option D: CSV import/merge for tracker updates

Best when operators run manual workflows from exported files.

- Import CSV to create/extend a data source.
- Merge CSV into an existing data source when needed.
- Plan for limitations: imports and merges add rows rather than update existing rows. A new CSV import cannot create relations, but a merge into an existing data source can map a column to an existing relation property.

## Example Prompts (Repo Skill + Notion Workflow)

Use these as starting points in Claude Code/Codex:

- "Use `$quarterly-enablement-planner`. Pull our Notion `Enablement Calendar` and `Initiatives` data sources, then draft Q3 plan updates into a new Notion page using the `Quarterly Plan` template."
- "Use `$content-gap-analysis` on the Notion `Enablement Content Inventory` data source. Return a prioritized backlog and write it to a draft page under `Content Ops`."
- "Use `$field-feedback-synthesizer` on Notion pages tagged `field-feedback` from the past 30 days. Create a summary page and add open questions as comments for manager review."
- "Use `$qbr-ebr-builder` and build an EBR draft from our Notion account notes. Create the output from the `EBR Template` and leave assumptions in a dedicated section."
- "Use `$proposal-rfp-orchestrator` from this Notion RFP page. Generate section ownership, timeline, and risk log as a new page in the same workspace."

## Safety And Governance Boundaries

- Do not store tokens/secrets in this repo.
- Require explicit confirmation before destructive operations (bulk moves, deletes, schema changes).
- Prefer draft pages over in-place overwrites.
- Keep source links/citations in outputs so teams can audit recommendations.
- Redact sensitive customer information before broad distribution.

## Common Issues And Fixes

- Missing query results: confirm the parent database/page is shared with the integration and that capabilities are enabled.
- Slow/partial content reads: handle pagination and recursively fetch nested blocks.
- Truncated enhanced Markdown: inspect `unknown_block_ids`, attempt follow-up reads, and treat permission failures as explicit missing context.
- Duplicate rows after CSV workflows: imports/merges append rows; use explicit dedupe keys externally.
- Broken formula/rollup assumptions: retrieve individual page property items for high-confidence calculations.
- Empty relation data: confirm related databases are also shared with the integration.

## Official Notion Docs Used

- Notion MCP overview: https://developers.notion.com/guides/mcp/overview
- Connect to hosted Notion MCP: https://developers.notion.com/guides/mcp/get-started-with-mcp
- Upgrade to API version `2026-03-11`: https://developers.notion.com/guides/get-started/upgrade-guide-2026-03-11
- Data source object: https://developers.notion.com/reference/data-source
- Query a data source: https://developers.notion.com/reference/query-a-data-source
- Create a page: https://developers.notion.com/reference/post-page
- Update a page: https://developers.notion.com/reference/patch-page
- Working with page content: https://developers.notion.com/guides/data-apis/working-with-page-content
- Working with enhanced Markdown content: https://developers.notion.com/guides/data-apis/working-with-markdown-content
- Retrieve a page as Markdown: https://developers.notion.com/reference/retrieve-page-markdown
- Update page Markdown: https://developers.notion.com/reference/update-page-markdown
- Append block children: https://developers.notion.com/reference/patch-block-children
- Page property values: https://developers.notion.com/reference/page-property-values
- Retrieve page property item: https://developers.notion.com/reference/retrieve-a-page-property
- Search endpoint + limitations:
  - https://developers.notion.com/reference/post-search
  - https://developers.notion.com/reference/search-optimizations-and-limitations
- Templates with API:
  - https://developers.notion.com/guides/data-apis/creating-pages-from-templates
  - https://developers.notion.com/reference/list-data-source-templates
- Comments:
  - https://developers.notion.com/guides/data-apis/working-with-comments
  - https://developers.notion.com/reference/create-a-comment
  - https://developers.notion.com/reference/update-a-comment
  - https://developers.notion.com/reference/delete-a-comment
- Integration capabilities: https://developers.notion.com/reference/capabilities
- Notion Help (export/import):
  - https://www.notion.com/help/export-your-content
  - https://www.notion.com/help/import-data-into-notion
