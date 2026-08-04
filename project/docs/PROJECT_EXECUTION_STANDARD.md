# Project Execution Standard

This standard governs all substantial work performed with Claude Code in this project.

## 1. Ultimate objective

Treat the project's ultimate objective as the highest-level constraint. Current requirements, scope, architecture, workflows, and implementation are proposals for achieving that objective, not untouchable rules.

Before significant work:

- understand the objective, intended users, success measures, constraints, assumptions, and non-goals
- inspect the actual repository and durable documentation
- challenge weak or incomplete assumptions
- distinguish verified facts, assumptions, recommendations, risks, and unknowns
- prefer the simplest solution that reliably achieves the objective

Claude must recommend justified changes even when they require revising, expanding, reducing, replacing, or deferring current scope. Do not suppress a valuable recommendation merely because it is outside the current plan. Do not expand scope for novelty, theoretical completeness, or technical elegance without material value.

Major direction changes must be presented for approval rather than silently implemented.

## 2. Complete applicability-first assessment

Assess every relevant dimension rather than designing only the business happy path:

- product, strategy, business model, and user value
- customers, end users, employees, operators, administrators, and supervisors
- operational workflows and production operations
- functional and non-functional requirements
- UX, accessibility, and information architecture
- architecture, code quality, and maintainability
- data ownership, quality, lineage, retention, migration, and governance
- AI behavior, orchestration, evaluation, guardrails, cost, and fallback
- security, privacy, fraud, abuse, misuse, and segregation of duties
- integrations, vendors, APIs, and external dependencies
- hardware, devices, networks, and environmental constraints
- performance, scalability, latency, capacity, and cost
- reliability, observability, incident handling, recovery, and reconciliation
- testing, deployment, rollback, release, support, maintenance, and decommissioning
- legal, regulatory, contractual, and compliance obligations

For each relevant dimension:

1. identify requirements and constraints
2. identify missing actors, use cases, and acceptance criteria
3. examine happy paths, exceptions, edge cases, misuse, concurrency, and failure modes
4. define recovery and operational ownership
5. record unresolved questions, assumptions, and evidence gaps

Mark dimensions non-applicable when appropriate. Do not force enterprise mechanisms into projects that do not need them.

## 3. Human and operational workflow

When humans operate, review, administer, supervise, or support the system, assess the complete operating model, including where applicable:

- roles, permissions, responsibility, and segregation of duties
- availability, online state, absence, and working hours
- intake, queues, priorities, service levels, and aging
- manual, automatic, or hybrid assignment
- claiming, reservation, release, reassignment, and handover
- concurrency, locking, duplication, idempotency, and race conditions
- capacity, workload measurement, and balancing
- escalation, timeout, abandonment, and recovery
- second review, disagreement, appeal, override, and audit
- shift changes, incomplete work, and offline operation
- supervision, intervention, evidence, reporting, and accountability
- fraud, collusion, manipulation, and privilege abuse

Model end-to-end workflows, state transitions, ownership changes, exceptions, and recovery. Do not design only happy-path screens.

## 4. Objective-first scope challenge

During requirements, architecture, milestone, and release reviews, explicitly ask:

1. Are we solving the right problem?
2. Are current requirements sufficient to achieve the desired outcome?
3. Are any requirements unnecessary or counterproductive?
4. Is there a materially better approach?
5. Should scope be preserved, revised, expanded, reduced, replaced, or deferred?
6. What would an expert design if starting from the ultimate objective today?
7. Which recommendations justify their cost, complexity, and risk?

For each proposed scope change, explain:

- problem or opportunity
- relationship to the ultimate objective
- why the current approach is insufficient
- recommended change
- expected measurable value
- supporting evidence or reasoning
- product, user, operational, technical, data, security, and cost impact
- implementation and migration effort
- dependencies, risks, and reversibility
- consequences of accepting or rejecting it
- priority and recommended timing
- whether it is required, strongly recommended, or optional

When useful, provide both:

- **Baseline roadmap:** best path within approved scope
- **Recommended roadmap:** preferred path after justified scope or requirement changes

## 5. Planning, TODOs, and drift control

Before material implementation:

1. read `PROJECT_BRIEF.md`, requirements, architecture, decisions, status, TODOs, deferred actions, risks, and the current task
2. inspect relevant code, tests, configuration, schemas, and deployment artifacts
3. identify the current milestone and next intended outcome
4. define acceptance criteria and validation methods
5. identify dependencies, risks, assumptions, and affected components
6. update the implementation plan when necessary

