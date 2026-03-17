Use this when deal evidence is coming from CRM, call intelligence, or email summaries instead of a hand-prepared deal review packet.

# Source System Guide

## CRM Inputs

- Minimum fields: account, opportunity, stage, amount, close date, next step, last activity date, key contacts, open tasks, qualification notes.
- Useful extras: stage history, push history, MEDDPICC/SPICED fields, competitor field, procurement notes.

## Call / Conversation Inputs

- Pull only the calls that materially affect the current deal path:
  discovery, technical validation, commercial review, procurement, and executive alignment calls.
- Extract:
  stakeholder stance, urgency, blockers, decision process, proof requests, and objection patterns.

## Recommended Handling

- Use CRM as the base record for deal state.
- Use calls, notes, and MAP/proposal artifacts to confirm or challenge the claimed stage.
- If evidence is contradictory, show that conflict explicitly instead of choosing the most optimistic source.

## Safe Writeback Boundary

- Do not automatically update deal stage, probability, or qualification fields.
- Output coaching actions and missing proof requirements first.
