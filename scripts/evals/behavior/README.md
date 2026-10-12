# With-skill versus no-skill

Structural validation does not prove a skill is worth its context. Run the same messy prompt twice: once with the skill loaded, once without. Grade the artifact against that skill's quality bar.

## Protocol

1. Pick a messy, incomplete prompt a practitioner would actually type.
2. Give both runs the same source packet.
3. Use fresh sessions without prior outputs or the grading rubric. With-skill: load only that `SKILL.md` and the references it directs the task to use.
4. No-skill: do not read any file under `skills/`. Use the same source packet and general enablement knowledge.
5. Give anonymous outputs to an independent reviewer. Record the criteria and scale before grading. Use the [quality rubric](../README.md#quality-rubric) for a broader skill review; a focused artifact comparison may assess fewer dimensions, but must not award an overall release score.
6. Keep the prompts, outputs, file-read notes, configuration details available, and review evidence in this folder. Do not treat a fixture JSON as the grade.
7. If the skill changes after review, test it again in a fresh session. Retain the earlier result and state whether prompts or control outputs were reused.

A skill should improve a decision, the usable output, or a recurring workflow. If it adds no value across representative cases, simplify it or reconsider its scope. One paired result is evidence for revision, not a reliable ranking.

## Recorded comparisons

- [13 October 2026 — release checks](2026-10-13-release-checks/README.md): two runs per condition for held-out coaching and objection prompts, plus informational-brief, single-metric and frontmatter-routing checks.
- [13 October 2026 — natural feedback](2026-10-13-natural-feedback/README.md): short Call Review notes for accounting discovery and a product demo, with a fresh matched no-skill control and independent review.
- [13 October 2026](2026-10-13/README.md): three focused Call Review framework trials and one matched no-skill control, with a blind review and source snapshots.
- [12 October 2026](2026-10-12/README.md): nine retained outputs for coaching, a live objection response, and a short impact update, with two blind reviews and explicit coverage limits.
- [20 August 2026](results.md): historical summaries for talk-track, battlecard, call-review, and impact story. Raw outputs were not retained with those notes, so the summaries cannot be independently regraded.
