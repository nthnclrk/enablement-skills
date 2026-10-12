---
name: qbr-ebr-builder
description: Build customer-facing QBR and EBR deliverables that align customer goals, business outcomes, decisions, risks, and next steps. Use when asked to prepare a quarterly business review or executive business review, with an optional internal prep appendix for that same review. Route standalone internal account diagnosis to account-brief-builder and one-off executive meeting prep to executive-briefing-builder.
---

# QBR EBR builder

Build a customer review that connects agreed goals, results, unresolved issues, and decisions about the next period.

A QBR or EBR is a customer-facing review unless the user asks for internal mode. If they want a standalone internal account diagnosis, use `account-brief-builder`. If they want a one-off executive meeting with an ask, use `executive-briefing-builder`.

**Customer outcome.** "Time-to-invoice dropped from 9 days to 4. You still miss the 2-day target you set in January. Decision: fund the AP automation work this quarter, or accept 4 days as the new baseline."

**Vendor recap.** "This quarter our team delivered 14 enablement sessions, launched two playbooks, and completed three QBRs. We remain committed to your success."

If the customer would hear internal risk language — churn risk, weak champion, discount ceiling — it is not a customer pack.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the review:

1. QBR or EBR, audience seniority, and the decisions you want in the room
2. Customer goals and success criteria they already accepted
3. Review period, baseline, and prior-cycle commitments
4. Outcome metrics with source, as-of date, and whether the customer accepts the interpretation
5. Format, and whether they also want an internal prep appendix

If evidence is thin, ask for the smallest blocking set. Do not invent metrics, logos, attribution, pricing, or customer commitments.

## Supporting material

Read [references/qbr-ebr-structure.md](references/qbr-ebr-structure.md) for QBR vs EBR shape, the outcome test, and leakage rules. Skip it if the user already gave an agenda and only wants the narrative filled.

## Procedure

1. Name the mode.
   Customer-facing is the default. Internal prep is a separate appendix, only when asked. Done when you can point to which pages the customer will see.
2. Name the decisions the room must make.
   Identify the genuine decisions or confirmations needed, proportionate to the review. If the purpose is to validate results or hear changed customer priorities, state that purpose rather than manufacturing an executive ask.
3. Reconcile the scorecard.
   Each metric: definition, source, as-of date, baseline, current value, evidence confidence. Attribution stays separate. Preserve conflicts. Correlation is not causation.
4. Close the prior loop.
   Status of last cycle's commitments before any new work. Unconfirmed customer owners stay proposed.
5. Write the outcome narrative.
   Goals, movement, interpretation, business impact. Cut vendor activity that does not change an outcome they care about.
6. Surface only supported risks and opportunities.
   Trigger, impact, response. Customer-safe wording in the pack. Internal commercial risk stays in the appendix.
7. Convert to a joint action plan.
   Customer owner and internal owner on each item. Mark `draft`, `proposed`, `agreed`, or `changed`. Treat a customer date as a commitment only with confirmation evidence.
8. Leakage check.
   Check for internal commercial judgments, negotiation limits, confidential commentary, and unsupported attribution. Material delivery problems still belong in the customer discussion, phrased factually with an owner and response.

Do not publish or share the customer pack without explicit approval.

For standalone internal diagnosis use `account-brief-builder`. For a one-off executive meeting use `executive-briefing-builder`.

## What to return

Return the requested agenda, narrative, or pack. For a full customer-facing review, include:

- Review type, audience, and the decisions requested
- Customer goals, prior commitments, and baseline
- Outcome scorecard with source, as-of date, interpretation, and attribution status
- Evidence-supported risks, opportunities, and recommendations
- Joint action plan with agreement state and both-side owners
- Open questions and labeled gaps

Include an internal prep appendix only when requested. Never mix it into the customer pack.

## Quality bar

- The narrative is about their outcomes, not our activity.
- Every metric can drive a decision, or it is cut.
- Risks have a trigger and a response the customer can hear.
- Each action has a customer-side owner and an internal owner.
- Internal-only language is absent from customer pages.
- The customer can confirm the interpretation of results and respond to the proposed actions.
