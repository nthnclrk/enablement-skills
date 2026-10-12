---
name: release-notes-to-seller-updates
description: Convert product or engineering release notes into concise field updates with customer impact, positioning implications, and action guidance. Use when asked to summarize releases for sales, update talk tracks after product changes, or create enablement-ready release briefs. Route full launch enablement to product-launch-enablement and public-facing release notes to the user's external marketing or product comms workflow.
---

# Release notes to seller updates

Explain a product change in language sellers can use, with its availability, relevant customers, and the action to take.

Group related changes when they serve the same audience and action. Separate changes with different eligibility, timing, or customer implications. Training plans, go/no-go ledgers, and owner matrices belong in `product-launch-enablement`.

**Field-usable.** "From 18 August, Pro and Enterprise can opt into Escalation Rules 2.0. Mention it when a buyer inspects overdue handoffs. Do not pitch it to Starter."

**Launch plan.** "Here is the training plan, go/no-go ledger, owner matrix, and 30-day adoption review."

Include the customer-facing wording and limits the seller needs today; link to detail only for follow-up.

## Inputs

Ask only for the inputs that change the update:

1. The source notes, spec, or changelog
2. Who must act, and which channel carries the update
3. Known status, effective date, and eligibility
4. Current talk tracks, FAQs, or battlecards only if they asked for a diff

If status or date is missing, leave it unknown. Do not invent launch dates, availability, or claims.

## Supporting material

Read [references/release-transformation-guide.md](references/release-transformation-guide.md) for the field-usable test, status rules, and channel rewrite. Read [references/source-system-guide.md](references/source-system-guide.md) when the source or destination is Slack, a wiki, or an enablement platform.

## Procedure

1. Build the factual change record.
   Separate product facts from seller implications. Code complete, announced, or partially rolled out is not generally available. Done when each change has status, date or `unknown`, eligibility, and source.
2. Decide who should care.
   Personas, segments, editions, or use cases that change. Routine fixes with no field action stay in a one-line digest or drop out. Done when you can name who acts and who can ignore it.
3. Translate into field language.
   Customer impact, when to mention it, the qualification cue, the action after the effective date, and approved proof only if you have it. Done when a seller can use it without opening the engineering notes.
4. State what did not change.
   What still works the old way. What this release does not allow. The line sellers should stop using if the old line is now wrong.
5. Package it for the requested channel.
   Slack, email, wiki, and manager briefing are different lengths of the same facts. Rewrite; do not paste. Done when each requested variant can be sent as-is after human approval.
6. Diff current assets only if asked.
   Mark `create`, `update`, `no_change`, or `retire` with section, owner, and date. If the current asset was not supplied, write `current asset not supplied`. Do not invent a disposition.

For a full launch kit use `product-launch-enablement`. For partner-facing wording use `partner-enablement-package`.

## What to return

Lead with the ready-to-review message in the requested channel. Keep detailed source notes separate. For a digest or larger update, include as needed:

- Change register with status, date or `unknown`, seller action, owner, and source
- Seller summary: who it is for, customer impact, what to say, what not to say
- What did not change
- Channel variants only for the channels they asked for
- Asset-impact rows only when a diff was requested
- Open questions and caveats

Do not add training plans, go/no-go gates, or an owner matrix. Do not publish.

## Quality bar

- A seller can act from the named channel without another doc.
- The update includes only the channel variants and asset changes requested.
- Status and date match the source, or are marked unknown.
- Customer impact is clearer than feature mechanics.
- Each channel variant is a rewrite, not a paste.
- No invented dates, eligibility, proof, or asset dispositions.
