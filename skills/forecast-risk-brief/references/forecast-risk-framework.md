# Forecast risk judgment

Use this for portfolio-level forecast reliability. It is a decision aid, not a close-probability model. One deal belongs in `deal-inspection-coach`.

## Four things that are not the same

- `Forecast category`: what the seller or manager recorded
- `Deal risk`: evidence the opportunity may miss the stated window
- `Evidence confidence`: how trustworthy the inputs are
- `Portfolio exposure`: the value affected by risk or uncertainty

A high-risk deal can have high confidence. A low-risk label with low confidence is not reassuring.

**Fails.** Commit looks healthy. Most fields are populated and the AE is confident.

**Passes.** Commit is indeterminate. Amount and category are present. Buyer next step, approval path, and push history are missing, so the date cannot be tiered.

## Checks and tiers

Use the organization's approved model when one exists. Record owner, version, and calibration limits. Do not invent equal weights or a universal aging cutoff.

| Check | Clear | Watch | Material concern | Unknown |
| --- | --- | --- | --- | --- |
| Time feasibility | Stage, lead times, and buyer dates support the window | Slack is narrow but the path is feasible | A mandatory dependency conflicts with the date | Snapshot, close date, or dependency is missing |
| Buyer-confirmed progression | Recent buyer evidence shows material progress | Progress is weak or seller-reported | Commitments slip or no buyer progress supports the timing | Progression definition or evidence is missing |
| Next step | Dated, buyer-owned, decision-relevant | Seller-owned or vague | Missing, overdue, or unable to advance the decision | Cannot be verified |
| Stakeholders | Decision path and approvals are verified | One material role is uncertain with a test | Economic approval is absent for the stated timing | Too incomplete to judge |
| Commercial and technical path | Required work is complete or feasibly sequenced | A bounded dependency has an owner | A mandatory dependency cannot resolve in the window | Dependencies unknown |
| Date stability | Movement is explained by new buyer evidence | Date moved without enough buyer evidence | Repeated movement masks an unchanged path | Push history unavailable |

Stage-aging ratios need a named historical cohort. Without one, report elapsed and remaining time as facts and assess the dependency path.

Tier from the checks, not from activity volume:

- `High`: a hard stop makes the date infeasible, or a material threat has no credible path
- `Moderate`: a material risk exists, but the close remains feasible if a named intervention works
- `Low`: no material threat, critical evidence current and consistent, path feasible. Low risk requires high confidence
- `Indeterminate`: a critical unknown or conflict blocks a defensible tier

Date pushes, stage age, or one weak field never determine a tier alone.

## Evidence confidence

Rate confidence separately from risk. Judge critical fields first: amount, close date, category, material approval, buyer next step, snapshot date.

- `High`: decision-critical fields current; no unresolved material conflict; baselines usable
- `Medium`: usable, but one material input is stale, conflicting, or directional
- `Low`: a decision-critical field is missing, conflicts remain, or the tier itself is unstable

Do not upgrade confidence because the deal looks healthy.

## What to do with the pair

| Deal risk | Confidence | Default |
| --- | --- | --- |
| High | High or medium | Intervene now on the named blocker |
| High | Low | Verify the missing facts, then decide if rescue is feasible |
| Moderate | High | Tighten the weakest signal; monitor at the next decision point |
| Moderate | Low | Repair evidence before treating the deal as stable |
| Low | High | Monitor |
| Indeterminate | Any | Hold out of tier totals; verify the named inputs |

Escalate concentration only against a tolerance the user supplied. Otherwise show the exposure and ask.

Preserve supplied owner dates. A date you created is `proposed`.

## Thin evidence

If the export lacks next steps, push history, or a snapshot date, say what you can count and keep the rest indeterminate. Do not invent amounts, categories, or cycle-time norms.

## Optional shape

```text
Window / scope / as-of / currency
Totals by category
Tier counts and value (indeterminate held out)
Priority deals: decisive check, tier, confidence
Interventions: owner, proposed or confirmed date, verify
Decisions now vs monitor
```
