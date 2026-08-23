# Claude Code Reusable Project Skeleton

A project-agnostic Claude Code template for turning rough requirements into a validated project definition, a clean project-specific repository, an implementation plan, durable project memory, dynamic multi-agent review, and milestone delivery.

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
After I confirm the requirements, clean up the skeleton repository and establish
the best file and folder structure for this specific project. Do not start
product coding yet.
```

Claude will then:

1. Read the repository, existing code, and documentation.
2. Summarize what it understands and identify contradictions or important gaps.
3. Interview you through as many question rounds as necessary.
4. Explain options and recommend decisions when you are unsure.
5. Consolidate the requirements and ask you to confirm the final baseline.
6. After confirmation, clean the repository and normalize it into the best structure for the actual project.
7. Remove or replace skeleton-only files, placeholders, validation artifacts, and template branding that no longer belong.
8. Create, move, rename, or consolidate files and folders when the selected stack and architecture justify it.
9. Update the durable project documents.
10. Create the implementation plan and first verifiable milestone.
11. Stop before product coding and show the exact next action.

Questions are adaptive, not a fixed questionnaire. Repository structure is adaptive too: Claude must derive it from the project's actual technology, architecture, deployment model, size, and ecosystem rather than forcing one universal layout.

## Automatic repository cleanup

`/start-project` includes a project-initialization cleanup stage after you confirm the requirements baseline.

Claude inventories the repository and classifies relevant files and folders as:

- **Keep**: already belongs in the project and is correctly located.
- **Adapt**: useful file whose template content must become project-specific.
- **Move/Rename**: useful content that belongs elsewhere in the target structure.
- **Create**: missing structure required by the selected stack or architecture.
- **Consolidate**: duplicate or unnecessarily fragmented content.
- **Remove**: skeleton-maintenance, placeholder, obsolete, duplicate, generated, or irrelevant content.
- **Decision required**: licensing, destructive, ambiguous, or other changes that should not be made silently.

For a repository created from this skeleton, cleanup will normally remove or replace skeleton-only maintenance artifacts after they have served their purpose, such as:

```text
scripts/validate-template.sh
scripts/install-into-project.sh
docs/TEMPLATE_ACCEPTANCE_TEST.md
.github/workflows/template-validation.yml
skeleton-specific README content and placeholder text
```

These are examples, not a blind deletion list. Claude must inspect whether a file was modified or repurposed before removing it.

`README.md` should become the actual project README. Claude evaluates `CONTRIBUTING.md`, `SECURITY.md`, `CODE_OF_CONDUCT.md`, `LICENSE`, `.gitignore`, `.gitattributes`, CI workflows, and repository settings individually and keeps or adapts them only when they fit the project. Licensing or other legal intent is never silently changed.

Claude keeps the reusable Claude Code governance that still provides project value, such as `CLAUDE.md`, applicable `.claude/` rules, skills, agents, settings, and durable project-memory documents.

### Project-specific folder structure

There is intentionally no universal source tree in this skeleton.

After requirements are confirmed, Claude determines whether the project should use, for example, a single application, monorepo, services layout, mobile structure, package/library structure, infrastructure repository, hardware repository, data/ML layout, or another ecosystem-appropriate organization.

Claude should:

- preserve a good existing structure rather than reorganize for style
- follow the chosen framework and ecosystem conventions where practical
- create new folders only when they have a real responsibility
- avoid speculative empty directory trees
- move or rename existing files when clear ownership or architecture requires it
- update imports, tests, build scripts, CI, deployment paths, and documentation after structural moves
- remove directories that become empty or obsolete
- document the final structure and trade-offs in `docs/architecture.md`

If restructuring existing code is risky, Claude treats repository normalization as **Milestone 0**, validates it independently, and completes it before feature implementation.

Cleanup is complete only when the repository looks and behaves like the actual project rather than a partially converted template.

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

For existing repositories, cleanup is conservative: Claude must not delete user-authored files merely because they differ from the skeleton. Existing conventions are preserved unless restructuring has clear value and can be validated safely.

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

Planning begins only after you confirm the consolidated requirements baseline and project initialization cleanup is complete or explicitly represented as Milestone 0.

## Philosophy

- The ultimate objective outranks the current implementation plan.
- Claude may recommend preserving, revising, expanding, reducing, replacing, or deferring requirements and scope.
- Major direction changes require explicit presentation and approval rather than silent implementation.
- Project mechanisms are applicability-first. Queues, shifts, review stages, AI, hardware, or enterprise controls are introduced only when the operating model needs them.
- Repository structure is project-specific, not skeleton-specific.
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
| `/start-project` | Interview the user, confirm requirements, clean and normalize the repository, and create the implementation plan |
| `/plan-milestone` | Define a verifiable milestone and review strategy |
| `/review-milestone` | Run a dynamic independent panel and enforce the gate |
| `/full-spectrum-validation` | Challenge the whole project and produce a prioritized roadmap |
| `/finish-milestone` | Verify completion and preserve durable context |

## Durable project memory

The default documents are:

- `PROJECT_BRIEF.md`: objective, context, constraints, and confirmed project definition
- `docs/requirements.md`: behavior, actors, operating model, acceptance criteria, assumptions, and open decisions
- `docs/architecture.md`: boundaries, components, repository structure, data, integrations, deployment, operations, and trade-offs
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

`FRAMEWORK_VERSION` identifies the installed skeleton version. During project cleanup, Claude may retain it, relocate the lineage information into project metadata, or remove the root marker after recording the installed framework version, provided future upgrade provenance is not lost when it is useful.

## Validate the skeleton

Before the skeleton becomes a real project, run:

```bash
./scripts/validate-template.sh
```

CI runs the same check. For behavioral testing of the reusable skeleton itself, follow `docs/TEMPLATE_ACCEPTANCE_TEST.md`.

These skeleton-maintenance artifacts are expected to disappear from projects that no longer need to validate or distribute the template.

## Why this structure

The template keeps always-loaded instructions concise, persistent rules modular, workflow procedures in skills, shared settings under `.claude/settings.json`, and custom agents limited to reusable contracts. Routine sessions remain lean while deep planning and validation remain available when needed. Once a project is initialized, skeleton-maintenance baggage is intentionally removed so the repository reflects the actual project.

## License

MIT
