---
name: account-brief-builder
description: Build concise, decision-ready account briefs for account reviews, account planning, renewal or expansion reviews, and customer meeting preparation. Use when asked to summarize an account's commercial state, stakeholders, risks, upside, or next actions. Route single-opportunity inspection to deal-inspection-coach and executive meeting narratives to executive-briefing-builder.
---

# Account brief builder

Prepare an account owner to make a specific decision using current commercial evidence.

An account brief covers one account, one meeting or decision, and the next actions that resolve it. If the user wants a customer-facing QBR, use `qbr-ebr-builder`. If they want an executive meeting narrative with an ask, use `executive-briefing-builder`. If they want one opportunity inspected, use `deal-inspection-coach`.

**Decision moment.** "Acme EMEA renewal is 47 days out. Champion left 9 April. Thursday's review decides whether we assign a new executive sponsor before we send commercial paper, or we walk into procurement single-threaded."

**Account wiki.** "Acme is a strategic enterprise account with strong expansion potential. We should deepen multi-threading, mitigate churn risk, and align stakeholders on value."

Put the recommendation, supporting evidence, and decision-critical gap on the first screen.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for the inputs that change the decision:

1. The account and business unit in scope
2. The meeting or decision this brief is for, and who owns it
3. The as-of date and the source packet you actually have
4. Known stakeholders and commercial constraints

If material account evidence is missing, return a labeled briefing frame and an evidence request. Do not invent metrics, logos, contract terms, or stakeholder roles.

## Supporting material

Read [references/account-brief-template.md](references/account-brief-template.md) for the decision-moment test, conflict handling, and the scanned card. Skip it if the user already gave a structure and only wants the operating view.

Read [references/source-system-guide.md](references/source-system-guide.md) when the brief draws from CRM, calls, product, support, or contract records.

## Procedure

1. Define the decision.
   Name the meeting, decision owner, and time horizon. For a refresh, identify what changed since the last brief and retain verified material that still matters. The opening should state what the owner needs to decide and the consequence of delay.
2. Freeze the evidence.
   Record source, date, and locator for each material claim. Preserve conflicts. Do not blend CRM, call, and chat into one story.
3. State the commercial facts.
   Open opportunities, renewal or expansion status, and material dependencies only when a source supports them. Separate recorded fields from buyer signals from internal interpretation.
4. Map the room that matters.
   Buying role, influence, stance, and coverage: confirmed, inferred, or unknown. Title is not a role. Flag missing decision-makers and single-thread risk.
5. Name upside and risk that change this decision.
   Each item: evidence, consequence, trigger, and confidence in the evidence. Skip items that do not affect this moment.
6. Recommend the smallest next moves.
   Actions that reduce uncertainty, restore coverage, or move the commercial path. Mark owners and dates confirmed, proposed, or unknown.
7. Compress.
   Lead with what changed, what matters, and what must be decided. Source notes and unresolved conflicts sit below the operating view.

Do not write to CRM, account plans, or customer-facing material without explicit approval.

For a single-deal review use `deal-inspection-coach`. For a customer QBR use `qbr-ebr-builder`. For an executive meeting with an ask use `executive-briefing-builder`.

## What to return

For a new brief, return the following. For a refresh or one question, update only the affected findings and actions:

- Account, as-of date, the decision moment, and who owns it
- Current state, material change, recommendation, and evidence caveat
- Commercial snapshot with sources and freshness
- Stakeholders that matter for this decision, with coverage gaps
- Upside and risk that change the decision, with triggers
- Near-term actions with owner and date status
- Source conflicts and open questions

Do not add a customer-facing narrative, meeting choreography, or a full account plan unless this moment needs it.

## Quality bar

- A manager can decide from the first screen.
- Every material claim has a current source, or is marked unknown.
- Recorded facts, buyer signals, and internal hypotheses stay distinct.
- Conflicts and missing decision roles stay visible.
- Actions resolve this decision, not generic account hygiene.
- The recommendation addresses the account decision the user asked about.
