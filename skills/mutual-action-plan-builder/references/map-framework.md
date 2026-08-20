# MAP judgment

Use this when you are writing or checking a mutual action plan. The skill body has the procedure.

## Two-owner test

Every milestone has a buyer-side owner and a seller-side owner. If only sellers have names, it is a task list.

A plan fails the test when it:

- Assigns security, legal, or procurement work to the AE
- Uses "customer" or "the team" as an owner
- Treats a calendar invite or CRM note as agreement
- Compresses unknown lead time to hit a target date

**Fails.** "Complete security review. Owner: AE. Due: end of quarter."

**Passes.** "Security questionnaire submitted — buyer: Priya (InfoSec), seller: Jordan (SE). Exit: filed in their portal. Agreed 22 April, Priya's email."

## Agreement and evidence

Use one agreement state per customer-side commitment:

- `draft`: seller-authored and not yet shared
- `proposed`: shared or discussed, not explicitly confirmed
- `agreed`: customer confirmed, with source and date
- `changed`: previously agreed content changed; needs reconfirmation
- `declined`: customer explicitly rejected it

Use one completion-evidence state independently:

- `none`: no completion claim
- `reported`: a named party says it is done, no artifact
- `artifact-linked`: required artifact or system record is linked
- `jointly-accepted`: both sides accepted the exit criteria as met

Do not convert silence, meeting attendance, or seller-entered CRM notes into `agreed`. If a material field changes, keep the history and return it to `proposed` or `changed`.

## Dates

Work backward from the target using verified durations, mandatory lead times, capacity, and blackout dates. Name the critical path, latest-safe-start dates, and slack.

If the critical path exceeds the target, return `target infeasible — replan required` with the blocking constraint and the decision owner. Do not hide the miss by assuming people will go faster.

Unknown duration stays unknown. Show what it does to the possible schedule.

## Exit criteria

A third party should be able to inspect done. "Security complete" is a status label. "Questionnaire submitted in their portal, ticket ID attached" is an exit.

## Views

Customer-visible: shared milestones, both owners, dates, dependencies, and agreed risks.

Internal-private: negotiation strategy, internal risk scoring, contingency, discount or legal posture.

Do not put internal scoring on the shared plan.

## Thin evidence

Missing buyer owner, missing confirmation, or missing lead time: leave the field proposed or unknown and show the effect. Do not invent a customer name to make the table look mutual.

## Optional shape

Use this only when the user wants a scanned table.

```text
Outcome / target date / agreement state
Milestone | buyer owner | seller owner | latest safe start | due | slack
Entry / exit | agreement state | completion evidence | confirmation source
Critical path or: target infeasible — replan required
Customer view | internal view
```
