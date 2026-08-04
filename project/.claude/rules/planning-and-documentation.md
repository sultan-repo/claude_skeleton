# Planning and Documentation Continuity

Apply this rule to all substantial project work.

## Milestone planning

Before material implementation:

1. Read the project instructions and current durable documentation, including `docs/plan.md` when present.
2. Inspect the relevant code, tests, configuration, schemas, infrastructure, and existing behavior.
3. Identify the current milestone and intended outcome.
4. Define measurable acceptance criteria and validation commands or procedures.
5. Identify dependencies, risks, assumptions, affected components, owners, blockers, and handoffs.
6. Create or update the milestone plan.

Break large work into milestones that can be implemented, reviewed, and validated independently.

For every milestone:

- keep implementation focused on the approved milestone outcome
- implement the smallest coherent change
- run the relevant validations
- treat failed required validation as a blocker to dependent work
- fix the failure or change the approach before continuing
- review the resulting diff for regressions and unintended scope
- update the plan, status, TODOs, decisions, risks, deferred actions, requirements, and architecture as applicable
- continue only when acceptance criteria and completion conditions are genuinely satisfied

Do not silently abandon or overwrite the existing plan when a new request arrives. Explicitly incorporate, defer, reject, or replace the request and record its effect on pending work.

## Documentation structure

Treat repository documentation as durable project memory. Chat history must not be the only place where important context, decisions, tasks, validation results, risks, or deferred actions exist.

Keep documentation proportional to project complexity:

- small projects may consolidate closely related information into fewer authoritative files
- larger projects may split details into focused documents or ADRs
- when splitting, maintain clear links and one authoritative source for each fact
- avoid duplicate, conflicting, empty, or ceremonial documents

Documentation must cover where applicable:

- ultimate objective, problem, users, stakeholders, scope, non-goals, success measures, constraints, and assumptions
- functional, non-functional, operational, security, privacy, integration, and acceptance requirements
- system boundaries, components, responsibilities, state ownership, data flows, interfaces, deployment, trade-offs, and technical constraints
- milestones, tasks, dependencies, validation, current milestone, blockers, and next action
- completed work, work in progress, decisions, risks, deferred actions, evidence gaps, and production readiness

Technical elegance alone is not sufficient justification. Documentation and planning exist to support the ultimate objective and reliable delivery, not to create process weight.