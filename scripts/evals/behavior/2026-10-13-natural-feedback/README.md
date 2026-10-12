# Natural Call Review feedback: 13 October 2026

The revised Call Review skill was exercised on short feedback for an accounting-software discovery call and a marketing-software demo. The accounting case also ran without the skill as a matched control. These checks follow the earlier [framework-focused revision](../2026-10-13/README.md), which is retained as historical evidence.

## Method

Three fresh drafting agents received the original request and source packet for their case, without prior answers or grading criteria. A and C loaded Call Review and its direct rubric; B received only the accounting case and used general enablement knowledge. All generated answer text is retained unchanged in [outputs.md](outputs.md). Source packets are in [prompts.md](prompts.md), source-read notes and reviewer instructions in [source-reads.md](source-reads.md), and the predetermined assertions in [grading-criteria.json](grading-criteria.json).

A fresh independent reviewer received anonymous A/B/C outputs, the original requests, and the assertions. The reviewer did not receive the skill, production conditions, read logs or prior conclusions. Each artifact was assessed for evidence fidelity, domain judgment, practical usability and proportionality on a 0–3 scale: 0 harmful or unusable, 1 major repair, 2 minor repair, 3 ready as delivered. This focused scale is not the repository release rubric. The unedited assessment is in [review.md](review.md).

Agents inherited the parent configuration without model overrides. The exact model identifier, sampling parameters, token use and run timings were not captured. The skill remained unchanged during drafting and review; its exact working-tree instructions and direct rubric are retained in [skill-snapshot](skill-snapshot/SKILL.md). No prompts or control outputs were reused from the earlier comparison: case 1 uses the same fictional excerpt with a new short-feedback request; case 2 is a new demo packet.

## Results

| Artifact | Condition / source | Evidence | Judgment | Utility | Proportionality | Result |
| --- | --- | --- | --- | --- | --- | --- |
| A | With skill / accounting discovery | 3 | 3 | 3 | 3 | All four critical assertions pass; 127 words. |
| B | No skill / same accounting discovery | 3 | 3 | 3 | 3 | All four critical assertions pass; 121 words; narrowly preferred over A. |
| C | With skill / marketing software demo | 3 | 3 | 3 | 3 | All three critical assertions pass; 107 words. |

A gives direct coaching, one inline methodology reference and an explicit next-call check. C preserves the useful sample-contact test and focuses practice on involving the CRM admin to agree the evaluation. Neither response imposes a framework breakdown. The reviewer narrowly preferred B for connecting the two buyer cues more directly to agreeing what to evaluate; A was also ready to use. No artifact required repair. This comparison does not demonstrate an advantage from loading the skill.

## Coverage limits

There was one output per condition and one reviewer. The source packets are fictional. The result supports these artifacts only; it does not establish repeated performance, routing reliability, coaching effectiveness in practice, package-wide improvement or release quality. A later pre-release pass revised the rubric examples. These results apply to the retained snapshot, not the final release.

Repository and portable-spec validation were run separately; their logs were not retained with this trial. Fixture validation checks definitions; the generated answers and independent review above provide the executed behaviour evidence. No customer record, external system, publication or release was changed.
