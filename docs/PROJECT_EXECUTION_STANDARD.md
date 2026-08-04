# Universal Project Execution Standard

Apply this standard throughout the project regardless of technology stack, business domain, project size, or Claude Code surface.

## 1. Primary Objective

Before significant changes:

- Understand the ultimate objective, intended users, success criteria, constraints, current scope, and non-goals.
- Inspect the codebase and documentation before proposing a solution.
- Challenge weak assumptions rather than automatically accepting them.
- Distinguish confirmed facts, assumptions, recommendations, risks, and unresolved questions.
- Prefer the simplest design that reliably achieves the objective.
- Do not introduce unnecessary architecture, workflows, dependencies, infrastructure, or operational complexity.

Every decision must support the ultimate objective. Technical elegance alone is insufficient justification.

Treat current scope, requirements, architecture, workflows, and implementation as proposals for achieving the objective, not untouchable rules. Recommend justified preservation, revision, expansion, reduction, replacement, or deferral. Present major direction changes for approval rather than implementing them silently.

## 2. Applicability-First Requirements Assessment

Assess all potentially relevant dimensions:

- business and product
- end users and customers
- employees and internal users
- operational workflows
- user experience and accessibility
- technical architecture and maintainability
- data ownership, quality, lineage, retention, migration, reconciliation, and governance
- artificial intelligence and automation
- security, privacy, fraud, abuse, misuse, and segregation of duties
- external integrations, vendors, APIs, and dependencies
- hardware, devices, networks, and environmental constraints
- performance, scalability, latency, capacity, and cost
- reliability, observability, incident recovery, and reconciliation
- testing and quality assurance
- deployment, migration, rollback, and release management
- support, maintenance, upgrades, and decommissioning
- legal, regulatory, contractual, and compliance requirements

For each relevant dimension:

1. Identify requirements and constraints.
2. Find missing use cases and actors.
3. Examine happy paths, exceptions, edge cases, misuse, concurrency, and failure modes.
4. Define recovery and operational handling.
5. Establish measurable acceptance criteria.
6. Record unresolved matters and evidence gaps.

Do not automatically implement every possible capability. Determine applicability first and mark non-applicable areas when exclusion would otherwise be ambiguous.

## 3. Interactive Requirements Elicitation and Confirmation

The user may provide rough requirements directly in the Claude Code conversation, place them in `PROJECT_BRIEF.md`, provide external references, or combine these methods. Do not require the user to complete every template document before work can begin.

For a new project or material redefinition:

1. Read the user's supplied requirements and inspect the actual repository before asking questions.
2. Summarize known facts, assumptions, contradictions, existing behavior, and material gaps.
3. Run an adaptive requirements interview with as many rounds as necessary. There is no fixed question count.
4. Ask focused, concrete, decision-oriented questions in small coherent batches.
5. Prioritize unknowns that could materially affect the objective, users, scope, workflow, architecture, data, security, privacy, operations, cost, deployment, or acceptance criteria.
6. Do not repeat questions already answered in the conversation, repository, or documentation.
7. When the user is unsure, explain credible options, trade-offs, and a recommendation.
8. Allow the user to delegate a decision to Claude. Record the selected recommendation, evidence, assumptions, and consequences.
9. Resolve contradictions explicitly rather than silently choosing an interpretation.
10. Continue until all material gaps are resolved, explicitly assumed, deliberately deferred, or identified as blocking decisions.

Requirements are ready for implementation planning only when:

- the ultimate objective and measurable success criteria are clear
- applicable users, actors, stakeholders, journeys, workflows, and responsibilities are defined
- approved scope, priorities, non-goals, release boundaries, and mandatory constraints are clear
- functional requirements and applicable non-functional requirements are testable
- applicable data, security, privacy, integration, operational, hardware, AI, deployment, support, and lifecycle concerns are addressed or marked non-applicable
- material edge cases, misuse cases, failure modes, and recovery expectations are defined
- acceptance criteria and validation evidence are measurable
- remaining unknowns are classified as blocking decisions, explicit assumptions, evidence gaps, or deferred items

Before planning, present a consolidated requirements baseline containing:

- ultimate objective and success measures
- users, actors, and end-to-end journeys
- approved scope and non-goals
- functional and non-functional requirements
- operating model and failure handling where applicable
- material assumptions and evidence gaps
- recommended requirement or scope changes
- resolved decisions and unresolved blockers
- measurable acceptance criteria

Ask the user to confirm or correct this baseline. Do not begin implementation planning until the user confirms it or explicitly delegates confirmation.

After confirmation:

