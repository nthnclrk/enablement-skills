# Focused regressions

These requests were executed by a fresh agent using the named skill and relevant direct references. The requests came from the evaluation definitions and are regression checks, not held-out comparisons. The generated answers below are unchanged; headings identify the retained artifacts.

## Informational executive briefing

Request: Write a short internal pre-read for our CRO on the onboarding rollout. Three of five regions have started. South starts next Monday. West has no confirmed facilitator yet. The operations lead owns that gap and will update us on Friday. The CRO only needs to understand status; no decision, negotiation or concession is sought. Use these facts only.

### Generated answer

**Onboarding rollout — status for the CRO**

Three of five regions have started. South starts next Monday. West has no confirmed facilitator yet.

The operations lead owns the West facilitator gap and will provide an update on Friday.

For information only. No CRO decision or action is requested.

Source: supplied rollout facts.

### Check

Pass: preserves the supplied facts, owner and timing; returns a short internal pre-read with no invented negotiation, fallback or approval request.

## One operational metric

Request: Help me define our monthly practice participation metric, not the whole KPI tree. The roster has employee_id, eligible_from and eligible_to; attendance has employee_id, session_id and session_date. Count eligible AEs who attended at least one practice in the calendar month, divided by AEs eligible for at least one day that month. Attendance outside a person's eligible dates doesn't count. We haven't set a target or baseline, and the reporting owner is undecided.

### Generated answer

**Purpose:** Show what proportion of eligible AEs participated in practice during the calendar month. This is an adoption metric, not a measure of skill improvement or commercial impact.

**Formula**

Monthly practice participation (%) = distinct eligible AEs with at least one qualifying attendance ÷ distinct AEs eligible for at least one day in the month × 100.

**Calculation contract**

- Reporting grain: one percentage per calendar month; retain numerator and denominator counts.
- Denominator: distinct `employee_id` values whose eligibility period overlaps the month.
- Numerator: distinct denominator members with at least one attendance where `session_date` falls both within the month and within that person’s eligibility period.
- Count each AE once, regardless of sessions attended or duplicate attendance rows.
- If the denominator is zero, return `N/A`, not 0%.

Use inclusive eligibility dates. For month start `M` and next month start `N`:

```text
Denominator eligibility:
eligible_from < N
AND eligible_to >= M

Qualifying attendance:
M <= session_date < N
AND eligible_from <= session_date <= eligible_to
```

**Sources and joins**

- Roster: `employee_id`, `eligible_from`, `eligible_to`.
- Attendance: `employee_id`, `session_id`, `session_date`.
- Join on `employee_id`, then match attendance to a valid eligibility period. Reduce qualifying attendance to one row per employee before counting.
- If an employee has several eligibility periods, test each period separately; do not bridge gaps between them.
- The roster must represent AE eligibility. If it includes other roles, an AE filter is required.
- Confirm how blank eligibility dates are represented. Do not silently treat a blank `eligible_to` as ongoing eligibility.

**QA and use**

Check missing IDs or dates, invalid eligibility ranges, duplicate attendance, unmatched attendance IDs and numerator ≤ denominator. Exclude attendance outside eligibility dates. Block the affected result if unresolved data errors could change either count; the QA owner remains unassigned.

Review monthly to identify participation gaps. Baseline and target are unset; reporting ownership and decision thresholds remain undecided. Those operating gaps do not prevent calculating a valid current-month percentage. Without a baseline, do not claim improvement.

### Check

Pass: retains the supplied population and time window, counts distinct eligible people, excludes out-of-window attendance, names operating gaps and avoids a full commercial KPI tree. The calculation still needs the named source data; this check did not execute a query.

## Source-read log

- `skills/executive-briefing-builder/SKILL.md`
- `skills/executive-briefing-builder/references/executive-brief-template.md`
- `skills/enablement-metrics-and-instrumentation/SKILL.md`
- `skills/enablement-metrics-and-instrumentation/references/kpi-tree-framework.md`

The agent reported reading no evaluation definitions or prior outputs and changing no files or external systems. The main reviewer performed the checks above; these two outputs were not part of the blind comparison.
