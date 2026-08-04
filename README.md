# Claude Code Reusable Project Skeleton

A project-agnostic Claude Code template for objective-first planning, durable project memory, dynamic multi-agent review, evidence-based validation, and milestone delivery.

The repository itself is the template. Create a new repository from it, edit one file, and start Claude Code at the root. There is no nested `project/` directory to copy.

## Start a new project

1. Use this repository as a GitHub template or clone it.
2. Edit `PROJECT_BRIEF.md`.
3. Start Claude Code in the repository root.
4. Run:

```text
/bootstrap-project
```

The bootstrap workflow inspects the actual repository, challenges weak assumptions, establishes only useful durable documentation, and proposes the first validated milestone without implementing product features.

## Add to an existing project

Use a separate branch, then run:

```bash
/path/to/claude_skeleton/scripts/install-into-project.sh /path/to/existing-project
```

The installer never overwrites existing framework files. When conflicts exist, it places the incoming framework under `.claude-skeleton-incoming/` for deliberate reconciliation.

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
| `/bootstrap-project` | Establish or refresh the project foundation |
| `/plan-milestone` | Define a verifiable milestone and review strategy |
| `/review-milestone` | Run a dynamic independent panel and enforce the gate |
| `/full-spectrum-validation` | Challenge the whole project and produce a prioritized roadmap |
| `/finish-milestone` | Verify completion and preserve durable context |

## Durable project memory

The default documents are:

- `PROJECT_BRIEF.md`: user-edited objective and context
- `docs/requirements.md`: behavior, actors, operating model, acceptance criteria, and open decisions
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

After bootstrap, review permissions with `/permissions`. Add deterministic hooks only after the stack and commands are known. Keep personal settings in `.claude/settings.local.json` or user-level Claude configuration.

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

Anthropic recommends a concise `CLAUDE.md`, modular rules for persistent instructions, skills for repeatable procedures, project settings under `.claude/settings.json`, and custom subagents only when a repeated specialist configuration provides value. This template follows that separation so routine sessions remain lean while deep workflows are available on demand.

## License

MIT
