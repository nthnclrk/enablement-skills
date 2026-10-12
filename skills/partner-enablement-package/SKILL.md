---
name: partner-enablement-package
description: Build partner-ready enablement packages with separated external and internal operator assets, permitted-motion guidance, governed claims, and package-level readiness criteria. Use for partner training, reseller onboarding, channel talk tracks, or partner launch support. Route formal pass/fail certification design to certification-program-builder, then incorporate its governed artifact; route direct-sales onboarding to onboarding-program-builder and internal-only launch enablement to product-launch-enablement.
---

# Partner enablement package

Prepare partners to carry out the activities their agreement permits, using claims and materials approved for that audience.

Partners get only what they may say and do under the agreement. Channel managers get the economics, conflict rules, and restricted proof in a separate internal pack.

**Partner-safe.** "You may position MosaicOps to mid-market ops buyers and register the lead. You may not quote discount, promise custom ERP, or share the four-customer pilot."

**Copied pack.** The AE battlecard, our win rate versus Competitor X, and the Q3 discount grid, with "partner" find-replaced in.

Keep restricted numbers in the channel manager's internal material, separate from the partner's file.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the package:

1. Partner type and what they are actually allowed to do
2. The job after enablement: position, qualify, demo, sell, or hand off
3. Approved partner-facing claims, proof, and branding
4. What must stay internal: economics, discounts, account strategy, restricted proof

If a right, claim, or economic rule is missing, leave it unknown. Do not invent partner claims, discounts, territories, or readiness.

## Supporting material

Read [references/partner-package-blueprint.md](references/partner-package-blueprint.md) for the copy-paste tell, claim classification, and the partner-facing versus internal split. Skip it if they already handed you a classified source list and only want assembly.

## Procedure

1. Define the permitted motion.
   Map what this partner may position, qualify, demonstrate, sell, deliver, and hand off. Partner type is context, not permission. Done when each activity has a scope, a prohibited commitment, and a handoff owner.
2. Classify every source.
   Mark `partner_safe`, `internal_only`, or `unverified`. Direct-seller approval does not approve partner use. Done when nothing unverified sits in a partner-facing artifact.
3. Build the partner-facing package from `partner_safe` only.
   Positioning, qualification, handoff, approved proof, and the learning they need for this motion. Cut anything a direct AE uses that this partner cannot defend.
4. Build the internal operator pack separately.
   Rights, lead registration, split rules, discount authority, conflict escalation, restricted content, exceptions, and support obligations. Never nest this inside a partner document.
5. Define observable readiness.
   Practise the permitted task with realistic partner constraints and feedback. Specify the evidence, standard, assessor, and remediation needed for independent work. Attendance alone cannot establish readiness. If the decision is a formal pass/fail, use `certification-program-builder` and consume that artifact; do not recreate it.
6. Review the boundary.
   Block unverified claims, expired assets, and content outside this partner's rights. Done when a channel manager can hand the external file to a partner without redacting.

For direct-hire ramp use `onboarding-program-builder`. For an internal-only launch kit use `product-launch-enablement`.

## What to return

For a complete package, separate the partner-facing and internal artifacts below. If only one is requested, return that artifact and flag any missing approvals without generating the other:

- Partner-facing package: permitted motion, approved messaging, qualification, handoff, and readiness guidance
- Internal operator pack: rights, economics, claim ledger, restricted-content map, exceptions, and support ownership
- Approval status and blockers on each deliverable

Do not merge the two files. Do not publish, change portal access, or mark a partner ready without explicit approval.

## Quality bar

- A partner can execute the permitted motion without seeing internal economics.
- A channel manager can operate the motion from the internal pack.
- The materials reflect this partner's permitted activities and support needs.
- Every external claim is approved for this partner audience, or is absent.
- Readiness is an observed task, not a completion checkbox.
- Qualification, escalation, and handoff owners are named.
- No invented claims, discounts, territories, or readiness states.
