# Enablement Skills

Reusable enablement skills for AI agents.

Built specifically for sales and revenue enablement professionals, and also useful for revenue leaders, RevOps teams, frontline managers, account leaders, and other customer-facing teams that need repeatable workflows for messaging, coaching, launches, programs, and measurement.

Works with agent tools such as Claude Code and Codex.

## At A Glance

- `37` skills in [`skills/`](skills/)
- `7` system playbooks in [`systems/`](systems/) plus a registry in [`systems/REGISTRY.md`](systems/REGISTRY.md)
- `7` install bundles in [`plugins/`](plugins/)
- `8` example workflows in [`examples/`](examples/)
- validation and skill scaffolding in [`scripts/`](scripts/)

## What You Can Use It For

- build battlecards, objection handling, talk tracks, and positioning docs
- review calls, inspect deals, and generate manager coaching guidance
- turn release notes into seller updates and launch enablement plans
- create onboarding and certification programs
- prepare account briefs, executive briefings, and QBR or EBR materials
- define enablement metrics, stage criteria, and operational guidance

## What's Included

| Layer | What it does | Where to start |
| --- | --- | --- |
| Skills | Defines task behavior for specific enablement jobs | [`skills/`](skills/) |
| Systems | Shows how to prepare inputs from common operating systems | [`systems/`](systems/) |
| Plugins | Groups skills into install bundles | [`plugins/`](plugins/) |
| Examples | Shows representative prompts, inputs, and output shapes | [`examples/`](examples/) |
| Scripts | Validates and scaffolds the repo | [`scripts/`](scripts/) |

## Install

### Option 1: Agent Skills CLI

Recommended if you want the full repo available as a reusable skills source.

```bash
npx agent-skills-cli add nthnclrk/enablement-skills
```

### Option 2: Claude Code Marketplace

Recommended if you want to install a smaller bundle by domain.

```text
/plugin marketplace add nthnclrk/enablement-skills
/plugin install enablement-core@enablement-skills
```

Available bundles:

- `enablement-core`
- `enablement-messaging`
- `enablement-programs`
- `enablement-measurement`
- `enablement-launches`
- `enablement-crm-pack`
- `enablement-ci-pack`

### Option 3: Clone Or Vendor

Use this if you want to inspect, adapt, or distribute the repo inside a broader workspace.

```bash
git clone https://github.com/nthnclrk/enablement-skills.git
```

Example submodule install:

```bash
git submodule add https://github.com/nthnclrk/enablement-skills.git vendor/enablement-skills
```

## How To Use It

Start with the skill that best matches the job. If the request is ambiguous, use [`enablement-router`](skills/enablement-router/SKILL.md). If the work depends on shared company context, start with [`revenue-enablement-context`](skills/revenue-enablement-context/SKILL.md).

Example prompts:

- `Build a battlecard for [competitor] using these notes and call excerpts.`
- `Turn these call notes into manager coaching guidance for next week's 1:1.`
- `Create a launch enablement plan for this release announcement and feature set.`
- `Review our certification program and suggest improvements for ramp speed and consistency.`
- `Summarize forecast risks from these deal notes and manager comments.`
- `Draft an executive briefing for this customer account before the QBR.`

## Featured Skills

| Skill | What it does |
| --- | --- |
| [`enablement-router`](skills/enablement-router/SKILL.md) | Routes enablement requests to the right skill or sequence of skills. Use it when the ask is unclear or combines multiple deliverables. |
| [`revenue-enablement-context`](skills/revenue-enablement-context/SKILL.md) | Builds or updates a shared context for your revenue team, including ICP, personas, stages, objections, pricing, and competitors. Use it when other outputs need stronger company context. |
| [`value-prop-and-positioning`](skills/value-prop-and-positioning/SKILL.md) | Clarifies your positioning and value proposition for different buyers and sales situations. Use it to sharpen differentiation, proof points, and core messaging. |
| [`talk-track-builder`](skills/talk-track-builder/SKILL.md) | Creates talk tracks for discovery, demos, commercial conversations, and manager coaching. Use it when sellers need clearer language for real customer conversations. |
| [`objection-library-builder`](skills/objection-library-builder/SKILL.md) | Builds a repeatable objection handling library with response guidance, proof, and escalation rules. It helps teams answer common pushback with more consistency and confidence. |
| [`battlecard-builder`](skills/battlecard-builder/SKILL.md) | Creates competitor battlecards with counters, proof, risks, and win-loss signals. Use it for live competitive deals and clearer compete guidance. |
| [`call-review-coach`](skills/call-review-coach/SKILL.md) | Reviews a sales call and gives evidence-based coaching feedback. It highlights the next changes most likely to improve the rep's next conversation. |
| [`deal-inspection-coach`](skills/deal-inspection-coach/SKILL.md) | Reviews an active deal and highlights risk, evidence gaps, and next steps. Use it for deal reviews, stall diagnosis, and coaching managers on how to advance an opportunity. |
| [`manager-coaching-cadence`](skills/manager-coaching-cadence/SKILL.md) | Designs repeatable coaching rhythms for frontline managers. Use it to create stronger coaching habits without adding heavy process. |
| [`forecast-risk-brief`](skills/forecast-risk-brief/SKILL.md) | Builds a concise forecast risk brief for sales leadership. It shows confidence levels, at-risk deals, and the interventions most likely to improve the number. |
| [`onboarding-program-builder`](skills/onboarding-program-builder/SKILL.md) | Creates onboarding programs that help new hires ramp faster and build role-specific competence. Use it for 30-60-90 plans, competency maps, and manager-led onboarding. |
| [`certification-program-builder`](skills/certification-program-builder/SKILL.md) | Creates certification programs with clear scoring, evaluation prompts, and calibration rules. Use it to assess readiness with more consistency across managers and teams. |
| [`product-launch-enablement`](skills/product-launch-enablement/SKILL.md) | Builds internal launch enablement plans for product changes and releases. Use it for readiness plans, internal FAQs, rollout guidance, and seller preparation. |
| [`release-notes-to-seller-updates`](skills/release-notes-to-seller-updates/SKILL.md) | Converts release notes into seller updates with customer impact and field guidance. It helps teams understand what changed, why it matters, and how to talk about it. |
| [`account-brief-builder`](skills/account-brief-builder/SKILL.md) | Builds concise account briefs for internal reviews, meeting prep, and deal strategy. Use it to summarize account risk, upside, stakeholders, and next steps quickly. |
| [`executive-briefing-builder`](skills/executive-briefing-builder/SKILL.md) | Creates executive briefing materials for strategic customer meetings and leadership prep. Use it when leaders need clear meeting goals, decision points, and talking points. |
| [`qbr-ebr-builder`](skills/qbr-ebr-builder/SKILL.md) | Builds QBR and EBR materials around customer goals, outcomes, risks, and next steps. Use it for business reviews with customer leadership teams. |

