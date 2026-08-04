---
name: start-project
description: Turn rough requirements into a confirmed project definition through adaptive interviewing, then create an implementation plan without implementing product features.
allowed-tools: Read Grep Glob Bash Write Edit Agent AskUserQuestion
---

# Start Project

This is the primary user entry point for a new or existing project.

The user may provide requirements directly in the conversation, place them in `PROJECT_BRIEF.md`, or do both. Do not require the user to complete every template file before starting.

Do not implement product features during this workflow.

## 1. Inspect before interviewing

1. Read the user's supplied requirements, `PROJECT_BRIEF.md`, `CLAUDE.md`, and `docs/PROJECT_EXECUTION_STANDARD.md`.
2. Inspect the actual repository, source code, tests, configuration, schemas, infrastructure, UI, and existing documentation.
3. Summarize what is already known, what appears contradictory, and which unknowns could materially affect the objective, scope, behavior, architecture, data, security, operations, cost, deployment, or acceptance criteria.

## 2. Run an adaptive requirements interview

Ask as many rounds of questions as necessary to make the requirements decision-ready. There is no fixed question count.

- Ask focused, concrete, decision-oriented questions in small coherent batches.
- Prioritize the highest-impact unknowns first.
- Do not repeat questions already answered in the conversation, repository, or documentation.
- Resolve contradictions explicitly instead of silently choosing one interpretation.
- When the user is unsure, explain credible options, trade-offs, and a recommendation.
- Allow the user to delegate a decision to Claude; record the recommendation and its assumptions.
- Use reasonable documented assumptions only for reversible, low-risk matters.
- Continue the interview until all material gaps are resolved, deliberately deferred, or accepted as explicit assumptions.

Cover only applicable areas, including where relevant:

- ultimate objective, problem, users, stakeholders, and measurable success
- scope, non-goals, priorities, and release boundaries
- end-to-end user and operational workflows
- roles, permissions, assignment, concurrency, recovery, supervision, and auditability
- functional behavior, edge cases, misuse, and failure handling
- data, privacy, security, compliance, integrations, hardware, AI, and automation
- performance, reliability, scalability, cost, deployment, support, and lifecycle
- acceptance criteria and evidence required for completion

## 3. Requirements readiness gate

Do not begin implementation planning until the requirements are sufficiently complete.

Requirements are ready when:

- the ultimate objective and success measures are clear
- applicable users, actors, journeys, workflows, and responsibilities are defined
- approved scope, non-goals, priorities, and constraints are clear
- functional and applicable non-functional requirements are testable
- key data, security, privacy, integration, operational, and deployment concerns are addressed or marked non-applicable
- material edge cases, failure modes, and recovery expectations are defined
- acceptance criteria are measurable
- remaining unknowns are classified as blocking decisions, explicit assumptions, evidence gaps, or deferred items

Present a consolidated requirements summary, material assumptions, recommended requirement changes, unresolved items, and decisions made. Ask the user to confirm or correct this requirements baseline.

## 4. Plan after confirmation

After the user confirms the requirements baseline:

1. Update `PROJECT_BRIEF.md` and the applicable durable documents.
2. Create or update `docs/requirements.md`, `docs/architecture.md`, `docs/decisions.md`, `docs/risks.md`, `docs/todo.md`, and `docs/deferred-actions.md` as needed.
3. Create or update `docs/plan.md` with independently verifiable milestones, dependencies, acceptance criteria, validation procedures, blockers, and sequencing.
4. Define the first implementation milestone and update `docs/status.md` with the next action.
5. Identify any decisions that still require approval before implementation.

Do not begin coding automatically. Finish by presenting the confirmed requirements, implementation plan, first milestone, and exact next action.