# Skill template

`new-skill.sh` copies `SKILL.md.tmpl` into `skills/<name>/`. The template is a scaffold. See [call-review-coach](../../skills/call-review-coach/SKILL.md) for a completed specialist example, including its reference-loading rules and quality checks.

If you leave the `[REQUIRED]` markers in, validation fails on purpose. Replace them with judgment for this job.

## What stays consistent

Every skill, any shape:

- Frontmatter is only `name` and `description`
- Description carries the whole trigger burden
- The body does the craft jobs in `AGENTS.md`: one job, taste, intake, procedure with done-checks, quality a human can score
- Each specialist retains the evidence and action boundaries essential to its job; house style provides shared authoring conventions

## What may change

Heading names. Section order. Length.

A talk track needs a read-aloud procedure. A router is a map. House style is a short rule list. Do not force those into one outline.

The headings in the tmpl (inputs, procedure, what to return, done when) are one useful specialist shape. Drop or rename them when they get in the way.

## After you scaffold

1. Write the leading concept and the good/bad excerpt first. If you cannot, you do not have a skill yet.
2. Delete any sentence that would be true of every skill in this pack.
3. Link a reference only when this run needs it, and say when to open it.
4. Curate the generated eval. Structural validation is not behavior evidence.
