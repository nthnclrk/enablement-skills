# Release Note Transformation Guide

Use this guide to convert product-centric source material into an accurate field change record, asset diff, and seller action.

## Factual Change Record

For every change, capture:

- `change_type`: capability, enhancement, fix, deprecation, packaging, policy, or rollout change
- `release_status`: planned, rolling-out, available, paused, rolled-back, or deprecated
- `effective_date`: date, timezone, rollout scope, and any cohort or region boundary
- `eligibility`: product, edition, segment, geography, migration, or contract conditions
- `source`: authoritative source, locator, owner, and as-of date
- `seller_action`: what the affected role should start, stop, continue, or verify
- `approval_state`: approved wording, unresolved claim, and decision owner

Do not translate code completion, an announcement, a beta, or partial rollout into general availability.

## Field Relevance Test

Include a change only when it alters at least one of:

- who should be targeted or qualified
- what a seller may accurately claim
- what the buyer can do or expect
- the sales, implementation, renewal, or support workflow
- pricing, packaging, eligibility, migration, or risk
- an existing talk track, FAQ, demo, battlecard, playbook, or manager inspection point

Routine fixes with no field action can stay in a compact awareness digest or be omitted from the requested seller update.

## Seller Translation Template

For each relevant change, produce:

- exact change and effective status
- affected roles, segments, use cases, and customer states
- customer impact and the evidence supporting it
- when to mention it, the qualification cue, and the next seller action
- approved proof, what did not change, and what not to say
- eligibility, rollout, migration, commercial, or support caveats
- escalation owner for unresolved questions

## Asset Diff

Compare the new facts with supplied current field assets. Use one row per affected section:

| Asset | Current version / source | Disposition | Exact section or claim | Effective date | Owner | Approval status |
| --- | --- | --- | --- | --- | --- | --- |

Allowed dispositions are `create`, `update`, `no_change`, and `retire`. Do not rewrite an entire asset when only one approved section changed.

When no current asset or version is supplied, use `current asset not supplied` and describe only the candidate impact and evidence needed. Do not assign a disposition or claim an exact diff.

## Channel And Approval Rules

- Match the depth and action to the audience: AE, SDR, SE, manager, CS, Support, or partner.
- Create only the requested channel variants. Preserve one factual change record beneath all versions.
- Keep uncertainty internal; seller guidance should state a verified boundary or an explicit open question, not false certainty.
- Mark a draft review-ready until claims, availability, dates, and affected assets have the required approval.
- Do not distribute updates, change shared assets, or mark an asset retired without explicit approval of the content and destination.
