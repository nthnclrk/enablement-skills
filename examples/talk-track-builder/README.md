# Talk Track Builder Exemplar

## Use Case

Create a discovery talk track for a VP Operations conversation without inventing proof or turning the call into a script recital.

## Fixture

- [message-inputs.md](message-inputs.md): persona, call objective, approved proof, likely objections, and claim boundaries

All names and data are fictional.

## Natural Prompt

> Review message-inputs.md and build a natural 12-minute discovery talk track for the first substantive call. Give the AE an opening frame, a short question path, transitions, and branch responses for the two likely objections. End with a concrete next-step ask. Keep proof inside the approved boundaries and make any unsupported area explicit.

## Expected Output Excerpt

An effective answer should sound usable live, for example:

> Before we look at MosaicOps, could we start with the handoff problem that brought you here? Where do ownership gaps show up today, and what happens downstream when one is missed?

For the existing-process objection, the response should diagnose before countering:

> That makes sense. Is the issue that the process is missing, or that the current process becomes hard to inspect once work crosses teams?

The proof cue should retain its limitation:

> In a three-customer pilot, unresolved handoffs fell 28% within 60 days. That is directional evidence, not a benchmark for your environment.

## Review Checklist

- One call objective and one explicit next-step ask
- Questions move from current process to impact, urgency, stakeholders, and decision criteria
- Branches contain a trigger, diagnostic line, response path, proof cue, and recovery close
- The standard-integration deployment result is not generalized to custom ERP work
- No invented pricing, customer logos, implementation guarantees, or universal ROI claim
- The language is conversational enough to adapt rather than read verbatim

## Deliberate Uncertainty

The fixture does not confirm custom ERP feasibility or pricing. A strong response flags those as follow-up items for the solutions engineer or commercial owner instead of filling the gaps.
