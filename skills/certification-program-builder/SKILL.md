---
name: certification-program-builder
description: Create role-based readiness certifications with evidence requirements, defensible pass/fail standards, behaviorally anchored scoring, and assessor calibration. Use when the user asks to design or govern certification standards, practical assessments, assessor guides, retakes, or recertification for sales or customer-facing roles. Route learning sequence, practice, and broader ramp planning to onboarding-program-builder.
---

# Certification program builder

Define the work a person must demonstrate before they can perform a role or task independently.

Certification states what a person may do after they pass, and what evidence proves it. The ramp that prepares them is `onboarding-program-builder`. A practice drill may supply a scenario; it does not set the decision.

**Observable gate.** "Certified AE may run first-call discovery unsupervised. Pass: independently gets problem, cost, and a mutual next step. Hard fail: invents a customer result."

**Quiz.** "80% on the product quiz plus manager sign-off."

If two assessors cannot score the same evidence the same way, you do not have a standard yet.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the standard:

1. Role, critical tasks, and the failures this gate must catch
2. What the result will control, and who owns the job standard
3. Authentic evidence already available, plus examples of ready and not-ready work
4. Assessor group, cohort size, and evaluation capacity
5. Accommodation, retake, and recertification constraints

Do not invent a pass mark from convenience. Course completion, tenure, confidence, and manager familiarity are not readiness evidence.

## Supporting material

Read [references/certification-scoring-rules.md](references/certification-scoring-rules.md) for anchors, hard fails, and calibration. Skip it if the user already has a governed rubric and only wants retake or recertification rules.

## Procedure

1. Write the readiness claim.
   What they may do, in which situations, with what independence. Done when a manager can use that sentence to grant or withhold work.
2. Derive the smallest set of dimensions that covers the job and its material failure risks.
   Each dimension must distinguish competent from unsafe or ineffective work. Use knowledge checks for prerequisites where appropriate; they cannot replace demonstration of the task.
3. Define authentic evidence for each dimension.
   Type, minimum quantity, allowed support, critical errors. Done when a quiz cannot substitute for the work.
4. Write behavior anchors and practical prompts.
   Dimension-specific `1` through `4`. Generic labels are not a rubric.
5. Set the standard at minimally competent independent performance.
   Overall threshold, critical-dimension minimums, non-compensable hard fails. Mark it `provisional` until the owner and a pilot support it.
6. Pilot on ready, borderline, and not-ready work samples.
   Investigate unexpected results against the task, anchors, accessibility, and independent evidence of competence. Revise the assessment or the prior classification as the evidence warrants; do not move the threshold simply to obtain a preferred pass rate.
7. Calibrate assessors.
   Independent benchmark scoring, variance review, rescore gate. Do not go live while hard-fail calls still disagree.
8. Test delivery capacity.
   Demand, assessor time, moderation, accommodations, retakes. Return `fits`, `reduce`, `sequence`, or `blocked`.
9. Write decision, appeal, retake, accommodation, recertification, and version rules.
10. Ship the pack with owner, version, validation status, and the delivery decision.

A high score on a safe dimension cannot buy off a hard fail. Material rubric changes get a new version. Prior decisions keep the standard they used.

## What to return

For a new standard, return the pack below. For a rubric, retake, or recertification revision, return the changed rules and their effects on prior decisions:

- Readiness claim and the job-task map
- Evidence plan: authenticity, quantity, support, critical errors
- Anchored rubric and practical prompts
- Pass/fail logic with owner, version, and `provisional` or `validated`
- Decision, moderation, appeal, and retake rules
- Recertification window and change triggers
- Calibration pack: benchmarks, agreement gate, drift checks
- Capacity ledger and `fits` / `reduce` / `sequence` / `blocked`

Do not write the ramp curriculum. That is `onboarding-program-builder`.

## Quality bar

- Pass requires observable job evidence, not a course score.
- Two assessors would reach the same decision on the same evidence.
- Hard fails are non-compensable.
- The standard is `provisional` until owner review and pilot evidence exist.
- Identity, tenure, and confidence are not scored.
- The assessment establishes readiness for the stated task and leaves curriculum design to the onboarding plan.
