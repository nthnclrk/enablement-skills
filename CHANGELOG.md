# Changelog

All notable changes to this repo should be recorded here.

The format is intentionally lightweight. Keep entries concise and useful for operators adopting updates.

## [Unreleased]

## [1.5.0] - 2026-10-13

Coaching and workflow improvements across all 38 skills.

- Call reviews connect specific evidence to feedback, a short rehearsal and a next-call check. Manager coaching plans account for preparation, practice and follow-up time.
- Specialists return the amount of help requested: a response to one objection, a single metric definition, a briefing section or a full deliverable.
- Objection responses, competitive fit assessments and talk tracks have clearer routing boundaries.
- Updated decision rules cover onboarding readiness, certification, exploratory demos, customer reviews and proposal exceptions.
- Measurement guidance distinguishes participation, assessment results and live performance. Missing baselines limit change claims; supported current values and negative ROI remain valid.
- Each specialist carries its essential evidence and action boundaries. Customer sharing and changes to shared records need explicit approval. Reusable company context remains optional.
- Updated references, skill-picker copy and evaluation definitions. Retained focused behaviour trials with their prompts, outputs, independent reviews and coverage limits.
- All seven Claude bundles move to `0.6.0`. Skill names, bundle membership and installation commands are unchanged.

### Changed defaults

- Call reviews include scores when requested or required by the team's established process. A supplied rubric takes precedence.
- A request for one partner asset returns that asset; the full pack is optional.
- Impact updates keep evidence limits beside the relevant claims. A separate limitations section is optional.
- House style is an explicit writing and review workflow. Bundling it does not automatically load its instructions into another skill.

Repository and portable-format validation passed. Executed checks cover selected workflows; the with-skill comparisons have mixed results and do not establish package-wide improvement. See the [behaviour records](scripts/evals/behavior/README.md).

## [1.4.0] - 2026-08-20

Package craft: jobs over headings.

- Validation checks one job, taste, intake, procedure, and a human-scorable quality bar. Heading names are no longer required.
- Added `enablement-house-style` to every bundle. Specialist skills no longer repeat the shared context paragraph.
- `enablement-router` and `revenue-enablement-context` now use their own file shapes.
- `templates/skill/` is a worked example with a README, not a blank form.
- Added `scripts/evals/behavior/` for with-skill vs no-skill messy prompts.

## [1.3.0] - 2026-08-20

Craft pass across all 37 skills.

- Rewrote each skill around one leading concept, a good/bad excerpt, done-checked procedures, and a quality bar a practitioner can score in two minutes.
- Replaced form-first references with judgment files that teach the fail/pass test for that skill.
- Tightened evals so output checks require the new contracts, not section-list prose.
- Kept portable frontmatter as `name` and `description` only; trigger language stayed stable.

## [1.2.0] - 2026-08-11

Evidence-led workflow and release-quality update.

- Deepened all 37 skills with sharper routing boundaries, decision-changing intake, practitioner-grade decision rules, and usable output contracts.
- Added the reusable `.enablement/context.md` workflow with source states, provenance, freshness, sensitivity, preview-before-write, and scoped briefs.
- Tightened assumptions, claim support, approval boundaries, confidentiality, capacity, sampling, calibration, and external-action safeguards across the collection.
- Added realistic example packets and compact eval definitions with natural routing cases, fixture-backed scenarios, strict validation, and a quality rubric.
- Refreshed Salesforce, HubSpot, Gong, Highspot, Seismic, Notion, and Slack playbooks against current public guidance.
- Corrected Claude marketplace metadata, added shared context to every bundle, and expanded read-only packaging and specification checks.

## [1.1.0] - 2026-03-26

Practitioner language refresh across the skill pack.

- Refined skill language to align more closely with revenue, enablement, PMM, CS, and RevOps operating standards.
- Tightened workflow steps so skills read more like operator playbooks and less like generic process notes.
- Improved output contracts and quality bars across planning, messaging, coaching, launch, proposal, and post-sale skills.
- Updated tracked bundle versions and aligned starter eval artifacts with the refreshed skill content.

## [1.0.0] - 2026-03-17

First stable public release.

- Promoted the repo to `v1.0.0` as the first stable packaged release.
- Refined the README with clearer audience positioning, installation guidance, example prompts, and featured skills.
- Replaced internal-sounding "failure mode" terminology with plainer language across skills and systems docs.

## [0.2.1] - 2026-03-17

Validation and packaging integrity fixes.

- Fixed a broken route from `one-pager-and-slide-outline` to a non-existent skill.
- Added positive routing guidance for `partner-enablement-package` and `release-notes-to-seller-updates`.
- Aligned plugin manifest versions with tracked bundle versions.
- Extended `scripts/validate.sh` to check plugin versions, bundle membership, symlink resolution, route references, relative links, and unresolved scaffold placeholders.
- Tightened `scripts/new-skill.sh` and templates so placeholder scaffolds fail validation until completed.

## [0.2.0] - 2026-03-17

Packaging and contributor experience upgrade.

- Added [ARCHITECTURE.md](ARCHITECTURE.md) to explain the repo model and distribution paths.
- Expanded the README with stronger positioning, role-based entry points, team install patterns, and skill interaction guidance.
- Added `scripts/validate-official.sh` as an Agent Skills CLI validation wrapper.
- Added `scripts/new-skill.sh` plus reusable skill templates under `templates/skill/`.

## [0.1.0] - 2026-03-17

Initial public packaging baseline.

- Added 37 repo-local enablement skills with skill metadata and starter evals.
- Added Claude marketplace packaging and bundle manifests.
- Added `systems/` workflow playbooks for Salesforce, HubSpot, Gong, Highspot, Seismic, Notion, and Slack.
- Added repo validation, contributor guidance, security guidance, and example workflow docs.
