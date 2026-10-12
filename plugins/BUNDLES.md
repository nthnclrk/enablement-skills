# Plugin Bundles

All plugin bundles use symlinks under `plugins/<bundle>/skills/` that point to the canonical skill folders in `skills/`. This keeps bundle membership explicit while avoiding duplicated skill copies.

Every bundle includes `revenue-enablement-context` for optional shared context and `enablement-house-style` for editorial or operating-rules reviews. Each specialist carries its own essential safeguards and can handle direct requests. Bundle membership does not automatically load sibling instructions.

## enablement-core

**Purpose:** Foundational planning, routing, program design, and common field-execution workflows.

**Best for:** Enablement leaders and operators who want the broadest starting bundle or need to coordinate work across several enablement disciplines.

**Prerequisite:** None. Start with `revenue-enablement-context` when durable company context is needed, or `enablement-router` when the request spans multiple deliverables.

- `revenue-enablement-context`
- `enablement-house-style`
- `enablement-router`
- `enablement-program-design`
- `quarterly-enablement-planner`
- `onboarding-program-builder`
- `certification-program-builder`
- `manager-coaching-cadence`
- `account-brief-builder`
- `mutual-action-plan-builder`
- `qbr-ebr-builder`

## enablement-messaging

**Purpose:** Positioning, sales messaging, objection handling, competitive guidance, and content operations.

**Best for:** Product marketing, enablement, and sales teams building or improving field-facing messaging and assets.

**Prerequisite:** Bring current product, buyer, competitor, and proof context. Use the included context skill first only when that foundation is incomplete.

- `revenue-enablement-context`
- `enablement-house-style`
- `value-prop-and-positioning`
- `talk-track-builder`
- `objection-library-builder`
- `battlecard-builder`
- `discovery-and-demo-structure`
- `one-pager-and-slide-outline`
- `case-study-extractor`
- `content-gap-analysis`
- `field-feedback-synthesizer`
- `content-governance-system`

## enablement-programs

**Purpose:** Onboarding, certification, manager coaching, practice, call review, and deal inspection.

**Best for:** Enablement leaders and frontline managers designing repeatable development and inspection programs.

**Prerequisite:** Confirm the target roles, observable behavior change, manager ownership, and evidence available for evaluation.

- `revenue-enablement-context`
- `enablement-house-style`
- `onboarding-program-builder`
- `certification-program-builder`
- `manager-coaching-cadence`
- `call-review-coach`
- `roleplay-scenario-builder`
- `discovery-rubric-auditor`
- `deal-inspection-coach`
- `forecast-risk-brief`
- `onboarding-to-value-playbook`

## enablement-measurement

**Purpose:** KPI design, evidence synthesis, impact narratives, stage governance, and content-performance analysis.

**Best for:** Enablement operations, RevOps, and leadership teams defining success or explaining impact without overstating attribution.

**Prerequisite:** Bring metric definitions, source dates, ownership, and known data limitations. Treat causal claims as unproven unless the evidence supports them.

- `revenue-enablement-context`
- `enablement-house-style`
- `enablement-metrics-and-instrumentation`
- `enablement-impact-story`
- `win-loss-synthesis`
- `pipeline-stage-definition-and-exit-criteria`
- `content-gap-analysis`

## enablement-launches

**Purpose:** Product-change readiness, seller updates, partner preparation, and supporting launch assets.

**Best for:** Product marketing and enablement teams preparing revenue roles and partners for a release or change.

**Prerequisite:** Confirm the source of truth, launch tier, affected audiences, timing, owners, and approval path before producing distribution-ready material.

- `revenue-enablement-context`
- `enablement-house-style`
- `product-launch-enablement`
- `release-notes-to-seller-updates`
- `partner-enablement-package`
- `one-pager-and-slide-outline`
- `objection-library-builder`

## enablement-crm-pack

**Purpose:** Account planning, deal inspection, forecasting, stage governance, proposals, renewals, and customer-value workflows.

**Best for:** Revenue leaders, RevOps, sales managers, and customer teams working from CRM and account evidence.

**Prerequisite:** Use scoped, current exports and preserve stable record IDs. Keep analysis read-only until the user explicitly approves a write-back.

- `revenue-enablement-context`
- `enablement-house-style`
- `account-brief-builder`
- `executive-briefing-builder`
- `mutual-action-plan-builder`
- `deal-inspection-coach`
- `forecast-risk-brief`
- `pipeline-stage-definition-and-exit-criteria`
- `proposal-rfp-orchestrator`
- `qbr-ebr-builder`
- `renewal-and-expansion-enablement`
- `onboarding-to-value-playbook`

## enablement-ci-pack

**Purpose:** Conversation-intelligence analysis for call review, objection mining, discovery quality, field feedback, and win/loss learning.

**Best for:** Enablement and sales teams turning call and interview evidence into coaching and program decisions. Here, `ci` means conversation intelligence.

**Prerequisite:** Bring permissioned transcripts or excerpts with dates, speaker attribution, and useful segment or stage metadata. Treat recordings and transcripts as sensitive.

- `revenue-enablement-context`
- `enablement-house-style`
- `call-insights-to-objections`
- `call-review-coach`
- `discovery-rubric-auditor`
- `field-feedback-synthesizer`
- `win-loss-synthesis`
- `roleplay-scenario-builder`
