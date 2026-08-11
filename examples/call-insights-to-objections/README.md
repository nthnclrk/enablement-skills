# Call Insights To Objections Exemplar

## Use Case

Find recurring objection themes across recent calls without treating one loud call, an out-of-scope segment, or a summary-only record as equal evidence.

## Fixtures

- [calls.json](calls.json): eight sanitized call records, including one out-of-scope call and one summary-only record
- [scope.md](scope.md): analysis window, inclusion rules, evidence weighting, and decision context

All companies, people, and excerpts are fictional.

## Natural Prompt

> Analyze calls.json using the scope in scope.md. Cluster the recurring objections, quantify how broadly each theme appears, attach short representative evidence, and recommend the top enablement actions for the next two weeks. Keep observation, interpretation, and recommendation separate, and make weak coverage visible.

## Expected Output Excerpt

| Theme | In-scope frequency | Breadth | Confidence | Interpretation |
| --- | ---: | --- | --- | --- |
| Implementation capacity and change cost | 4 of 7 calls | Four accounts, three reps, Operations and IT personas | High | Buyers are not disputing the workflow problem; they are questioning whether they can absorb another rollout. |
| Proof of economic value | 2 of 7 calls | Two accounts, CFO and Operations personas | Medium | The message reaches plausible benefit but does not yet establish an account-specific business case. |

The security concern appears once. It should remain in the evidence pack but should not be presented as a recurring top theme.

## Review Checklist

- Exactly seven records are included; the enterprise procurement call is excluded
- Transcript evidence is weighted above the summary-only record
- Frequency and independent-account breadth are both shown
- Short excerpts remain traceable to call ID, date, persona, and stage
- Missing outcome data does not become an invented loss or progression signal
- Recommendations name a concrete asset, drill, or manager prompt rather than “improve messaging”
- The response stops at analysis and recommendations; it does not publish governed objection language

## Deliberate Uncertainty

Call C-207 is based on a manager summary and has no known outcome. It can support a theme directionally but should not carry the same weight as a transcript excerpt.
