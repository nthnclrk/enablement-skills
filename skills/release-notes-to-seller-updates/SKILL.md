---
name: release-notes-to-seller-updates
description: Convert product or engineering release notes into concise field updates with customer impact, positioning implications, and action guidance. Use when asked to summarize releases for sales, update talk tracks after product changes, or create enablement-ready release briefs. Route full launch enablement to product-launch-enablement and public-facing release notes to the user's external marketing or product comms workflow.
---

# Release Notes To Seller Updates

Turn product release details into field updates that clarify why the change matters, who it matters to, and how to use it.

## Confirm Inputs First

- Use supplied current context or relevant sections of `.enablement/context.md` when available. Treat stale, inferred, or conflicted material as provisional; never update shared context silently.
- Confirm the source material: release notes, changelog, product spec, internal memo, or engineering update.
- Confirm the audience: AEs, SDRs, SEs, managers, CS, or a mixed revenue audience.
- Confirm whether the change is net-new capability, iteration, packaging change, bug fix, or deprecation.
- For each change, confirm `release_status` (`planned`, `rolling-out`, `available`, `paused`, `rolled-back`, or `deprecated`), `effective_date` with timezone and rollout scope, `seller_action`, `action_owner`, and `source` with its as-of date.
- Confirm known target segments, affected use cases, and likely field questions.
- Confirm the affected current asset inventory, version, owner, and source for talk tracks, FAQs, battlecards, demos, or playbooks when an asset disposition is requested.
- Confirm whether the user needs a quick summary, talk-track update, FAQ update, or manager briefing.

If inputs are incomplete, ask for only the highest-impact gaps. Use labeled assumptions only for reversible packaging choices; leave release status, effective dates, availability, eligibility, actions, owners, and claims unknown until verified.

## Read The Right Reference

- Read [references/release-transformation-guide.md](references/release-transformation-guide.md) for transformation rules and seller-language guardrails.
- Read [references/source-system-guide.md](references/source-system-guide.md) when the source or distribution layer depends on shared docs, Slack, or enablement platforms.

## Default Workflow

1. Build the factual change record.
Separate product facts from seller implications. Do not treat code complete, announced, or partially rolled out as generally available; preserve the exact release status and effective date.
2. Identify who should care.
Call out the personas, segments, eligibility rules, or use cases affected.
3. Diff the field assets.
Compare the new facts with supplied current talk tracks, FAQs, battlecards, demos, and playbooks. Only then mark an asset `create`, `update`, `no-change`, or `retire`, with exact section, owner, and effective date. If the current asset or version was not supplied, return a candidate-impact row marked `current asset not supplied`; do not invent a disposition or exact diff.
4. Translate into field language.
Write the customer impact, qualification cues, approved proof, likely objections, and the action sellers should take after the effective date.
5. State what did not change.
Prevent confusion by saying what the release does not affect.
6. Package it for the audience and channel.
Adjust depth and urgency for AEs, SDRs, SEs, managers, or CS, then return something they can read quickly and apply immediately.

## Tool Notes

- Keep the workflow tool-agnostic by default.
- Use [references/source-system-guide.md](references/source-system-guide.md) for channel selection, minimum pull guidance, and safe distribution boundaries.
- Treat those systems as accelerators, not hard dependencies.
- If the change is still ambiguous or the source notes are incomplete, preserve uncertainty instead of over-translating.

## Output Contract

Default to these deliverables unless the user asks for a narrower output:

- Change register with `release_status`, `effective_date`, `seller_action`, `action_owner`, `source`, and source as-of date
- Asset-impact table with current version, disposition and exact change when verified; otherwise `current asset not supplied`, candidate impact, owner, and evidence needed
- Seller summary with customer impact
- Audience and use-case guidance
- Talk-track changes or talking points
- FAQ or objection notes
- Risks, caveats, and what still needs clarification
- Variant-ready copies for requested channels:
  Slack, email, wiki, or manager briefing

## What To Avoid

- Translating technical changes without stating customer-facing impact.
- Mixing internal uncertainty with confident seller guidance.
- Publishing one format and expecting it to work for every channel.

## Quality Bar

- Updates are short enough to use quickly and specific enough to change field behavior.
- Release status, effective date, action, owner, and source are explicit and traceable.
- Seller instructions do not get ahead of customer availability or approved claims.
- Customer impact is clearer than feature mechanics.
- Talk-track guidance is accurate and avoids overstating the change.
- Unknowns and caveats are labeled instead of guessed.
- Output helps revenue teams act, not just stay informed.
