# Product Launch Enablement Exemplar

## Use Case

Turn product-centric release material into a controlled field rollout when availability, announcement timing, packaging, migration, and proof all have different boundaries.

## Fixtures

- [release-notes.md](release-notes.md): factual product changes, availability, migration rules, proof, and limitations
- [launch-context.md](launch-context.md): audiences, owner matrix, readiness state, rollout dates, and a conflicting draft claim

All companies, products, and data are fictional.

## Natural Prompt

> Build a field-ready launch enablement package from release-notes.md and launch-context.md. Include the launch tier, audience-specific narrative, talk-track and FAQ updates, readiness gates, training plan, and a justified first post-launch decision window. Distinguish technical availability from the field announcement, preserve packaging and migration limits, and surface anything that still needs approval before distribution.

## Expected Output Excerpt

The core seller update should remain bounded:

> From 20 August, sellers can introduce Escalation Rules 2.0 to Pro and Enterprise customers that need more flexible handoff monitoring. The new builder adds conditional triggers, team escalation, and audit history. Existing rules continue to run; migration is optional until 15 December.

| Gate | Status | Evidence or blocker | Owner |
| --- | --- | --- | --- |
| Product scope and eligibility | Ready | Pro and Enterprise eligibility confirmed in release notes | Product |
| Approved customer proof | Ready with caveat | Four-customer pilot is directional, not a benchmark | Product Marketing |
| Pricing FAQ | Blocked | Finance review is still open | Product Marketing |
| Manager inspection prompts | In progress | Draft exists; Sales leadership approval due 12 August | Enablement |

The draft claim that “all existing rules upgrade automatically” must be rejected because it conflicts with the source release note.

## Review Checklist

- Technical availability on 18 August and field announcement on 20 August are kept distinct
- Starter-plan customers and custom ERP triggers are not represented as generally eligible
- Pilot evidence retains sample size and directional caveat
- The package includes what changed, why customers care, when to mention it, and what not to say
- Every readiness gate has evidence, status, owner, and deadline
- Training and reinforcement vary by AE, SE, CSM, and manager needs
- The two required roleplays are runnable, with participant prompts, observable success anchors, critical errors, and retry guidance
- Approved source content does not make an operational gate ready when a required handoff, destination, or intake path is missing
- No content is marked published or ready when approval is still outstanding

## Deliberate Uncertainty

Pricing guidance and manager prompts are not yet approved. A strong response identifies these as go-live dependencies and returns review-ready drafts rather than inventing approval or distributing them.