Do not silently abandon an existing plan when a new prompt arrives. Reconcile the request with the objective and pending work, then explicitly incorporate, defer, reject, or replace previous direction.

At the end of substantial work:

- update current status and next action
- update the TODO register
- record deferred actions outside chat history
- record decisions and changed assumptions
- update known risks, limitations, and validation gaps
- update requirements and architecture when behavior or design changed

Never mark work complete merely because code was written.

## 6. Durable project memory

Repository documentation is the durable source of project context. Important information must not exist only in conversation history.

Maintain, as applicable:

- `PROJECT_BRIEF.md`: initial objective, users, idea, constraints, and success definition
- `docs/requirements.md`: approved behavior, operating model, non-functional requirements, and acceptance criteria
- `docs/architecture.md`: system boundaries, components, data flows, deployment, and trade-offs
- `docs/decisions.md` or ADRs: significant decisions and consequences
- `docs/current-task.md`: active goal, scope, acceptance criteria, relevant files, and validation
- `docs/status.md`: completed, in progress, blockers, validation state, and next action
- `docs/todo.md`: prioritized unfinished work with status, dependencies, and acceptance criteria
- `docs/deferred-actions.md`: deferred work, reason, risk, trigger, and intended review point
- `docs/risks.md`: risks, impact, likelihood, mitigation, owner, and status

Avoid duplicate sources of truth. Update the authoritative document instead of adding contradictory notes. Do not create empty documentation solely for appearance.

## 7. File and folder structure

Maintain a coherent structure appropriate to the selected language, framework, architecture, deployment model, and ecosystem.

Promote clear ownership, high cohesion, low coupling, discoverable naming, testability, and separation of concerns. Avoid arbitrary nesting, oversized generic utility folders, circular dependencies, duplicate implementations, premature abstraction, and repository-wide restructuring without clear value.

Before a substantial structural change:

1. inspect the current organization
2. identify the concrete problem
3. compare credible alternatives
4. explain the proposed structure and trade-offs
5. preserve useful conventions
6. update architecture documentation

## 8. AI panel and model selection

Use multiple independent agents when specialist expertise, adversarial challenge, parallel investigation, or context isolation materially improves quality. Do not summon a large panel for routine low-risk work.

For routine bounded work, choose the smallest useful set of agents. For major milestone and full-spectrum validation, always invoke the four required core reviewers defined below, then add the smallest additional specialist set needed for complete coverage.

Available specialist perspectives may include product, domain, architecture, data, AI, security, privacy, reliability, performance, UX, operations, QA, integration, compliance, implementation feasibility, and adversarial verification.

Choose model capability based on difficulty, risk, privacy, cost, latency, and evidence needs:

- strongest reasoning capability for architecture, difficult debugging, security-sensitive work, migrations, high-risk decisions, adversarial verification, and critical synthesis
- balanced coding capability for implementation, tests, APIs, UI, and normal refactoring
- efficient capability for search, classification, formatting, mechanical edits, and summaries

Escalate when confidence is low, evidence conflicts, validation repeatedly fails, or risk is material. Never reduce testing or safety because a cheaper model was selected.

## 9. Mandatory milestone review gate

Run a milestone review before completing a major milestone, major feature, architecture or schema change, operating-model change, high-risk migration, security-sensitive change, or production release.

Always invoke these four independent core reviewers:

1. `product-architect`
2. `ai-orchestration-reviewer`
3. `ux-office-reviewer`
4. `qa-security-reviewer`

Each core reviewer must inspect actual project sources. A reviewer may mark part of its domain non-applicable only after enough inspection to justify that conclusion. Add specialists when further domain depth is required.

Every Critical and High finding must be independently challenged by `adversarial-verifier` or an equally qualified independent reviewer.

- Resolve all confirmed Critical findings before the milestone can pass.
- Resolve all confirmed High findings before the milestone can pass unless the user explicitly accepts the risk and the decision, rationale, owner, mitigation, and review trigger are documented.
- Rerun affected checks and focused verification after remediation.
- Confirm no regression was introduced.
- Update requirements, architecture, decisions, status, TODOs, deferred actions, risks, and current task as applicable.
- Continue only when the milestone gate passes.

## 10. Full-spectrum multi-agent validation

Run full-spectrum validation when:

- starting or substantially redefining a project
- completing a major milestone
- making a significant architecture, data, workflow, or operational change
- preparing for production or a major release
- repeated failures suggest a systemic problem
- explicitly requested by the user

