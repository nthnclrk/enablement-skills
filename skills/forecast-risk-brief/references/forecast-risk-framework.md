# Forecast Risk Framework

Use this framework for portfolio-level forecast reliability analysis. It is a decision aid, not a close-probability model.

## Keep Four Concepts Separate

- `Forecast category`: the seller or manager classification recorded in the operating system.
- `Deal risk`: evidence that an opportunity may not close in the stated window.
- `Evidence confidence`: how trustworthy and complete the inputs are.
- `Portfolio exposure`: the amount and concentration of forecast value affected by risk.

A high-risk deal can have high evidence confidence. A low-risk label with low evidence confidence is not reassuring; it means the deal needs verification.

## Risk Checks And Tier Decision

Use the organization's approved risk model when one exists. Record its owner, version, inputs, and known calibration limits. Do not create an equally weighted point score or universal ratio cutoff when the organization has not supplied one.

Review each deal against the same decision-relevant checks:

| Check | Clear | Watch | Material concern | Unknown |
| --- | --- | --- | --- | --- |
| Time feasibility | Current stage, mandatory lead times, and buyer dates support the close window | Slack is narrow but the required path remains feasible | A mandatory dependency, approval, or realistic stage-to-close path conflicts with the date | Snapshot date, close date, dependencies, or relevant baseline is missing or unusable |
| Buyer-confirmed progression | Recent buyer evidence shows material progress against the confirmed motion cadence | Progress is weak, seller-reported, or awaiting buyer confirmation | Buyer commitments repeatedly slip or no credible material progression supports the stated timing | Progression definition, cadence, or evidence is missing or conflicting |
| Next step | Dated, buyer-owned, decision-relevant, and before the required milestone | Seller-owned, vague, or not tied to a buyer decision | Missing, overdue, outside the forecast window, or unable to advance the decision | Sources conflict or the next step cannot be verified |
| Decision and stakeholder coverage | Decision path, critical roles, and approval sequence are verified | One material role or approval remains uncertain but a verification path exists | Economic approval, decision authority, or a required stakeholder path is absent for the stated timing | Stakeholder or decision evidence is too incomplete to judge |
| Commercial and technical path | Required validation, security, legal, procurement, and commercials are complete or feasibly sequenced | A bounded dependency is open with an owner and credible resolution path | A mandatory dependency lacks time, owner, evidence, or authority to resolve inside the window | Required dependencies or their status are not known |
| Date stability | Movement is explained by new buyer evidence and the revised plan remains feasible | The date moved without enough buyer evidence to establish stability | Repeated or late movement masks an unchanged decision path or infeasible dependency | Push history or prior close dates are unavailable |

Stage-aging and remaining-time ratios are useful only against relevant, sufficiently representative historical cohorts. Show the cohort, period, sample size, and definition when using them. Without that basis, report elapsed time and remaining time as facts and assess the actual dependency path instead of applying a generic ratio threshold.

Assign the tier from the reasoned combination of checks:

- `High`: a hard stop makes the stated date infeasible, or current evidence shows a material threat that cannot be resolved through a credible path before the required decision point.
- `Moderate`: a credible material risk could disrupt the date, but the close remains feasible if a specific verification or intervention succeeds.
- `Low`: no material threat is evident, critical evidence is current and consistent, and the close path is feasible. Low risk requires high evidence confidence; missing critical evidence is not reassuring.
- `Indeterminate`: a critical unknown or source conflict prevents a defensible tier. Report the exposure separately and name the smallest verification that would resolve it.

For every tier, state the decisive evidence and why it meets the rule. Date pushes, stage age, activity volume, or one weak field never determine a tier on their own.

## Evidence Confidence

Rate confidence separately from risk. Judge critical fields before overall completeness; a large number of populated low-value fields cannot compensate for a missing amount, close date, category, material approval, buyer next step, or snapshot date.

- `High`: all decision-critical fields are present and current for the confirmed operating cadence; no unresolved material source conflict exists; relevant historical baselines support the comparisons.
- `Medium`: the assessment is usable but one material input is stale, conflicting, or dependent on a clearly labeled directional baseline. No missing field makes the tier itself ambiguous.
- `Low`: a decision-critical field or snapshot date is missing, material conflicts remain unresolved, the comparison baseline is unusable, or a critical unknown prevents a stable tier.

State which condition determined the rating. Do not upgrade confidence because the deal appears healthy.

## Risk-Confidence Decision Matrix

| Deal Risk | Evidence Confidence | Default Decision |
| --- | --- | --- |
| High | High or Medium | Intervene now on the named blocker; set owner, due date, and checkpoint. |
| High | Low | Verify the missing facts immediately, then decide whether rescue is feasible. |
| Moderate | High | Tighten the weakest progression signal and monitor at the next relevant decision point. |
| Moderate | Low | Repair evidence before treating the deal as stable or unstable. |
| Low | High | Monitor without adding process. |
| Indeterminate | Any | Keep exposure outside the low/moderate/high totals; verify the named critical inputs before making a tier-based intervention. |

At portfolio level, escalate when high-risk commit value, late-period concentration, or single-deal dependency exceeds the leadership tolerance supplied by the user. If no tolerance is supplied, show the exposure and ask leadership to set one rather than inventing it.

For intervention timing, preserve supplied owner commitments and dates exactly. A date created to make the workplan usable is `proposed`, not agreed; show the confirmation owner and the operating event it should precede.

## Intervention Horizon

- `Immediate`: resolve hard stops and verify low-confidence commits before the next forecast decision.
- `Near-term`: repair moderate-risk progression gaps before the next named buyer or operating milestone.
- `Structural`: recalibrate stages, baselines, and inspection rules when the same risk signal repeats across the portfolio.
