# Call Insights To Objections Example

## Use Case

Find the top objection themes from recent discovery and demo calls.

## Inputs

- `calls.json`
- `scope.md`

Recommended fields in `calls.json`:
- call ID
- date
- segment
- persona
- deal stage
- transcript or transcript excerpts

## Example Prompt

```text
Use $call-insights-to-objections on calls.json.
Limit analysis to mid-market discovery and demo calls from the last 30 days using scope.md.
Return clustered objection themes, representative evidence, and the top enablement actions.
```

## Expected Output Shape

- Objection theme table
- Evidence pack
- Top enablement actions
- Assumptions and caveats
