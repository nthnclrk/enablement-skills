---
name: certification-program-builder
description: Create role-based readiness certifications with evidence requirements, defensible pass/fail standards, behaviorally anchored scoring, and assessor calibration. Use when the user asks to design or govern certification standards, practical assessments, assessor guides, retakes, or recertification for sales or customer-facing roles. Route learning sequence, practice, and broader ramp planning to onboarding-program-builder.
---

# Certification Program Builder

Design certification that checks real job readiness, not course completion.

## Confirm Inputs First

Confirm:

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Role, job-critical tasks, capabilities, and costly failure risks to certify
- Certification purpose, readiness claim, stakes, and decisions the result will control
- Existing job standard, policy, or threshold, including who owns it
- Available authentic evidence, representative scenarios, and examples of ready or not-ready performance
- Assessor group, subject-matter experts, cohort size and timing, learner population, assessor throughput, moderation and retake load, and evaluation capacity
- Required accommodations, retake constraints, and recertification triggers

Ask only for blockers. Do not invent a pass threshold from convenience or treat course completion, tenure, confidence, or manager familiarity as readiness evidence.

## Read The Right Reference

Read [references/certification-scoring-rules.md](references/certification-scoring-rules.md) before writing the rubric.

## Default Workflow

1. Define the readiness claim: what the person may do after certification, under what conditions, and with what level of independence.
2. Derive 4-6 dimensions from critical job tasks and failure risks, not from training modules.
3. Define authentic evidence, minimum quantity, allowed support, and critical errors for each dimension.
4. Write dimension-specific behavior anchors and practical assessment prompts that expose the required work.
5. Set the standard using minimally competent performance. Separate overall threshold, critical-dimension minimums, and non-compensable hard fails; mark the standard provisional until owner review and pilot evidence support it.
6. Pilot against representative ready, borderline, and not-ready samples; adjust ambiguous anchors or tasks before changing the standard for convenience.
7. Calibrate assessors through independent benchmark scoring, variance review, agreed rationales, and a rescore gate before live decisions.
8. Test delivery capacity. Compare cohort demand, assessment time, assessor throughput, moderation, accommodations, and expected retakes; return `fits`, `reduce`, `sequence`, or `blocked` with the binding constraint.
9. Define decision, moderation, appeal, retake, accommodation, recertification, and version-change rules.
10. Produce the certification pack with standard ownership, validation status, calibration records, and a feasible delivery decision.

## Tool Notes

- Keep certification workflow tool-agnostic.
- If requested, map rubric and score capture to the user's existing docs or spreadsheet stack while preserving evidence links, assessor identity, rubric version, and decision history.

## Output Contract

Default output includes:

- Certification blueprint
- Readiness claim and job-task-to-standard map
- Evidence plan with authenticity, quantity, allowed support, and critical-error rules
- Scoring rubric with behavior anchors
- Evaluation prompt and scenario set
- Pass/fail standard with rationale, owner, version, and `provisional` or `validated` status
- Decision, moderation, appeal, and retake rules
- Recertification cadence and scope rules
- Assessor calibration pack with benchmark evidence, scoring key, agreement gate, and drift checks
- Capacity ledger with cohort demand, assessor throughput, moderation and retake load, and a fit/reduce/sequence/blocked decision

## Quality Bar

- Rubric measures observable behavior, not vague confidence.
- Two assessors should produce similar scores on the same evidence.
- Pass criteria trace to minimally competent job performance and critical risk, not an arbitrary percentage.
- Certification process includes anti-bias safeguards and documented recertification logic.
- Certification is practical to run repeatedly.
- Material standard or rubric changes create a new version and do not silently rewrite prior decisions.
