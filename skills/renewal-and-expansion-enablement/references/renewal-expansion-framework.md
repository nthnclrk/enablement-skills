# Renewal and expansion judgment

Use this when you are writing segment plays, signals, or manager checkpoints. One named account belongs in `account-brief-builder`.

## Three plays, not one motion

Save, healthy renewal, and expansion have different triggers and different commercial rules.

**Fails.** Every account gets a QBR, a 10% discount ladder, and an upsell talk track at 90 days.

**Passes.** Save: restore the purchased outcome and named executive coverage before commercials. Healthy renewal: lock notice, budget, and signature against the contract. Expansion: only after value, a new buyer task, stakeholders, capacity, and commercial path are present.

A healthy renewal is not expansion-ready. An at-risk account does not get a growth play because whitespace exists.

## Contract-derived time

Build timing from verified milestones: term end, renewal or termination notice, pricing notice, budget, procurement, legal or security, executive approval, amendment, signature.

`Latest Safe Start = Required Completion Date - Verified Lead Time - Owner-Approved Contingency`

Use the contract or approved commercial record. Do not substitute a CRM close date when it conflicts. If notice or lead time is unknown, the timeline is incomplete. Do not insert a standard countdown.

## Signal contract

For every signal define:

- formula or observable condition
- source and as-of date
- account or approved peer baseline
- observation window and minimum coverage
- `positive`, `caution`, `risk`, and `unknown`
- threshold owner and last approval
- play triggered and evidence needed to clear it

Thresholds come from contract terms, validated history, product expectations for the use case, support or commercial policy, or an accountable owner. Never invent a numeric cutoff to finish the framework.

System health scores are inputs. Keep the component signals and their freshness.

## Signal families

Adoption and usage: trend versus this account's baseline, completion of the purchased workflow, concentration risk, licensed coverage. Low usage is not automatically risk. Read it against expected use, rollout stage, seasonality, and data coverage.

Value: customer-agreed outcome, baseline, current value, review date, and whether the decision owner understands it.

Stakeholders and delivery: sponsor continuity, required roles, implementation or support blockers with severity, age, and SLA status.

Commercial readiness: notice, budget, procurement, legal, security, pricing, approval, amendment, signature. Owner, required date, dependency, verified next step.

## Expansion readiness

All of these, not one of them:

- value realized in current scope
- engaged decision owner and required coverage
- adjacent buyer task with measurable upside
- implementation capacity and timing
- commercial path and account-rights fit

## Play design

For each play: trigger, owner, sequence, commercial boundary, exit evidence, inspection checkpoint.

- Standard renewal when required signals are positive and confidence is sufficient
- Save when a defined risk trigger fires
- Verify data first when a material signal is unknown
- Expansion discovery only when the readiness set is present
- Expansion close only when qualification and commercial path are verified

Do not change a live health, renewal, or expansion field automatically.

## Thin evidence

If usage exports or notice terms are missing, write the play structure and mark the signal `unknown`. Do not invent usage metrics, health thresholds, or pricing.

## Optional shape

```text
Segment / owner model
Milestones (source, latest safe start, gap)
Signals (positive / caution / risk / unknown)
Plays: save | healthy renewal | expansion
Commercial guardrails
Manager inspect
```
