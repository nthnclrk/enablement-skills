# Enablement Skills

Reusable workflows for sales and revenue enablement work.

The library is designed for enablement leaders, sales managers, RevOps and product marketing teams, customer-facing leaders, and practitioners who need repeatable help with messaging, coaching, launches, programs, account work, and measurement.

The canonical skills follow the portable Agent Skills folder format and can be used by compatible agent tools, including Claude Code and Codex. This repository also applies a small set of stricter structure and packaging rules so the full collection remains consistent and distributable.

## At A Glance

- Current release: [`v1.4.0`](https://github.com/nthnclrk/enablement-skills/releases/tag/v1.4.0) — practitioner-written skills, house-style safety, craft jobs over identical headings
- `38` canonical skills in [`skills/`](skills/)
- `7` system playbooks in [`systems/`](systems/) plus [`systems/REGISTRY.md`](systems/REGISTRY.md)
- `7` Claude marketplace bundles in [`plugins/`](plugins/)
- `8` example workflows in [`examples/`](examples/)
- validation, starter evals, and skill scaffolding in [`scripts/`](scripts/)

## Start Here

### First Use: Establish Shared Context

If the request depends on company-specific facts, begin with [`revenue-enablement-context`](skills/revenue-enablement-context/SKILL.md). Give it the smallest useful source packet available, such as:

- ICP, segment, and persona material
- current positioning, pricing, and proof
- sales stages and operating definitions
- recurring objections and competitors
- current priorities, programs, and metrics

The skill separates confirmed, inferred, conflicted, and missing information; records provenance, freshness, sensitivity, and reuse boundaries; and exposes important gaps. For an immediate task, it can return a lightweight working-context handshake without creating a file. When reusable storage is useful and wanted, it proposes `.enablement/context.md`, previews the content before writing, and asks for confirmation. Downstream skills receive only the relevant sections and do not reopen confirmed inputs without a reason.

Skip this step when the request is self-contained or the required context is already current. Do not turn context setup into a blocker for a simple, well-specified job. Shared safety rules live in [`enablement-house-style`](skills/enablement-house-style/SKILL.md). Do not open that skill to build a specialist artifact.

### Choose The Work

Use the skill that matches the deliverable:

- a sales manager reviewing one call: [`call-review-coach`](skills/call-review-coach/SKILL.md)
- an enablement leader designing a program: [`enablement-program-design`](skills/enablement-program-design/SKILL.md)
- a product marketer sharpening the core message: [`value-prop-and-positioning`](skills/value-prop-and-positioning/SKILL.md)
- a RevOps leader defining stage evidence: [`pipeline-stage-definition-and-exit-criteria`](skills/pipeline-stage-definition-and-exit-criteria/SKILL.md)
- a customer leader preparing an account review: [`qbr-ebr-builder`](skills/qbr-ebr-builder/SKILL.md)

Use [`enablement-router`](skills/enablement-router/SKILL.md) when the ask is ambiguous, spans several deliverables, or needs a short sequence of skills. For a direct request such as “review this call” or “build a battlecard,” go straight to the specialist skill.

If a manager knows the team is missing target but does not yet know why, start with the router. It sends the work to program discovery without assuming training is the answer and stops the enablement path when evidence points to product, process, capacity, incentives, territory, or another non-enablement cause.

### Choose An Install Bundle

Install the full skill source when you want the complete library. Choose a bundle when a team needs a smaller, role-relevant set.

| Bundle | Best starting point for | Typical work |
| --- | --- | --- |
| `enablement-core` | Enablement leaders and generalists | Context, routing, planning, onboarding, certification, coaching, account work |
| `enablement-messaging` | Product marketing and content teams | Positioning, talk tracks, objections, battlecards, discovery, field content |
| `enablement-programs` | Sales managers and readiness teams | Onboarding, certification, call coaching, roleplay, deal and forecast coaching |
| `enablement-measurement` | Enablement operations and RevOps | KPI design, impact stories, win/loss, content gaps, stage criteria |
| `enablement-launches` | Product and launch enablement teams | Launch plans, seller updates, partner packages, field assets |
| `enablement-crm-pack` | Sales, CS, and revenue operations teams | Accounts, deals, forecast, proposals, MAPs, renewals, customer value |
| `enablement-ci-pack` | Conversation intelligence and coaching teams | Call analysis, objection mining, discovery scoring, field feedback, win/loss |

Some skills appear in more than one bundle because they support more than one operating team. [`plugins/BUNDLES.md`](plugins/BUNDLES.md) is the explicit membership list; [`skills/`](skills/) remains the source of truth.

Every bundle includes `revenue-enablement-context` and `enablement-house-style` so it can stand alone. Use context only when shared context is missing, stale, or conflicting. House style is shared safety, not a deliverable. Direct specialist requests should still go straight to the specialist skill.

## What You Can Use It For

- build battlecards, objection guidance, talk tracks, and positioning
- review calls, inspect deals, and prepare manager coaching
- turn release notes into seller updates and launch plans
- design onboarding and certification programs
- prepare account briefs, executive briefings, and QBR or EBR material
- define enablement metrics, stage criteria, and operating guidance

## How The Repository Fits Together

| Layer | Purpose | Use it when |
| --- | --- | --- |
| [`skills/`](skills/) | Defines the workflow for a specific enablement job | You need the agent to perform the work |
| [`systems/`](systems/) | Explains common export, source, and write-back patterns | The work depends on Salesforce, HubSpot, Gong, Highspot, Seismic, Notion, or Slack |
| [`plugins/`](plugins/) | Packages selected skills into Claude marketplace bundles | A team wants a smaller install by domain |
| [`examples/`](examples/) | Shows representative inputs, prompts, and output shapes | You want to understand how to frame a request |
| [`scripts/`](scripts/) | Scaffolds and validates repository content | You are contributing or preparing a release |

System playbooks are workflow guidance, not integrations or exhaustive vendor documentation. Exact fields, permissions, export paths, and product capabilities can vary by tenant and can change. Verify important behavior against current vendor documentation and the workspace you are using. This repository does not ship API clients, MCP servers, or direct system connections.

## Install

### Portable Skill Install

One cross-agent installation option is the third-party `skills` CLI:

```bash
npx skills add nthnclrk/enablement-skills
```

Choose the target agent and individual skills when prompted. Installer behavior and supported locations belong to that tool, so check its current documentation before using it in managed environments.

### Claude Code Marketplace

Use the packaged bundles when installing through the Claude Code marketplace:

```text
/plugin marketplace add nthnclrk/enablement-skills
/plugin install enablement-core@enablement-skills
```

The manifests under `.claude-plugin/` and `plugins/*/.claude-plugin/` are Claude-specific packaging. They are not a universal Agent Skills plugin format.

### Clone Or Vendor

Clone the repository when you want to inspect, adapt, or manage the source directly:

```bash
git clone https://github.com/nthnclrk/enablement-skills.git
```

Or add it to a larger workspace:

```bash
git submodule add https://github.com/nthnclrk/enablement-skills.git vendor/enablement-skills
```

Compatible tools can consume the canonical folders under `skills/`. Installation paths and host-specific metadata vary by product.

## Example Prompts

- `Build a battlecard for [competitor] using these notes and call excerpts.`
- `Review this call and give me two coaching priorities for the rep's next conversation.`
- `Create a launch enablement plan for this release announcement and feature set.`
- `Review our certification program and suggest improvements for ramp speed and consistency.`
- `Summarize forecast risks from these deal notes and manager comments.`
- `Draft an executive briefing for this customer account before the QBR.`

Representative workflows are available under [`examples/`](examples/):

- [`revenue-enablement-context`](examples/revenue-enablement-context/README.md)
- [`enablement-router`](examples/enablement-router/README.md)
- [`talk-track-builder`](examples/talk-track-builder/README.md)
- [`manager-coaching-cadence`](examples/manager-coaching-cadence/README.md)
- [`forecast-risk-brief`](examples/forecast-risk-brief/README.md)
- [`call-insights-to-objections`](examples/call-insights-to-objections/README.md)
- [`content-gap-analysis`](examples/content-gap-analysis/README.md)
- [`product-launch-enablement`](examples/product-launch-enablement/README.md)

Examples are guidance, not golden outputs. Adapt them to the audience, evidence, and decision at hand.

## Validation

Validation has three distinct layers.

### 1. Repository Structure

```bash
bash scripts/validate.sh
```

This command is read-only. It checks:

- canonical skill files and repository-required metadata
- exact `name` and `description` frontmatter policy
- required skill sections and unresolved scaffold placeholders
- relative links across tracked Markdown files
- `agents/openai.yaml` interface fields
- eval artifact coverage, schema, and starter freshness
- marketplace and plugin metadata
- bundle membership, manifest versions, and resolution to canonical skills

This is a structural check. It does not execute the eval prompts or prove that a skill routes correctly or produces a strong result.

### 2. Portable Agent Skills Specification

Run the Agent Skills reference validator for each changed skill:

```bash
skills-ref validate skills/<skill-name>
```

For the full collection, use:

```bash
bash scripts/validate-official.sh
```

The wrapper requires the `skills-ref` executable. CI installs `skills-ref==0.1.1`; the wrapper also documents an opt-in `uvx` fallback pinned to that version.

### 3. Behavior

Use the scenarios under `scripts/evals/skills/` to test:

- whether the right prompts trigger the skill
- whether nearby prompts route elsewhere
- whether required output sections and decisions appear
- whether the result remains useful with incomplete or messy input

The repository currently stores eval scenarios but does not ship a model runner. Behavior claims require executing representative tasks and reviewing the outputs.

Use the [quality rubric](scripts/evals/README.md#quality-rubric) to review routing, evidence discipline, practitioner judgment, output utility, resilience, safety, and incremental value.

## Contributing

New skills should be compact, procedural, and bounded. Start with:

```bash
bash scripts/new-skill.sh my-new-skill
```

Then update the skill, its eval artifact, and the release records required by [`CONTRIBUTING.md`](CONTRIBUTING.md). See [`ARCHITECTURE.md`](ARCHITECTURE.md) for the portable standard, repository contract, and packaging model.

## Responsibility

Review outputs before publishing, sending, or acting on them. Keep a human decision-maker involved for customer-facing, regulated, security-sensitive, or revenue-critical work. Skills should distinguish evidence from assumptions and require explicit approval before writing to external systems.

## Legal And Support

- License: [MIT](LICENSE)
- Architecture: [ARCHITECTURE.md](ARCHITECTURE.md)
- Contributing: [CONTRIBUTING.md](CONTRIBUTING.md)
- Security: [SECURITY.md](SECURITY.md)
- Support: [SUPPORT.md](SUPPORT.md)

This project is independent and is not affiliated with or endorsed by Salesforce, HubSpot, Gong, Highspot, Seismic, Notion, Slack, Anthropic, or OpenAI. Product names and trademarks remain the property of their respective owners.
