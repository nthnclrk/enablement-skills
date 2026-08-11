# Source System Guide

Use this when deal evidence is coming from CRM, call intelligence, or email summaries instead of a hand-prepared deal review packet.

## CRM Inputs

- Minimum fields: account, opportunity, stage, amount, close date, next step, last activity date, key contacts, open tasks, qualification notes.
- Useful extras: stage history, push history, MEDDPICC/SPICED fields, competitor field, procurement notes.
- Capture the record's as-of time and field history where available; the current value alone can hide slippage or repeated changes.

## Call / Conversation Inputs

- Pull only the calls that materially affect the current deal path:
  discovery, technical validation, commercial review, procurement, and executive alignment calls.
- Extract:
  stakeholder stance, urgency, blockers, decision process, proof requests, and objection patterns.

## Recommended Handling

- Use CRM as the base record for deal state.
- Use calls, notes, and MAP/proposal artifacts to confirm or challenge the claimed stage.
- If evidence is contradictory, show that conflict explicitly instead of choosing the most optimistic source.
- Distinguish buyer-authored or buyer-confirmed evidence from seller-entered fields and automated summaries.
- Treat a future meeting, open task, or populated field as activity until the evidence shows buyer progress.
- Preserve the source date for each material claim and flag stale evidence against the current decision window.

## Safe Writeback Boundary

- Do not automatically update deal stage, probability, or qualification fields.
- Output coaching actions and missing proof requirements first.
- Do not send customer-facing messages, change a shared plan, or attribute a commitment to the buyer without explicit approval and source evidence.
