# Content gap judgment

Use this when you are classifying a gap or choosing create, update, consolidate, or retire. The skill body has the procedure.

## Exists vs used

Ask two questions before you score:

1. Does a fit-for-purpose asset exist for this role, stage, and job?
2. Can the intended audience find and use it?

| Exists | Used | Default action |
| --- | --- | --- |
| No | — | Create |
| Yes, stale or wrong | Yes or no | Update |
| Yes, several overlap | Confused | Consolidate |
| Yes, fit | No, cannot find it | Improve discoverability |
| Yes, findable | No, not adopted | Reinforce distribution |
| Yes, invalid or superseded | — | Retire, with owner approval |

An enterprise-only asset does not cover a mid-market job. A draft is not a usage failure.

**Fails.** "Zero views, so retire the security FAQ."

**Passes.** "FAQ exists and is current. 19 failed searches, 6 views. Improve discoverability. The mid-market ROI template does not exist. Create."

## Action types

- `Create`: no fit-for-purpose asset exists and evidence confirms the job.
- `Update`: the authoritative asset exists but is stale, inaccurate, incomplete, or in the wrong format.
- `Consolidate`: overlapping assets create conflict or search friction; keep one owner and one canonical location.
- `Improve discoverability`: fit for purpose, but taxonomy, search, navigation, or permissions block access.
- `Reinforce distribution`: findable and fit, but the audience has not adopted it.
- `Retire`: invalid, superseded, redundant, or no longer relevant, and the authorized owner approves.

Low usage alone never proves retirement.

## Scoring

Score value on three anchored 1-5 dimensions. Keep evidence confidence and effort separate. Do not invent a default composite. A weighting silently encodes a tradeoff the evidence does not establish.

### Business impact

1 convenience · 2 local friction · 3 repeated friction on one important behavior · 4 material risk to conversion, cycle, readiness, or retention · 5 blocks a critical motion, deadline, or compliance obligation

### Frequency and reach

1 isolated · 2 occasional in one team · 3 recurring in one workflow · 4 frequent across teams or stages · 5 pervasive in the in-scope motion

### Strategic alignment and urgency

1 no active priority · 2 indirect support · 3 active team or quarterly priority · 4 committed initiative or launch · 5 time-critical launch, regulatory, or executive commitment

Never divide value by effort. That makes easy, low-value work outrank important work. If the organization already has weights, record owner, version, and weights before using them. If the user wants a new model, present it as a proposal and show how order changes under alternatives.

## Decision tiers

Confidence is a decision input, not a value multiplier.

- `Mandatory`: confirmed regulatory, contractual, safety, or committed launch obligation
- `Commit now`: gap and root cause are supported, consequence is material, work serves a current priority
- `Validate first`: consequence may be material, but cause, reach, or need is uncertain
- `Plan`: supported and worthwhile, not displacing higher-priority work
- `Monitor`: isolated, low-consequence, or not yet distinguishable from findability or process friction

High severity can justify containment when frequency is low. High frequency does not prove high impact.

Estimate effort as `S/M/L` or person-days. Use effort only to sequence inside a tier.

## Thin evidence

If usage has no eligible-audience denominator, treat it as a weak signal. If failed search comes from one repository, do not generalize. Recommend the smallest validation that would change create vs discoverability vs retire.

Do not invent usage or ROI to move an item up the backlog.

## Optional backlog row

```text
Gap / role-stage-job / exists vs used / action
Impact · frequency · alignment · confidence · tier
Owner / window / validation
```
