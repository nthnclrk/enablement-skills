# Eval Definitions

This directory stores dependency-free **definitions** for skill evaluation. The
scripts check fixture shape and freshness; they do not invoke an agent, grade an
output, or prove that a skill works.

## Commands

Read-only checks:

```bash
python3 scripts/evals/generate_starter_evals.py
python3 scripts/evals/validate_evals.py
```

`generate_starter_evals.py` defaults to `--check`. It also detects stale
starter-managed files. To refresh only missing and starter-managed definitions:

```bash
python3 scripts/evals/generate_starter_evals.py --generate
```

Files marked `"managed_by": "curated"` are never overwritten.

## Schema

Every `skills/<skill-name>.json` has:

- identity and provenance: `skill`, `source`, `notes`, and `managed_by`
- `should_trigger`: natural requests that should discover the skill
- `should_not_trigger`: near misses, with `adjacent_skill` where applicable

Routing cases use `{ "prompt": ..., "expected": true|false }`. Do not name a
skill with `$skill-name` in a routing prompt; that bypasses discovery.

Every definition includes `output_structure_checks`. Starters receive compact
core-output and decision-discipline checks; curators should replace or extend
them with domain-specific checks when the workflow warrants it.

`task_scenarios` are optional and authored. Add them when a curator can define
a realistic task and useful assertions, ideally against example-backed source
material. A scenario includes `id`, `input_state`, `prompt`, optional `files`,
and one or more assertions. Supported assertion types are:

- `structure`: required output shape or content
- `semantic`: domain-specific usefulness or reasoning
- `forbidden_behavior`: fabrication or another prohibited outcome

Assertions use `name`, `type`, `description`, and `critical`. They are
declarations for a future runner; this repository validator does not execute
them.

## Curating A Starter

Generated starters are compact routing and basic-output scaffolds, not executed
behavior evidence:

1. Replace generated prompts with realistic language from representative work.
2. Keep at least three realistic positive and three negative routing cases;
   add more only when the trigger surface is genuinely complex.
3. Make the negatives genuine adjacent-skill near misses.
4. Add task scenarios only when their context and assertions are meaningful.
5. Mark the file `curated` after human review.

When an execution harness is available, run cases in clean sessions and repeat
trials. Compare with-skill results to no-skill or previous-version results, and
retain outputs, trajectories, timing, and grader evidence separately.

For the with-skill vs no-skill protocol and the first recorded comparisons, see
[behavior/README.md](behavior/README.md).

## Quality Rubric

Repository validation is a gate, not a score. Frontmatter, references,
packaging, versions, and external-action safeguards must pass before reviewing
behavior.

After running realistic cases, score each skill from `0` to `3` on:

1. **Routing precision:** activates for the intended job and stays out of
   adjacent jobs.
2. **Evidence discipline:** preserves source, freshness, uncertainty, and
   unknowns without inventing facts or approval.
3. **Practitioner judgment:** makes useful choices and trade-offs instead of
   returning a generic checklist.
4. **Output utility:** produces a deliverable that supports the stated decision
   or next action with little rework.
5. **Resilience and safety:** handles partial or conflicting input, sensitive
   material, and external actions proportionately.
6. **Incremental value:** improves on no skill or the previous version at a
   reasonable time and context cost.

Use `0` for missing or unsafe behavior, `1` for generic or inconsistent
behavior, `2` for dependable behavior, and `3` for strong, repeatable behavior
with clear evidence. A release candidate should have no `0`, score at least `2`
for routing, evidence, output utility, and safety, and total at least `13/18`.
Material behavior changes should also have at least one executed realistic case.
Record the output and review evidence outside these definition files; the JSON
checker cannot award a quality score.
