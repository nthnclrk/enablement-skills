Use this when governance rules must map to real publishing systems and ownership surfaces.

# Source System Guide

## Useful Inputs

- Repository list: wiki, CMS, enablement platform, LMS, slide storage, request tracker.
- Current metadata fields, owner fields, approval states, permission models, and audit history.
- Existing review cadences and stale-content signals.

## Recommended Handling

- Define governance rules independently of any one tool first.
- Map the exact publication statuses, review statuses, metadata, conditional SLAs, and ownership fields into the systems the team already uses; do not create near-synonym states per system.
- Distinguish source-of-truth from distribution layers so duplicate publishing does not become duplicate governance.
- Preserve stable content ID, canonical version, approval record, publisher, and change timestamp when content crosses systems.

## Common System Risks

- Multiple systems claiming to be authoritative.
- Metadata fields that exist but are not maintained.
- Governance that assumes automation the team does not actually have.
- Approval fields that are mistaken for permission to publish or change access.

## Safe Writeback Boundary

- Do not publish, unpublish, move, archive, relabel, overwrite, or change permissions automatically.
- Before any approved write, resolve the exact target, approved version, destination state, audience, and rollback or archive path.
- Report the proposed change set first; perform in-system writes only with explicit user authorization.
