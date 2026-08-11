# Revenue Enablement Context Example

## Use Case

Create one user-owned context artifact that improves downstream skill quality without forcing repeated intake.

## Inputs

- `company-notes.md`
- `gtm-notes.md`
- `product-notes.md`

High-value context includes:
- ICP and segments
- personas and stakeholders
- sales stages and qualification rules
- packaging and pricing basics
- messaging, proof, objections, and competitors
- tools and canonical source locations
- current initiatives and priorities

## Example Prompt

```text
Use $revenue-enablement-context with company-notes.md, gtm-notes.md, and product-notes.md, then build a battlecard for our main enterprise competitor.

Check for .enablement/context.md first. If it does not exist, create a source-assisted draft from these files. Separate confirmed, inferred, conflicted, and missing information; ask no more than three decision-changing questions; and preview the context before writing it. After I approve the context, resume the battlecard request.
```

## Expected Output Shape

Before writing:

- proposed `.enablement/context.md` path and content
- confirmed, inferred, conflicted, and missing section summary
- section-level sources, last-verified dates, reuse approval, and sensitivity
- no more than three material questions

After approval:

- saved `.enablement/context.md`
- compact context handshake and unresolved review queue
- resumed battlecard using the approved context

For a recurring launch, account, or program, the skill may also propose `.enablement/briefs/<slug>.md`. One-off details should stay in the task instead of expanding the durable context.

## Guided Intake Alternative

If source material is unavailable:

```text
Use $revenue-enablement-context to set up our reusable context from scratch. Walk me through the highest-impact gaps in rounds of no more than three questions, then preview .enablement/context.md before writing it.
```

A narrow source-based request can proceed without full setup. The skill should label its limits and offer context capture afterward rather than blocking the task.

## Working Handshake Alternative

For an immediate task that does not justify a reusable file:

```text
Use $revenue-enablement-context to assemble only the context needed to route this request. Keep it in the response; do not create a file. Return confirmed facts, provisional or conflicting facts, blocking unknowns, sources, requested output, and the stop condition.
```

The result should be usable by the next skill without requiring a storage path, owner, or write decision, and the next skill should not re-ask confirmed inputs.