- update `PROJECT_BRIEF.md` and the authoritative requirements documentation
- record decisions, risks, assumptions, TODOs, and deferred actions
- create the implementation plan and independently verifiable milestones
- identify the first milestone, validation methods, blockers, and next action
- stop before coding unless implementation is separately requested

## 4. Human and Operational Workflow

When humans use, operate, review, administer, support, supervise, or perform field work, assess the complete operating model, including where applicable:

- roles, permissions, responsibilities, and segregation of duties
- availability, online status, absence, and working hours
- request intake, queues, priorities, service levels, and aging
- manual, automatic, or hybrid assignment
- claiming, releasing, reserving, and reassigning work
- concurrency, locking, duplication, idempotency, and race conditions
- workload, capacity, and balancing
- escalation, timeout, abandonment, and recovery
- second review, disagreement, appeal, and override
- shifts, handovers, and incomplete work
- retry, compensation, rollback, and reconciliation
- offline operation, network interruption, and device failure
- supervision, monitoring, intervention, and exception handling
- audit trails, evidence, accountability, and reporting
- fraud, collusion, manipulation, and privilege abuse

Model end-to-end workflows, state transitions, ownership changes, exceptions, and failure recovery. Do not design only happy-path screens. Do not introduce operational mechanisms unless the project needs them.

## 5. Planning and Execution Discipline

Before material implementation:

1. Confirm the requirements baseline.
2. Read project instructions and current durable documentation.
3. Inspect relevant code and existing behavior.
4. Identify the current milestone and intended outcome.
5. Define acceptance criteria and validation methods.
6. Identify dependencies, risks, assumptions, affected components, owners, and blockers.
7. Prepare or update the implementation plan.

Break large work into independently implementable and verifiable milestones.

For each milestone:

- keep changes focused on the approved outcome
- implement the smallest coherent change
- run relevant validation
- treat failed required validation as a blocker to dependent work
- fix the failure or change the approach before continuing
- review the diff for regressions and unintended scope
- update project documentation and status
- continue only when the milestone is genuinely complete

Do not silently abandon the existing plan when a new request arrives. Explicitly incorporate, defer, reject, or replace previous direction and record the effect on pending work.

## 6. Durable Project Documentation

Treat repository documentation as durable project memory. Chat history must not be the only place important context, decisions, tasks, validation, or deferred actions exist.

Keep documentation proportional to project complexity. Consolidate for small projects and split into focused documents or ADRs when complexity requires it. Maintain one authoritative source for each fact.

Document where applicable:

### Project definition

- ultimate objective
- problem or opportunity
- intended users and stakeholders
- scope and non-goals
- success measures
- constraints and assumptions

### Requirements

- functional, non-functional, operational, security, privacy, and integration requirements
- acceptance criteria
- open requirements and unresolved questions

### Architecture

- context and boundaries
- components and responsibilities
- data flows and state ownership
- interfaces and integrations
- deployment model
- trade-offs and technical constraints

### Plan and status

- milestones, tasks, dependencies, acceptance criteria, validation, current milestone, next action, blockers, completed work, work in progress, known failures, and validation state

### Decisions

- decision, context, alternatives, reasoning, consequences, date, status, and revisit trigger

### TODOs, deferred actions, and risks

- priority, status, source, dependencies, acceptance criteria, owner, target milestone, delay risk, reconsideration trigger, mitigation, and current state as relevant

### Operations

For production systems, document deployment, rollback, monitoring, alerting, incidents, backup, recovery, support, data repair, reconciliation, and known operational limitations.

Do not create empty documentation for appearance. Avoid duplicate or conflicting sources of truth.

## 7. Context Retention and Drift Control

At the beginning of each significant task or session:

- read project instructions, objective, current status, plan, and relevant architecture
- review unresolved TODOs, deferred actions, decisions, risks, and blockers
- reconcile the new request with the current milestone and ultimate objective

When a request conflicts with an existing decision, plan, or objective, surface the conflict, explain the impact, recommend reject, defer, incorporate, or replace, and update authoritative documentation when direction changes.

At task completion, update task and milestone status, decisions, assumptions, TODOs, deferred actions, limitations, risks, validation state, and next action.

Before `/compact`, ending a long session, or handing work to another session, persist the current state and next action. After compaction or resume, reread the current plan and status before continuing.

Never mark work complete merely because code was written.

## 8. File and Folder Structure

Maintain a structure appropriate to the language, framework, architecture, deployment model, and ecosystem.

Promote clear ownership, high cohesion, low coupling, discoverable naming, separation of concerns, testability, reusable interfaces, and appropriate domain, application, infrastructure, presentation, and integration boundaries.

