# Practitioner-output checks — 12 October 2026

Three tasks tested the unreleased skill revisions: a four-week coaching rhythm, an urgent buyer objection, and a short executive edit. These are executed drafting trials, not field evidence that an enablement programme improved performance.

## Method

Each task ran in fresh sessions with the same prompt and source packet:

1. The first skill revision, loaded explicitly with its directed references.
2. No skill or references, using the supplied facts and general expertise.
3. A revised skill after the first blind review.

There were nine generated deliverables. Two independent reviewers received anonymous pairs, the user prompts, and the raw coaching inputs. They did not receive the skills, production conditions, or earlier reviews. The second review reused the original no-skill outputs; it is a development check on the same prompts, not a held-out test.

Generators and reviewers inherited the parent agent configuration. The exact model identifier, token use, and timings were not captured. File-read notes are retained with each output. The initial skill drafts were intermediate working-tree revisions, not the published release; their complete source snapshots were not retained.

## Results

Both reviewers used four dimensions, each scored 0–4: evidence fidelity, domain judgment, practical usability, and proportionality. Here, 0 means harmful or unusable, 1 needs major repair, 2 needs material edits, 3 needs minor edits, and 4 is ready as delivered. These artifact scores do not replace the broader repository quality rubric or establish routing quality.

| Task | Initial blind review | Revised blind review | Main finding |
| --- | --- | --- | --- |
| [Coaching rhythm](coaching.md) | No skill preferred: B 15/16, A 14/16 | Revised skill preferred: G 15/16, B 14/16 | The revised plan protects outstanding application checks and reduces new sessions when necessary to stay within capacity. |
| [Buyer objection](objection.md) | No skill preferred: D 15/16, C 14/16 | No skill preferred: D 16/16, H 15/16 | The revised response is concise and supported; the control still supplies a more natural question to establish relevance. |
| [COO update](impact.md) | No skill preferred: F 16/16, E 15/16 | No skill preferred: F 16/16, I 15/16 | Both stay within 120 words. The control preserves more useful wording and bounds the recommendation more clearly. |

No reviewer identified a hard factual, authority, word-limit, or time-budget failure. Both preferred outputs with clearer practical decisions, not simply more headings or fewer words. One-point differences should not be treated as precise performance estimates: the independent reviewers also scored the same control differently.

Full reviews: [initial](review-initial.md) and [revised](review-revised.md). Generated outputs are retained unedited apart from heading levels; they are test evidence, not approved templates.

## Changes informed by the trials

- Coaching now leads with a usable run sheet, counts outstanding checks before starting new cycles, and keeps performance-management guidance proportionate.
- A live objection response uses short conversational turns and skips the library reference unless the task needs it.
- An impact edit preserves useful wording, adds calculations only when they help the decision, and avoids irrelevant financial caveats.

The tests show a useful operational distinction for coaching. They do not establish an advantage over an unassisted agent for the two short writing tasks.

## Coverage limits

- Explicit loading does not test skill discovery, trigger descriptions, or host-specific invocation.
- Three tasks do not establish behaviour quality across all 38 skills. The other updated scenarios are definitions, not recorded passes.
- One output per condition cannot establish reliability. The revisions used the reviewed prompts, so a fresh prompt set is needed to test generalisation.
- Coaching timings are planning assumptions, not observed manager time. No plan was run with a team, no customer call took place, and no external system was changed.

Before claiming package-wide improvement, run fresh prompts covering narrow and full deliverables, novice and experienced users, and adjacent-skill routing on the intended hosts.
