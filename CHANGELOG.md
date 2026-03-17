# Changelog

All notable changes to this repo should be recorded here.

The format is intentionally lightweight. Keep entries concise and useful for operators adopting updates.

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