This is not a routine code review. Its purpose is to determine whether the complete project is the strongest practical way to achieve its ultimate objective.

### Required panel and primary sources

Always invoke the four core reviewers from the milestone gate and add all necessary specialists.

Each participating agent must inspect the actual materials relevant to its review, including source code, tests, configuration, schemas, migrations, infrastructure, requirements, architecture, decisions, UI implementation, operational procedures, logs, metrics, and evaluation results when available.

Agents must not rely only on summaries prepared by the coordinating agent.

Each material finding must cite concrete evidence such as file paths, code locations, documentation sections, test results, runtime behavior, metrics, logs, reproducible scenarios, or important missing artifacts.

Unsupported conclusions must be labeled as assumptions, hypotheses, or validation gaps.

### Independent review

Agents work independently before synthesis. They must challenge requirements and implementation choices, search for missing scenarios and contradictions, and avoid agreement for its own sake.

The coordinating agent must prevent redundant reviews that add no distinct perspective.

### State-of-the-art comparison

Where relevant, compare the project with credible contemporary practices, proven patterns, available technologies, and realistic alternatives. Do not recommend technology merely because it is new.

For each alternative, assess relevance, evidence of benefit, effort, migration risk, operational complexity, cost, skills, dependencies, and maintainability.

### Adversarial verification

A Critical or High finding must not enter the accepted roadmap from one agent's assertion alone.

A qualified independent verifier must attempt to reproduce, disprove, reclassify, or explain the finding and assess whether the proposed remedy addresses the root cause.

Classify verification as:

- Confirmed
- Confirmed with modified severity
- Partially confirmed
- Unverified
- Rejected
- Requires runtime or external validation

Only confirmed or explicitly qualified findings may be presented as established facts. Credible unverified risks belong in a validation backlog with an evidence-gathering action.

### Maximum-effort synthesis

After review and verification, produce one coherent project-level assessment. Resolve contradictions rather than listing agent opinions. Remove duplicates and low-value noise, separate root causes from symptoms, identify dependencies, explain what should be preserved, and reconnect every accepted recommendation to the ultimate objective.

Organize accepted actions into exactly these buckets:

1. **Revise:** requirements, scope, policies, documentation, workflows, acceptance criteria, or decisions
2. **Implement:** missing capabilities that fit the current foundations
3. **Re-engineer:** foundations, architecture, data, workflows, or major components requiring substantial redesign
4. **Fix:** defects, vulnerabilities, regressions, reliability issues, broken tests, technical debt, or compliance gaps
5. **UI/UX:** journeys, interfaces, accessibility, information architecture, feedback states, and operational usability

Empty buckets are acceptable. Do not force findings into a category.

Prioritize using severity, objective impact, user and operational impact, security and compliance exposure, probability, dependencies, cost of delay, effort, reversibility, and evidence confidence.

Use:

- P0: immediate blocker or unacceptable production risk
- P1: required before the next major milestone or release
- P2: material improvement
- P3: optional optimization

Severity and delivery priority are related but not identical.

Produce a phased roadmap containing sequence, category, priority, evidence, expected outcome, dependencies, relative effort, risks, acceptance criteria, validation method, documentation updates, and responsible role or workstream when relevant.

For material scope changes, provide both:

- **Baseline roadmap:** best path within approved scope
- **Recommended roadmap:** preferred path after justified scope or requirement changes

Do not begin broad implementation automatically. Identify actions that can proceed safely, decisions requiring approval, and items requiring more evidence.

Validation is complete only when all relevant dimensions were assessed or marked non-applicable, core and specialist agents inspected primary sources, Critical and High findings were adversarially verified, conflicts were resolved, actions were categorized and prioritized, a phased roadmap was produced, and durable documentation was updated.

## 11. Validation and definition of done

Select validation according to the change, including where applicable unit, integration, end-to-end, regression, contract, security, dependency, migration, rollback, performance, resilience, accessibility, workflow, concurrency, recovery, data-integrity, and AI-evaluation checks.

Report what was actually validated and what remains unverified.

Work is complete only when:

- objective and acceptance criteria are satisfied
- relevant tests and checks pass
- the final diff was reviewed
- confirmed Critical findings are resolved
- confirmed High findings are resolved or explicitly accepted by the user with documented mitigation and review trigger
- requirements, architecture, status, TODOs, decisions, deferred actions, and risks are current
- known limitations and validation gaps are recorded
- operational readiness is addressed when applicable
- the next action is clear
