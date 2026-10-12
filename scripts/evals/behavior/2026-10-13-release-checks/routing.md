# Frontmatter routing check

A fresh agent read only the name and description in all 38 canonical skill entrypoints. It received the prompts below and was asked to choose one primary skill with a reason. It did not receive expected answers, skill bodies, evaluation files or prior results. No selected workflow was executed.

## Prompts

1. My buyer says a competitor is 30% cheaper. I've got a call shortly. Help me respond naturally without inventing proof or offering a discount.
2. Help me assess where we fit against Competitor X for a plant-floor evaluation. I need the requirements that favour each offer and when we should qualify out, not a reply to an objection.
3. Write a 30-second opener for our next product demo. We have agreed the agenda and want to confirm the buyer's priority before showing anything.
4. Procurement says our implementation looks risky. Give me a short reply for today's call. I don't have implementation evidence yet.
5. I have a competitor meeting in ten minutes. Using these verified requirements and product notes, show me our fit, the loss risks and what to qualify before recommending either option.
6. Turn this approved discovery outline into natural spoken transitions for our AE. Keep its sequence and buyer questions.
7. Gather the missing company facts from these source documents so we can reuse them for next month's launch and onboarding work.
8. We missed quota and I'm unsure whether to change coaching, onboarding or process. Help me decide where to start.

## Generated selections

1. `objection-library-builder` — The deliverable is a spoken response to a specific price objection, with proof and discount boundaries.
2. `battlecard-builder` — The request is for competitor-specific fit, requirements and qualify-out guidance.
3. `talk-track-builder` — The user needs a short spoken opener within an already agreed meeting structure.
4. `objection-library-builder` — The user needs a response to a specific implementation-risk concern despite missing proof.
5. `battlecard-builder` — The requested output is a head-to-head assessment of fit, loss risks and qualification requirements.
6. `talk-track-builder` — The task is to write spoken transitions while preserving an existing discovery structure.
7. `revenue-enablement-context` — The user wants reusable company facts to support multiple downstream workflows.
8. `enablement-router` — The user needs to select the right enablement response before committing to coaching, onboarding or process work.

Read scope: only the `name` and `description` frontmatter in all 38 `skills/*/SKILL.md` files. No bodies, evals, repository documentation or prior results were read; no workflows were executed and no files were changed.

## Check

The main reviewer checked the choices against the intended boundaries: all eight matched. Prompts 1–3 repeat evaluation-definition cases; 4–8 add variations. This single descriptive selection pass does not establish host-level invocation reliability.
