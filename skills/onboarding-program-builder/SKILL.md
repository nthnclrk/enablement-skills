---
name: onboarding-program-builder
description: Build role-based ramp plans that help new hires become productive faster through job-critical practice, evidence checkpoints, and manager coaching. Use when the user asks for onboarding plans, 30-60-90 views, competency-based ramp plans, manager check-ins, or diagnostic onboarding checkpoints for sales or customer-facing teams. Route formal pass/fail readiness standards, certification decisions, and assessor calibration to certification-program-builder.
---

# Onboarding program builder

Help new hires learn, practise, and demonstrate the work their role requires, with support matched to their starting proficiency.

Onboarding teaches the job and collects diagnostic evidence. A pass/fail gate is `certification-program-builder`. A customer time-to-value journey is `onboarding-to-value-playbook`.

**Performance checkpoint.** "Before independent discovery, observe a live call: the rep clarifies the buyer's problem and its impact, then agrees a useful next step. If no live opportunity is available, continue practice and leave the checkpoint pending."

**Calendar.** "Days 1-30: complete product training. Days 31-60: shadow. Days 61-90: carry a full pipeline."

Each phase should give the hire a useful work task and the manager a clear way to judge what support is needed.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the plan:

1. Role, segment, and experience mix: new hire, internal transfer, experienced external
2. Job-critical tasks, expected outcomes, and costly failure risks
3. Target time to supervised and independent work
4. Starting-proficiency evidence, if any exists
5. Learner, facilitator, SME, and manager capacity
6. Whether a formal certification exists that onboarding should prepare for, not score

Keep role standards, ramp targets, and capacity unknown until verified. Missing baseline is unknown ability, not low ability.

## Supporting material

Read [references/onboarding-framework.md](references/onboarding-framework.md) for phase gates, evidence checkpoints, and the certification boundary. Skip it if the user already has competencies and only wants a focused checkpoint revision.

## Procedure

1. Start from the job, not the catalog.
   Critical tasks, outcomes, failure risks. Done when each competency is a thing someone does at work.
2. Take a short starting baseline.
   Knowledge check, work sample, roleplay, or observed task. Use it to compress or add support by profile.
3. Gate phases on evidence, not dates.
   Foundation, supervised application, independent execution. Add a 30-60-90 view only when asked or useful. Dates do not prove progression.
4. Map each competency to practice, live-work evidence, and a manager check.
   Done when this week's proof is observable without a quiz score.
5. Space learning, practice, application, and review across realistic work opportunities.
   Use feedback and retries before increasing difficulty or independence. Where live work is unavailable, use a representative simulation and state which evidence still needs to come from live work.
6. Build a capacity ledger first.
   Learners, facilitators, SMEs, managers, systems, timezones. Return `fits`, `reduce`, `sequence`, or `blocked` before assigning work that overflows.
7. Give managers checks they can actually run.
   Lightweight, scheduled inside available coaching time.
8. Name ramp-risk triggers and the evidence that returns someone to the path.
9. If a certification exists, show where onboarding gathers evidence for it.
   Leave the standard and the decision to `certification-program-builder`.

LMS completion is not proof of readiness. Style, confidence, and familiarity are not competence.

## What to return

For a new ramp, include the items below. For one phase or learner profile, revise that part and its dependencies:

- Outcome-gated ramp, with 30-60-90 only when requested or useful
- Adjustments for the learner profiles actually in scope
- Job-task, competency, practice, and evidence map
- Manager checkpoints tied to practice, application opportunities, and required evidence
- Diagnostic tracker that does not pass or fail
- Ramp-risk triggers and the return-to-path evidence
- Certification handoff when a formal gate is in scope
- Capacity ledger and `fits` / `reduce` / `sequence` / `blocked`

Do not write customer first-value milestones. That is `onboarding-to-value-playbook`.

## Quality bar

- Each phase includes observable work and a realistic opportunity for manager feedback.
- 30-60-90 is a calendar view, not a readiness gate.
- Experience variants change practice and support, not slogans.
- Manager checks fit real coaching time.
- Diagnostic evidence stays separate from any certification decision.
- The plan prepares the hire for job tasks and identifies any separate certification requirements.
