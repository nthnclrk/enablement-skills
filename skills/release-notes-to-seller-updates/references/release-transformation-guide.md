# Release to seller-update judgment

Use this when you are translating notes into a field-usable update. The skill body has the procedure.

## Field-usable test

Can a seller act on it in the channel you named, without opening a launch plan?

**Fails.** A training agenda, go/no-go ledger, and owner matrix attached to a changelog.

**Passes.** Four Slack lines: who it is for, when it is true, what to say, what not to say.

If the user asked for launch training or gates, stop and use `product-launch-enablement`.

## Code complete is not available

For every change, capture status exactly: `planned`, `rolling-out`, `available`, `paused`, `rolled-back`, or `deprecated`. Preserve the effective date, timezone, and rollout scope when the source has them. If it does not, write `unknown`.

Do not translate code completion, an announcement, a beta, or a partial rollout into general availability. Do not invent the date to make the update feel finished.

## Field relevance

Include a change only when it alters at least one of:

- who to target or qualify
- what a seller may claim
- what the buyer can do or expect
- a sales, implementation, renewal, or support workflow
- pricing, packaging, eligibility, or risk
- a current talk track, FAQ, demo, or battlecard

Routine fixes with no field action stay in a compact digest or drop out.

## What did not change

Say it out loud. Sellers assume adjacent things moved.

**Fails.** "New conditional triggers are live for Pro and Enterprise."

**Passes.** "New conditional triggers are live for Pro and Enterprise. Starter is unchanged. Existing rules keep running. Custom ERP triggers still need a services review. Do not say every workspace is upgraded."

## Channel rewrite

One factual record. Different copy per channel.

**Fails.** The same 400-word brief pasted into Slack, email, and the wiki.

**Passes.** Slack: four lines and a "what not to say." Email: the same facts plus one FAQ. Wiki: the change register. Manager briefing: the inspection cue.

Match depth to the audience. An SDR needs the qualification cue. An SE needs the limitation. A manager needs the line to listen for.

## Asset diffs

Compare only when current assets were supplied. Allowed dispositions: `create`, `update`, `no_change`, `retire`. Do not rewrite a whole battlecard when one approved sentence changed.

When no current asset was supplied, write `current asset not supplied` and name the candidate impact. Do not invent a disposition.

## Thin evidence

Keep uncertainty internal. Seller-facing copy states a verified boundary or an explicit open question, not false certainty. Mark the draft review-ready until claims, dates, and availability have the required approval.
