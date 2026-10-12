---
name: battlecard-builder
description: Create competitor battlecards or head-to-head fit guidance with discovery questions, supported comparisons and proof limits. Use to assess when to compete, qualify out or prepare for a competitive evaluation. Route a reply to a specific buyer concern to objection-library-builder, category positioning to value-prop-and-positioning, and account briefs to account-brief-builder.
---

# Battlecard builder

Help a seller decide where the offer fits, what to ask, and which competitive claims the evidence supports.

The job is to say when to compete, when to qualify out, and what to ask before responding.

**Fit.** "Verified product evidence supports offline plant-floor capture. The supplied implementation assessment does not support a three-week SAP rollout. Ask which requirement is decisive before recommending a fit."

**Attack.** "Unlike Competitor X, our AI-powered platform delivers unmatched visibility and a modern architecture."

If you cannot name when not to compete, you do not have a card yet.

## Inputs

Reuse supplied context first. If a missing company fact would change the result, check the relevant sections of `.enablement/context.md` when available. Preserve source dates and approval limits.

Ask only for what changes the card:

1. The exact competitor, edition, segment, and as-of date
2. What the buyer is actually choosing between
3. The evidence you have, and what is approved to say
4. Who will use the card, and any legal or brand limits

If competitive evidence is missing, identify the claims that cannot be made. A full battlecard needs a research brief first. For an imminent call, provide a safe discovery question and response based only on known facts, with the missing proof clearly marked.

## Supporting material

Read [references/battlecard-template.md](references/battlecard-template.md) for the fit test, claim types, and optional card shape. Skip it if the user already gave you a structure and only wants lines.

## Procedure

1. Name the buyer's decision.
   What they are choosing, why the alternative is credible, which criteria bind. Done when you can say that in two sentences.
2. Sort the evidence.
   Competitor fact, buyer perception, deal pattern, internal hypothesis, approved proof. Date, scope, and permitted use on each. Buyer reports are perception until verified.
3. Map fit.
   Win zones, neutral tradeoffs, loss risks, and qualify-out conditions. A product difference is not an advantage until you can name the mechanism and the buyer outcome.
4. Write questions first.
   Each question should reveal which constraint is binding before the seller responds.
5. Write response paths.
   Acknowledge the goal, diagnose, state the supported difference, cite proof, propose a next step. For stale or unverified comparisons, ask about the buyer's requirement rather than implying a competitor weakness. Absence from a public page is not evidence that a capability is absent.
6. Mark landmines.
   Security, pricing exceptions, confidential data, absolute claims, implementation guarantees.
7. Date the card.
   As-of date, gaps, and what event should trigger a rewrite. Leave unsupplied owners unknown.

For category strategy use `value-prop-and-positioning`. For a reusable objection system use `objection-library-builder`. For one account use `account-brief-builder`.

Do not publish or write claims into a shared system without explicit approval.

## What to return

For a full card, include the items below. For one competitive question, return the response, a question that tests fit, and its evidence limits:

- Fast scan: the decision, buyer criteria, recommended posture, and the evidence caveat
- Fit map: win, neutral, lose, qualify out
- Discovery questions tied to those criteria
- Response paths with proof and customer-safe status
- Landmines and who to escalate to
- Evidence ledger and as-of date

## Quality bar

- A seller can use this five minutes before the call.
- The card says when not to compete.
- Competitor fact, perception, hypothesis, and approved claim stay distinct.
- Every spoken counter has current proof, or is a question.
- No invented weaknesses, pricing, security, roadmap, or customer outcomes.
