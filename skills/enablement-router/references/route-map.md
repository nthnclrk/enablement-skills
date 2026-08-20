# Enablement route map

Use this to pick the primary job, reject the nearest wrong job, and add only required handoffs.

**Fails.** A four-skill tour for "write a talk track for this discovery call."

**Passes.** `talk-track-builder`. Architecture is already implied. Do not add `discovery-and-demo-structure` unless they asked for the meeting design.

## Routing Rules

- Treat the environment's visible skill catalog as the source of truth for availability.
- Mark a selected skill `Available now` only when it is present; otherwise mark it `Additional skill needed`.
- Choose one skill by default. Add a step only when its output is required by the next step.
- Insert `revenue-enablement-context` only when missing shared assumptions would materially weaken the requested work.
- Ask one question only when the answer changes the primary job, order, or audience mode.
- Stop the route when the requested outcome is achieved; do not add adoption or measurement work automatically.
- When the performance cause is unclear, route to `enablement-program-design` in discovery mode. Do not assume enablement is the answer; stop if evidence points to product, process, incentives, capacity, territory, or another non-enablement cause.

## Foundation, Planning, And Measurement

| Skill | Primary job | Nearest boundary |
| --- | --- | --- |
| `revenue-enablement-context` | Create or refresh the shared GTM baseline | Not a prerequisite for every narrow task; route direct artifacts to their specialist |
| `enablement-router` | Select the shortest path across multiple enablement jobs | Not the executor for a clear single-artifact request |
| `enablement-program-design` | Diagnose an unclear performance problem or charter a cross-functional, multi-intervention initiative | Use the launch, coaching, certification, or onboarding specialist when that standalone job is already defined; use `quarterly-enablement-planner` for quarter-wide sequencing |
| `quarterly-enablement-planner` | Prioritize initiatives against quarterly capacity | Use `enablement-program-design` for one initiative's detailed charter |
| `enablement-metrics-and-instrumentation` | Define KPI trees, signals, and data capture | Use `enablement-impact-story` to communicate measured results |
| `enablement-impact-story` | Turn outcome evidence into a leadership impact narrative | Use `enablement-metrics-and-instrumentation` to design the measurement system |

## Messaging, Content, And Insight

| Skill | Primary job | Nearest boundary |
| --- | --- | --- |
| `value-prop-and-positioning` | Define positioning, differentiation, and persona value | Use `battlecard-builder` for one competitor and `talk-track-builder` for spoken lines |
| `talk-track-builder` | Write persona- and stage-specific live conversation language | Use `value-prop-and-positioning` for message strategy and `objection-library-builder` for a reusable objection system |
| `objection-library-builder` | Build a reusable objection taxonomy and response playbook | Use `call-review-coach` for one call and `battlecard-builder` for competitor-specific counters |
| `battlecard-builder` | Produce competitor-specific field guidance | Use `value-prop-and-positioning` for broad category positioning |
| `discovery-and-demo-structure` | Design discovery questions and demo sequence | Use `discovery-rubric-auditor` to score calls and `call-review-coach` for one-call coaching |
| `one-pager-and-slide-outline` | Package source material into a concise brief or deck structure | Use `value-prop-and-positioning` or `product-launch-enablement` when the underlying strategy is unresolved |
| `case-study-extractor` | Turn customer evidence into a credible case narrative | Use `field-feedback-synthesizer` for broad themes and `one-pager-and-slide-outline` for final packaging |
| `content-gap-analysis` | Audit coverage and prioritize missing or stale assets | Use `content-governance-system` for lifecycle rules and a specialist such as `one-pager-and-slide-outline` to create an asset |
| `content-governance-system` | Define taxonomy, ownership, publishing, and retirement rules | Use `content-gap-analysis` to decide what content is missing |
| `field-feedback-synthesizer` | Convert multi-source field feedback into themes and actions | Use `call-insights-to-objections` for transcript objection mining and `call-review-coach` for one call |
| `call-insights-to-objections` | Mine recurring objection patterns across calls | Use `call-review-coach` for one-call coaching and `objection-library-builder` for the final playbook |
| `win-loss-synthesis` | Explain cross-deal win/loss patterns and implications | Use `battlecard-builder` for one competitive asset and `deal-inspection-coach` for one live deal |

## Coaching, Practice, And Readiness

| Skill | Primary job | Nearest boundary |
| --- | --- | --- |
| `call-review-coach` | Coach one call from transcript, recording, or notes | Use `discovery-rubric-auditor` for cross-call scoring and `call-insights-to-objections` for pattern mining |
| `discovery-rubric-auditor` | Score discovery quality across calls or a team | Use `discovery-and-demo-structure` to design the motion and `call-review-coach` for one call |
| `roleplay-scenario-builder` | Create progressive practice drills and scoring prompts | Use `call-review-coach` for real-call evidence and `certification-program-builder` for formal readiness gates |
| `manager-coaching-cadence` | Design a recurring manager coaching rhythm | Use `call-review-coach` or `deal-inspection-coach` for the underlying one-off diagnosis |
| `onboarding-program-builder` | Build internal new-hire ramp and competency plans | Use `onboarding-to-value-playbook` for customers and `certification-program-builder` for formal scoring |
| `certification-program-builder` | Define readiness standards, scoring, and assessor calibration | Use `onboarding-program-builder` for the broader ramp journey |

