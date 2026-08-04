# Claude Code Reusable Project Skeleton

A project-agnostic Claude Code template for turning rough requirements into a validated project definition, implementation plan, durable project memory, dynamic multi-agent review, and milestone delivery.

The repository itself is the template. Create a repository from it and start Claude Code at the root. There is no nested template directory to copy.

## Simplest way to start

You do not need to complete every document before using the template.

1. Use this repository as a GitHub template or clone it.
2. Start Claude Code in the repository root.
3. Run:

```text
/start-project
```

4. Paste your rough requirements, idea, notes, links, constraints, or existing problem statement.

Example:

```text
/start-project

Here are my initial requirements:

[Paste the project idea or requirements here.]

Read the repository first. Ask me as many focused questions as needed to make
these requirements complete, consistent, and ready for implementation planning.
Do not start coding yet.
```

Claude will then:

1. Read the repository, existing code, and documentation.
2. Summarize what it understands and identify contradictions or important gaps.
3. Interview you through as many question rounds as necessary.
4. Explain options and recommend decisions when you are unsure.
5. Consolidate the requirements and ask you to confirm the final baseline.
6. Update the durable project documents.
7. Create the implementation plan and first verifiable milestone.
8. Stop before coding and show the exact next action.

Questions are adaptive, not a fixed questionnaire. Claude should ask only what is relevant to the project, but it should not stop while material uncertainty remains.

## Optional brief-first workflow

You may instead edit `PROJECT_BRIEF.md` before starting. This is useful when you already have a structured idea or want the initial context stored before the first Claude session.

After editing it, run:

```text
/start-project
```

Claude will still inspect the repository and ask any questions needed to complete the requirements.

## Add to an existing project

Use a separate branch, then run:

```bash
/path/to/claude_skeleton/scripts/install-into-project.sh /path/to/existing-project
```

The installer never overwrites existing framework files. When conflicts exist, it places the incoming framework under `.claude-skeleton-incoming/` for deliberate reconciliation.

After installation, start Claude Code in the existing project and run `/start-project`. Supply the requested change or broader project requirements. Claude will inspect the current implementation before interviewing you.

## Requirements interview behavior

The `/start-project` workflow continues until the requirements are decision-ready.

It covers only applicable areas, such as:

- ultimate objective and measurable success
- users, stakeholders, roles, and journeys
- scope, priorities, constraints, and non-goals
- functional behavior, edge cases, misuse, and failure recovery
- human operations, assignment, concurrency, supervision, and auditability
- data, integrations, security, privacy, compliance, hardware, AI, and automation
- performance, reliability, scalability, cost, deployment, support, and lifecycle
- acceptance criteria and validation evidence

Claude should not repeat answered questions or dump a giant generic questionnaire. It asks focused questions in small batches, prioritizes high-impact decisions, records assumptions, and resolves contradictions explicitly.

Planning begins only after you confirm the consolidated requirements baseline.

## Philosophy

- The ultimate objective outranks the current implementation plan.
- Claude may recommend preserving, revising, expanding, reducing, replacing, or deferring requirements and scope.
- Major direction changes require explicit presentation and approval rather than silent implementation.
- Project mechanisms are applicability-first. Queues, shifts, review stages, AI, hardware, or enterprise controls are introduced only when the operating model needs them.
- Important project memory lives in the repository, not only chat history.
- Failed required validation blocks dependent work.
- Agents and models are selected dynamically from project needs, not a fixed roster.

## Dynamic agent orchestration

This template intentionally includes only two reusable agent contracts:

- `specialist-reviewer`: adopts any domain assigned by the orchestrator and inspects primary evidence.
- `adversarial-verifier`: independently challenges serious findings.

These are not a limit. Claude may use built-in agents, run multiple specialist reviewers with different assignments, define temporary session agents, create additional recurring project agents, or use agent teams when available and justified.

The review panel has no fixed names or maximum. Routine work uses the smallest complete set; high-risk and full-spectrum reviews may use as many independent perspectives as needed.

## Workflows

| Command | Purpose |
|---|---|
| `/start-project` | Interview the user, confirm requirements, and create the implementation plan |
| `/plan-milestone` | Define a verifiable milestone and review strategy |
| `/review-milestone` | Run a dynamic independent panel and enforce the gate |
| `/full-spectrum-validation` | Challenge the whole project and produce a prioritized roadmap |
| `/finish-milestone` | Verify completion and preserve durable context |

## Durable project memory

The default documents are:

- `PROJECT_BRIEF.md`: objective, context, constraints, and confirmed project definition
- `docs/requirements.md`: behavior, actors, operating model, acceptance criteria, assumptions, and open decisions
- `docs/architecture.md`: boundaries, components, data, integrations, deployment, operations, and trade-offs
- `docs/plan.md`: milestones, tasks, dependencies, validation, blockers, and plan changes
- `docs/status.md`: concise current snapshot and next action
- `docs/decisions.md`: durable decision records and revisit triggers
- `docs/todo.md`: unfinished work
- `docs/deferred-actions.md`: work intentionally postponed and reconsideration triggers
- `docs/risks.md`: verified risks, issues, hypotheses, and validation gaps

Claude should consolidate or add focused documents according to project complexity. Empty ceremonial documents and duplicate sources of truth are discouraged.

## Full-spectrum validation output

A comprehensive validation derives its panel from the project, requires reviewers to inspect actual code and documentation, compares credible state-of-the-art alternatives where relevant, and independently challenges Critical and High findings.

Accepted actions are synthesized into exactly:

1. Revise
2. Implement
3. Re-engineer
4. Fix
5. UI/UX

Actions receive P0-P3 priority and a phased roadmap. Material scope changes include both a baseline roadmap and the recommended objective-first roadmap.

## Safety and permissions

`.claude/settings.json` contains only conservative shared deny rules for common secrets. It deliberately avoids broad command allowances and active hooks because safe commands, build tools, and formatting differ by project.

After project setup, review permissions with `/permissions`. Add deterministic hooks only after the stack and commands are known. Keep personal settings in `.claude/settings.local.json` or user-level Claude configuration.

## Context hygiene

Before using `/compact`, ending a long session, or switching sessions, Claude records decisions, status, validation, risks, TODOs, deferred work, and the next action. On resume, it rereads the plan and status. This keeps compaction useful without turning chat history into the project database.

## Framework version

`FRAMEWORK_VERSION` identifies the installed skeleton version. Keep it when copying the framework into projects so future upgrades can compare versions deliberately.

## Validate the skeleton

Run:

```bash
./scripts/validate-template.sh
```

CI runs the same check. For behavioral testing, follow `docs/TEMPLATE_ACCEPTANCE_TEST.md`.

## Why this structure

The template keeps always-loaded instructions concise, persistent rules modular, workflow procedures in skills, shared settings under `.claude/settings.json`, and custom agents limited to reusable contracts. Routine sessions remain lean while deep planning and validation remain available when needed.

## License

MIT