## Working With AI Agents

If you use this repo with an AI agent:

- start in [`skills/`](skills/) and read `SKILL.md` first
- load `references/` only when the skill calls for them
- use [`systems/`](systems/) when source-system exports or write-back boundaries matter
- use [`examples/`](examples/) as guidance for structure, not as rigid templates
- keep a human review step for anything customer-facing, regulated, or revenue-critical

System playbooks describe common workflows, but tenant capabilities vary by environment. This repo does not ship API clients, MCP servers, or direct integrations.

## Examples

Representative example workflows:

- [`examples/revenue-enablement-context/README.md`](examples/revenue-enablement-context/README.md)
- [`examples/enablement-router/README.md`](examples/enablement-router/README.md)
- [`examples/talk-track-builder/README.md`](examples/talk-track-builder/README.md)
- [`examples/manager-coaching-cadence/README.md`](examples/manager-coaching-cadence/README.md)
- [`examples/forecast-risk-brief/README.md`](examples/forecast-risk-brief/README.md)
- [`examples/call-insights-to-objections/README.md`](examples/call-insights-to-objections/README.md)
- [`examples/content-gap-analysis/README.md`](examples/content-gap-analysis/README.md)
- [`examples/product-launch-enablement/README.md`](examples/product-launch-enablement/README.md)

## Validation

Run repo validation before publishing changes:

```bash
bash scripts/validate.sh
```

This checks:

- skill structure
- required metadata
- link validity
- bundle consistency
- scaffold placeholder leakage
- eval artifact presence

Optional ecosystem validation:

```bash
bash scripts/validate-official.sh
```

That script uses `skills-ref`, `skills`, or `agent-skills-cli` when one of them is available.

## Contributing

New skills should stay compact, procedural, and bounded.

Design rules:

- keep `SKILL.md` focused on what to do
- keep deep frameworks in `references/`
- prefer tool-agnostic workflows unless a tool materially improves execution
- include explicit output contracts and quality bars
- make boundaries and adjacent-skill routing visible

Use the scaffold to create a new skill:

```bash
bash scripts/new-skill.sh my-new-skill
```

See [`ARCHITECTURE.md`](ARCHITECTURE.md), [`CONTRIBUTING.md`](CONTRIBUTING.md), and [`VERSIONS.md`](VERSIONS.md) for the repo model, contribution guidance, and version history.

## Scope And Responsibility

This repo is a practical, selective library for common enablement workflows. It is not meant to capture every vendor capability or every possible workflow variation.

Verify advanced, tenant-specific, or newly released product behavior against current vendor documentation and the actual workspace you are operating in.

If you use this repo in production, customer-facing work, regulated environments, or revenue-critical decisions, keep a human review step in the loop.

## Legal And Support

- License: [MIT](LICENSE)
- Architecture: [ARCHITECTURE.md](ARCHITECTURE.md)
- Contributing: [CONTRIBUTING.md](CONTRIBUTING.md)
- Security: [SECURITY.md](SECURITY.md)
- Support: [SUPPORT.md](SUPPORT.md)

This project is independent and is not affiliated with or endorsed by Salesforce, HubSpot, Gong, Highspot, Seismic, Notion, Slack, Anthropic, or OpenAI. Product names and trademarks remain the property of their respective owners.
