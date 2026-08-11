---
name: partner-enablement-package
description: Build partner-ready enablement packages with separated external and internal operator assets, permitted-motion guidance, governed claims, and package-level readiness criteria. Use for partner training, reseller onboarding, channel talk tracks, or partner launch support. Route formal pass/fail certification design to certification-program-builder, then incorporate its governed artifact; route direct-sales onboarding to onboarding-program-builder and internal-only launch enablement to product-launch-enablement.
---

# Partner Enablement Package

Create a partner enablement package that helps external sellers represent the product accurately and consistently.

## Confirm Inputs First

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Confirm the partner type and motion: referral, reseller, services, marketplace, or channel.
- Confirm contractual rights, territory, product access, delivery responsibilities, and allowed customer interactions.
- Confirm the product scope, target use cases, and target customer segment.
- Confirm what the partner must be able to do after enablement: position, qualify, demo, sell, or support handoff.
- Confirm the packaging needed: onboarding guide, talk track, deck outline, certification guidance, launch update, or all of the above.
- Confirm co-sell economics and governance constraints: lead registration, split rules, discount authority, and conflict escalation.
- Confirm known partner constraints, such as limited product access, services expectations, or compliance boundaries.
- Confirm approved source-of-truth assets, claims, proof, branding, and customer references partners are allowed to use.
- Confirm readiness evidence, assessor/owner, remediation path, and any contractual or launch gate.

If critical inputs are missing, ask for the smallest missing set. Labeled assumptions may shape the internal workplan, but must not appear in partner-facing claims, economics, rights, readiness status, or customer commitments.

## Read The Right Reference

- Read [references/partner-package-blueprint.md](references/partner-package-blueprint.md) before defining permitted-motion variants, readiness evidence, and co-sell controls.

## Default Workflow

1. Define the permitted partner motion.
Map what this partner may position, qualify, demonstrate, sell, deliver, support, and hand off under the agreement and operating model.
2. Classify sources and claims.
Mark each item `partner_safe`, `internal_only`, or `unverified`; preserve approved wording, audience, owner, version, and review trigger.
3. Define observable readiness.
Specify the task, evidence, standard, assessor, scope, remediation path, and change trigger for each required capability.
When readiness is a formal or consequential pass/fail decision, use `certification-program-builder` for standards, behavior anchors, assessor calibration, retakes, accommodations, and appeals; consume that approved artifact here rather than recreating it.
4. Build the partner-facing package.
Include only the approved messaging, proof, qualification, handoff, support, and learning assets required for the permitted motion.
5. Build the internal operator pack separately.
Keep economics, lead ownership, discount authority, conflict rules, readiness evidence, restricted content, exceptions, and support obligations internal unless explicitly approved for partner release.
6. Review claims and boundaries.
Block unverified claims, unsupported commitments, expired assets, and content outside the partner's rights or readiness scope.
7. Package for delivery.
Return clearly separated partner-facing and internal artifacts with approval status and unresolved blockers.

## Tool Notes

- Keep the default workflow tool-agnostic.
- If the user already works in PRM, LMS, Docs, or partner portals, use those systems as delivery channels rather than as workflow requirements.
- If direct partner data is limited, work from existing direct-sales materials and clearly label what still needs partner validation.
- Do not publish to a portal, change partner access/readiness status, or send materials externally without explicit user approval.

## Output Contract

- `Partner-Facing Package`, limited to approved and relevant deliverables: positioning/talk track, qualification, handoff, onboarding, support, and readiness guidance.
- `Internal Operator Pack`: partner rights and motion, economics/governance, claim and source ledger, restricted-content map, readiness evidence, exceptions, support ownership, and risks.
- Approval/readiness status and unresolved blockers for each deliverable.

## Quality Bar

- Package is usable by real partners, not copied directly from internal sales enablement.
- Messaging is accurate, bounded, and safe for external use.
- Every external claim is approved for the partner audience and traceable to a current source.
- Readiness is based on observable evidence for the permitted scope, not training completion alone.
- Qualification, escalation, and handoff logic are explicit.
- Assets match the partner motion and level of product access.
- Restricted internal-only information is clearly separated from partner-safe material.
- No internal economics, account strategy, restricted proof, or unapproved commitment leaks into partner-facing artifacts.
- Output avoids channel theater and focuses on partner execution.
