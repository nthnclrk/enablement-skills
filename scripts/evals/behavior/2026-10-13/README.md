# Call Review framework checks: 13 October 2026

This record covers the earlier framework-focused revision. The subsequent [natural feedback revision](../2026-10-13-natural-feedback/README.md) changes the ordinary coaching format; the original artifacts and snapshot below are retained.

The unreleased Call Review revision was exercised on three source packets: MEDDPICC discovery for accounting software, an automated opening summary, and a marketing-software call with a custom team rubric. The accounting case also ran without the skill as a matched control.

## Method

Four fresh drafting agents received the same raw packet for their case. A, C and D explicitly loaded Call Review and its direct rubric. B received only the accounting prompt and transcript, using general enablement knowledge. The source-read logs are retained in [source-reads.md](source-reads.md).

An independent reviewer received anonymous A/B outputs, the original requests, and the assertions and artifact-scale instructions. The reviewer did not receive the skill, production conditions, read logs or prior conclusions. Each artifact was assessed for evidence fidelity, domain judgment, practical usability and proportionality on a 0–3 scale: 0 harmful or unusable, 1 major repair, 2 minor repair, 3 ready as delivered. This focused scale is not the repository release rubric.

Agents inherited the parent configuration without model overrides. The exact model identifier, sampling parameters, token use and run timings were not captured. The skill source remained unchanged during drafting and review. Its exact working-tree instructions and rubric are retained under [skill-snapshot](skill-snapshot/SKILL.md); they are not a published-release snapshot.

Prompts are retained in [prompts.md](prompts.md), generated answers in [outputs.md](outputs.md), scenario assertions in [grading-criteria.json](grading-criteria.json), and the unedited independent assessment in [review.md](review.md). Original temporary case and output files were consolidated into those Markdown records; generated answer text is unchanged.

## Results

| Artifact | Condition / source | Evidence | Judgment | Utility | Proportionality | Result |
| --- | --- | --- | --- | --- | --- | --- |
| A | With skill / accounting MEDDPICC excerpt | 3 | 3 | 3 | 3 | All four critical assertions pass; preferred over B for the manager's 1:1. |
| B | No skill / same accounting excerpt | 3 | 2 | 3 | 3 | All four critical assertions pass; IT's validation method could be more explicit. |
| C | With skill / partial automated summary | 3 | 3 | 3 | 2 | All three critical assertions pass; scoring explanation could be shorter. |
| D | With skill / custom Impact and Fit rubric | 3 | 3 | 3 | 3 | All three critical assertions pass; preserves demonstrated impact exploration. |

A's advantage was the explicit distinction between approval steps and approval requirements, a direct question about how IT would check those requirements, and a usable rehearsal. Both A and B stayed within the supplied evidence. C used N/O rather than low scores for inaccessible behaviour; D used the supplied rubric and kept the effective consequence question.

These results apply to the earlier skill snapshot. The minor proportionality issue in C is retained in the original review; it did not justify adding a general scoring rule during that framework-focused revision.

## Coverage limits

There was one output per condition and one reviewer. The transcripts are fictional. These checks support the observed responses only; they do not establish reliable skill discovery, repeated performance, package-wide improvement or field results. The no-skill control also passed every critical assertion. No customer record, external system, publication or release was changed.

Repository and portable-format validation were run separately. Fixture validation checks definitions; the generated artifacts and review above provide the executed behaviour evidence.
