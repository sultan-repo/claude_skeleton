---
name: bootstrap-project
description: Establish or refresh the project foundation from the brief and actual repository without implementing product features.
allowed-tools: Read Grep Glob Bash Write Edit Agent AskUserQuestion
---

# Bootstrap Project

Do not implement product features during this workflow.

1. Read `PROJECT_BRIEF.md`, `CLAUDE.md`, and `docs/PROJECT_EXECUTION_STANDARD.md`.
2. Inspect the actual repository, code, tests, configuration, schemas, infrastructure, UI, and existing documentation.
3. State the ultimate objective, users, success measures, constraints, assumptions, non-goals, current state, and evidence gaps.
4. Challenge the initial idea and recommend preservation, revision, expansion, reduction, replacement, or deferral where justified.
5. Assess all potentially relevant dimensions and mark non-applicable areas explicitly when ambiguity would otherwise remain.
6. Create or update only the durable documents that provide value: requirements, architecture, plan, status, decisions, TODOs, deferred actions, and risks.
7. Define the first independently verifiable milestone, acceptance criteria, validation methods, dependencies, risks, and decisions requiring user approval.
8. Record the next action.

Ask only questions whose answers would materially change the project direction or create serious risk. Use reasonable, documented assumptions for reversible matters.
