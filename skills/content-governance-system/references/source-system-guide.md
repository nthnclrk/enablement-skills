# Source system guide

Use this when governance rules must map to real publishing systems and ownership surfaces.

## Useful inputs

Repository list: wiki, CMS, enablement platform, LMS, slide storage, request tracker. Current metadata, owner fields, approval states, permission models, and audit history. Existing review cadences and stale-content signals.

## Handling

Define the operating model independently of any one tool first. Then map publication statuses, review statuses, metadata, SLAs, and ownership into the systems the team already uses. Do not create near-synonym states per system.

Distinguish source-of-truth from distribution so duplicate publishing does not become duplicate governance. Preserve stable content ID, canonical version, approval record, publisher, and change timestamp when content crosses systems.

**Fails.** A second "official" copy in Slack or a slide library because "reps will not open the wiki."

**Passes.** Canonical page in the wiki; distribution copies inherit ID and version; weekly publish owner updates the copies after the canonical change.

## Common risks

Multiple systems claiming to be authoritative. Metadata fields that exist but are not maintained. Governance that assumes automation the team does not have. Approval fields mistaken for permission to publish or change access.

## Writeback

Do not publish, unpublish, move, archive, relabel, overwrite, or change permissions automatically. Before any approved write, resolve the exact target, approved version, destination state, audience, and rollback or archive path. Report the proposed change set first.
