# Release checks: 13 October 2026

This run checks the final workflow corrections for v1.5.0. It includes repeated coaching and objection comparisons, two output regressions and a frontmatter-only routing check.

## Method

Four fresh agents each received the two [held-out prompts](prompts.md). Two loaded the relevant skill and two used general enablement knowledge, giving two outputs per condition for each task. They received no previous answers or grading criteria. Within each session, coaching preceded the objection request; these are two fresh sessions per condition, not four fully isolated task sessions.

Anonymous labels map as follows:

| Label | Condition | Drafting session |
| --- | --- | --- |
| A | No skill | Second control |
| B | With skill | First skill run |
| C | No skill | First control |
| D | With skill | Second skill run |

With-skill agents reported reading Call Review, its direct rubric and Objection Library. Control agents reported no file reads. All [generated answers](outputs.md) are retained unchanged. A fresh reviewer received only the prompts, anonymous answers and [review criteria](review-criteria.md). The criteria were recorded before grading, but after drafting; the drafting agents never received them. The [complete review](review.md) is retained.

The agents inherited the parent configuration with no model overrides. Exact model identifiers, sampling parameters, token counts and timings were not captured. The [source hashes](source-hashes.md) identify the seven files read in these comparisons and regressions. The skills were not revised in response to these results.

## Results

All eight comparison outputs met the hard constraints. The reviewer preferred the with-skill coaching outputs B and D for turning the buyer's timing constraint into practice and a next-call check. The no-skill objection outputs A and C were preferred for their natural, focused replies. One with-skill objection answer volunteered an unnecessary discount restriction and received a judgement score of 2; the other scores were 3.

Both [focused regressions](regressions.md) passed the main reviewer's checks: the informational brief added no negotiation, and the single-metric definition added no commercial KPI requirement. These are fixture-based checks, not held-out evidence.

All eight [routing cases](routing.md) selected the intended skill from the 38 frontmatter descriptions. Three prompts mirror evaluation definitions; five are additional variations. One agent made one selection per prompt. This tests description discrimination, not automatic invocation inside an installed host.

## Limits

Two repetitions on each of two fictional tasks cannot establish reliability across users, industries or models. Both conditions produced usable coaching. The objection comparison still favoured the control; this release does not claim a consistent advantage from loading the skills.

There was one blind reviewer. Source-read reports were supplied by the drafting agents, rather than recorded by a separate instrumentation layer. No customer records or external systems were used or changed during the trials. Structural and packaging checks are recorded separately from these behaviour results.
