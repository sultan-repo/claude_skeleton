---
name: full-spectrum-validation
description: Run maximum-depth, objective-first, multi-agent validation using primary-source inspection, adversarial verification, and a prioritized action roadmap.
---

# Full-Spectrum Validation

Use for project inception or redefinition, major milestones, architecture or operating-model changes, production readiness, repeated systemic failures, or an explicit comprehensive-validation request.

## 1. Establish the objective and evidence base

Read:

- `PROJECT_BRIEF.md`
- `docs/PROJECT_EXECUTION_STANDARD.md`
- requirements, architecture, decisions, status, TODOs, deferred actions, risks, and current task
- actual source code, tests, configuration, schemas, migrations, infrastructure, UI, operational artifacts, logs, metrics, and evaluations as relevant

State the ultimate objective, success criteria, constraints, assumptions, current milestone, and known evidence gaps.

## 2. Build the review panel

Select the smallest complete set of independent reviewers needed for the project. Include relevant product, domain, architecture, software, data, AI, security, privacy, reliability, performance, UX, human operations, QA, integration, infrastructure, compliance, and feasibility perspectives.

Assign each reviewer a bounded domain and the primary files or artifacts it must inspect. Reviewers must inspect actual sources and must not rely only on coordinator summaries.

Use the strongest reasoning capability for complex or high-risk review and synthesis. Use balanced or efficient capability only where reliable.

## 3. Review independently

Each reviewer must:

- evaluate alignment with the ultimate objective
- challenge current requirements, scope, architecture, and operating assumptions
- assess applicable happy paths, edge cases, misuse, failures, recovery, and production operations
- compare with credible state-of-the-art approaches where relevant
- cite concrete evidence
- separate verified findings from assumptions and validation gaps
- recommend preservation, revision, expansion, reduction, replacement, or deferral where justified
- classify findings by severity and evidence confidence

Do not let agents merely agree with one another.

## 4. Verify serious findings adversarially

Send every Critical and High finding to `adversarial-verifier` or an equally qualified independent reviewer.

The verifier must attempt to reproduce, disprove, reclassify, or qualify the finding and evaluate the proposed remedy.

Do not place an unverified Critical or High claim into the accepted roadmap as established fact. Put credible unresolved risks into a validation backlog with an evidence-gathering action.

## 5. Synthesize at maximum useful depth

Resolve contradictions between reviewers. Remove duplicates and low-value noise. Separate root causes from symptoms. Identify dependencies and interactions. Explain which existing choices should be preserved.

Reconnect every accepted recommendation to the ultimate objective. Include justified scope and requirement changes even when they exceed the current plan.

For major scope changes, provide:

- Baseline roadmap within approved scope
- Recommended roadmap incorporating the better objective-serving direction
- value, effort, risk, rework avoided, and approval decisions

## 6. Required output

Start with:

- Executive assessment
- Ultimate-goal alignment
- Evidence coverage and gaps
- Recommended scope and requirement changes

Then organize all accepted actions into exactly:

1. Revise
2. Implement
3. Re-engineer
4. Fix
5. UI/UX

For every accepted action include:

- ID and title
- category
- P0, P1, P2, or P3 priority
- severity where applicable
- evidence and confidence
- objective impact
- expected outcome
- dependencies
- relative effort
- risks and reversibility
- acceptance criteria
- validation method
- documentation updates
- responsible role or workstream when relevant

Produce a phased roadmap covering immediate safeguards, requirement and architecture corrections, core implementation and fixes, re-engineering, UI and workflow improvement, and production hardening as applicable.

Identify:

- actions safe to begin
- decisions requiring approval
- items requiring more evidence
- deferred opportunities

## 7. Durable updates

Update requirements, architecture, decisions, status, TODOs, deferred actions, and risks to reflect accepted conclusions and unresolved gaps.

Validation passes only when relevant dimensions were assessed or marked non-applicable, primary sources were inspected, serious findings were adversarially verified, contradictions were resolved, the five output buckets and prioritized roadmap were produced, and durable documentation was updated.
