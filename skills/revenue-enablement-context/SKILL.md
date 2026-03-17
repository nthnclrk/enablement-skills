---
name: revenue-enablement-context
description: Create or update a canonical revenue enablement context used by other enablement skills. Use when the user needs to document ICP, personas, sales stages, qualification rules, pricing and packaging, core objections, competitors, and current initiatives, or when downstream skill outputs are weak because shared context is missing. Route multi-skill sequencing requests to enablement-router.
---

# Revenue Enablement Context

Build one reliable context baseline that other enablement skills can reuse.

## Confirm Inputs First

Confirm these items before drafting:

- Company and product summary
- ICP segments and buyer personas
- Sales stages and qualification definitions
- Pricing and packaging basics
- Top objections and common competitive alternatives
- Current quarter initiatives and key risks
- Existing context artifact location and last-updated date (if it exists)

If key items are missing, ask only for the highest-impact gaps. If the user wants speed, proceed with clearly labeled assumptions.

## Read The Right Reference

Read [references/context-schema.md](references/context-schema.md) before drafting or updating the context artifact.
Read [references/context-schema.yaml](references/context-schema.yaml) when the user wants a machine-readable context pack for downstream reuse.

## Default Workflow

1. Collect provided source material and normalize terms.
2. Fill the context schema section by section.
3. Mark unknowns as assumptions, not facts.
4. Flag contradictions across sources and propose one canonical version.
5. Add a short dependency block listing which downstream skills depend on each section.
6. Create a compact context handshake block:
   source location, version date, owner, and confidence rating.
7. Add a missing-information checklist for future refinement.
8. Return the updated context plus the top unresolved decisions.

## Common Failure Modes

- Generic context that cannot drive role-specific outputs.
- Hidden contradictions between sales-stage definitions and qualification guidance.
- Missing freshness markers that cause downstream skills to reuse stale assumptions.
- Overwriting uncertain data as facts instead of preserving assumptions.

## Output Contract

Default output includes:

- A canonical revenue enablement context document with all schema sections populated
- A compact context handshake block (owner, freshness, confidence, and source)
- A machine-readable context object when requested
- A labeled assumptions list
- A missing-information checklist prioritized by downstream impact

## Quality Bar

- Context is specific enough to drive role-based outputs, not generic market language.
- Definitions are unambiguous for stages, qualification, and personas.
- Assumptions are explicit and easy to replace with confirmed data.
- Freshness and confidence are visible so downstream users can judge reliability.
- Another skill can consume this context without asking foundational questions again.