## Deal, Account, And Customer Lifecycle

| Skill | Primary job | Nearest boundary |
| --- | --- | --- |
| `account-brief-builder` | Prepare an internal account decision brief | Use `executive-briefing-builder` for one executive meeting and `qbr-ebr-builder` for a customer review |
| `executive-briefing-builder` | Prepare one high-stakes executive meeting or pre-read | Use `account-brief-builder` for internal account strategy and `qbr-ebr-builder` for a recurring business review |
| `deal-inspection-coach` | Diagnose one live opportunity and its next actions | Use `forecast-risk-brief` for the portfolio and `call-review-coach` for call-only evidence |
| `forecast-risk-brief` | Assess period-level commit, slippage, and interventions | Use `deal-inspection-coach` for one opportunity |
| `pipeline-stage-definition-and-exit-criteria` | Define stages, buyer evidence, and progression rules | Use `deal-inspection-coach` for a specific deal and `forecast-risk-brief` for a period summary |
| `mutual-action-plan-builder` | Build shared buyer-seller milestones, owners, and dates | Use `proposal-rfp-orchestrator` for requirements, contributors, and submission governance |
| `proposal-rfp-orchestrator` | Coordinate proposal or RFP requirements and review gates | Use `mutual-action-plan-builder` for shared milestones and `executive-briefing-builder` for meeting prep |
| `qbr-ebr-builder` | Build a customer-facing business review | Use `account-brief-builder` for internal review and `executive-briefing-builder` for one executive meeting |
| `onboarding-to-value-playbook` | Map customer implementation and first-value milestones | Use `onboarding-program-builder` for employee ramp |
| `renewal-and-expansion-enablement` | Build renewal, save, and expansion plays | Use `qbr-ebr-builder` for the customer review narrative and `onboarding-to-value-playbook` for first value |

## Launch And Partner Enablement

| Skill | Primary job | Nearest boundary |
| --- | --- | --- |
| `product-launch-enablement` | Build full cross-functional launch readiness | Use `release-notes-to-seller-updates` for a concise field update |
| `release-notes-to-seller-updates` | Translate release notes into seller guidance | Use `product-launch-enablement` when readiness, training, and adoption are also required |
| `partner-enablement-package` | Adapt a direct motion into partner-safe onboarding and assets | Use `product-launch-enablement` for internal launch readiness and `onboarding-program-builder` for employee ramp |

## Useful Sequences

Skip any step whose output already exists. A slash means choose the matching branch, not run every option.

- Foundational work: `revenue-enablement-context` -> requested specialist.
- Launch readiness: `product-launch-enablement` -> `talk-track-builder` / `objection-library-builder` -> `manager-coaching-cadence` when behavior adoption is explicitly required.
- Release communication only: `release-notes-to-seller-updates`.
- Evidence to messaging: `field-feedback-synthesizer` / `call-insights-to-objections` / `win-loss-synthesis` -> `value-prop-and-positioning` -> `talk-track-builder` / `objection-library-builder`.
- Coaching improvement: `call-review-coach` / `discovery-rubric-auditor` -> `roleplay-scenario-builder` -> `manager-coaching-cadence`.
- Forecast intervention: `forecast-risk-brief` -> `deal-inspection-coach` -> `manager-coaching-cadence`.
- Program build: `enablement-program-design` -> `onboarding-program-builder` / `certification-program-builder` -> `enablement-metrics-and-instrumentation`.
- Customer meeting: `account-brief-builder` -> `executive-briefing-builder` / `qbr-ebr-builder`.
- Complex deal execution: `deal-inspection-coach` -> `mutual-action-plan-builder` / `proposal-rfp-orchestrator`.

## Handoff And Ownership Contract

For each handoff, name:

- the canonical artifact and its owner
- confirmed facts, provisional or conflicting facts, blocking unknowns, and source references
- what the next skill consumes, what it adds, and what it must not redo
- the requested output and stop condition

Example: `product-launch-enablement` owns the selected launch signals and readiness decisions. `enablement-metrics-and-instrumentation` may add reproducible definitions, joins, QA, and thresholds; it must not silently replace the approved launch signals or readiness gate decisions.

## Minimal Route Output

For each selected step, return:

- Skill and availability status
- Job it performs and nearest boundary
- Required input or handoff
- Expected output

For deferred phases, also name phase-one completion evidence and the condition that should trigger the next route.

End with the exact first action. Put unavailable or later-phase work in a separate note rather than blending it into the executable path.