Avoid arbitrary nesting, oversized generic utility folders, duplicate implementations, circular dependencies, mixed responsibilities, premature abstraction, framework-hostile patterns, unrelated refactoring, and repository-wide restructuring without clear value.

Before a substantial structural change, inspect the current organization, identify the problem, compare alternatives, explain trade-offs, preserve useful conventions, and update architecture documentation.

## 9. AI Panel and Independent Review

Use independent review perspectives when they materially improve correctness, challenge assumptions, isolate context, or reduce risk.

Typical triggers include ambiguous requirements, major architecture, cross-functional workflows, production impact, security, privacy, compliance, data loss, AI behavior, complex human operations, significant performance changes, uncertain root causes, and milestone or release readiness.

Do not use a large panel for routine low-risk work. Select the smallest complete panel for the actual task, but impose no fixed roster or maximum. Add every specialist perspective needed for confidence.

Claude may use built-in agents, multiple dynamically assigned generic reviewers, temporary session agents, recurring project agents, or agent teams when available and justified. Existing agent files are reusable templates, not a limit on the roles Claude may create or invoke.

Parallel analysis may run concurrently when independent. Parallel editing requires isolated file ownership or worktree isolation; agents must not modify overlapping files concurrently.

Reviewers must:

- work independently before synthesis
- inspect primary evidence rather than repeat implementation claims
- challenge assumptions and missing scenarios
- avoid agreement for consensus alone
- classify findings by severity and confidence
- provide evidence, impact, root cause, action, acceptance criteria, and validation

Every Critical and High finding must be independently challenged before it becomes an accepted fact or roadmap commitment. Resolve confirmed serious findings before continuing unless the user explicitly accepts an appropriate risk with documented reasoning, mitigation, owner, and review trigger.

After remediation, rerun affected checks, verify resolution, update documentation, and continue only after the milestone meets acceptance criteria.

## 10. Model Selection

Choose models based on task difficulty, risk, privacy, cost, latency, and reasoning quality. Do not automatically use the strongest model for every task.

Use strongest available reasoning for requirements, architecture, security, privacy, high-risk migrations, incidents, difficult debugging, complex algorithms, critical reviews, conflicting recommendations, adversarial verification, and costly or irreversible changes.

Use balanced implementation capability for feature development, refactoring, tests, APIs, routine debugging, and code-grounded documentation.

Use efficient capability for exploration, search, classification, formatting, boilerplate, repetitive transformations, simple documentation, basic checks, and log summarization.

Prefer local, private, or policy-approved models when sensitivity, agreements, regulation, or organizational policy requires it.

Escalate when confidence is low, evidence conflicts, risk is material, validation repeatedly fails, requirements remain ambiguous, or a cheaper model cannot complete the task reliably.

Never reduce testing, review, or safety because a cheaper model was selected.

## 11. Validation and Evidence

Select validation according to the change, including where applicable:

- unit, integration, end-to-end, regression, and contract tests
- type checking, linting, formatting, and static analysis
- security and dependency checks
- migration and rollback testing
- performance, load, and resilience testing
- accessibility and usability checks
- operational workflow simulations
- failure, retry, timeout, recovery, and concurrency scenarios
- data integrity and reconciliation checks
- AI evaluation, calibration, drift, fallback, and human-review testing

Report what was actually validated and what remains unverified. Do not claim success without evidence from inspection, execution, tests, or another appropriate method.

## 12. Definition of Done

Work is complete only when:

- the objective and acceptance criteria are satisfied
- relevant tests and validation pass
- the final diff is reviewed
- confirmed Critical findings are resolved
- confirmed High findings are resolved or explicitly accepted with documented mitigation and review trigger
- documentation reflects the implemented system
- TODOs and deferred actions are updated
- known limitations, evidence gaps, and risks are recorded
- operational readiness is addressed when applicable
- the next action is clear

## 13. Full-Spectrum Validation Mode

Run maximum-depth validation at project inception or redefinition, major milestones, significant architecture or operating-model changes, repeated systemic failures, production readiness, major releases, or explicit request.

Each reviewer must inspect relevant primary sources. Compare the current approach with credible state-of-the-art practices and alternatives where relevant. Adversarially verify every Critical and High finding.

Resolve contradictions and synthesize accepted actions into exactly:

1. Revise
2. Implement
3. Re-engineer
4. Fix
5. UI/UX

Prioritize P0-P3 and produce a phased roadmap with evidence, impact, dependencies, effort, risk, acceptance criteria, validation, documentation changes, and responsible workstream where relevant.

For material scope changes, provide a baseline roadmap within approved scope and a recommended roadmap incorporating the stronger objective-serving direction. Do not implement the broad roadmap automatically without decisions and evidence gates.
