---
name: start-project
description: Turn rough requirements into a confirmed project definition through adaptive interviewing, then clean and normalize the repository and create an implementation plan without implementing product features.
allowed-tools: Read Grep Glob Bash Write Edit Agent AskUserQuestion
---

# Start Project

This is the primary user entry point for a new or existing project.

The user may provide requirements directly in the conversation, place them in `PROJECT_BRIEF.md`, or do both. Do not require the user to complete every template file before starting.

Do not implement product features during this workflow. Repository cleanup, project-specific structure normalization, documentation initialization, and non-behavioral setup are allowed after the requirements baseline is confirmed.

## 1. Inspect before interviewing

1. Read the user's supplied requirements, `PROJECT_BRIEF.md`, `CLAUDE.md`, and `docs/PROJECT_EXECUTION_STANDARD.md`.
2. Inspect the actual repository, source code, tests, configuration, schemas, infrastructure, UI, and existing documentation.
3. Summarize what is already known, what appears contradictory, and which unknowns could materially affect the objective, scope, behavior, architecture, data, security, operations, cost, deployment, repository structure, or acceptance criteria.

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

Do not begin repository normalization or implementation planning until the requirements are sufficiently complete.

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

## 4. Normalize and clean the repository after confirmation

After the user confirms the requirements baseline, turn the repository from a reusable skeleton into the actual project repository before product implementation begins.

### 4.1 Derive the target structure

Inspect the confirmed requirements and actual technology choices. Determine the most appropriate repository structure for the project's language, framework, architecture, deployment model, project size, package boundaries, test strategy, and ecosystem conventions.

Do not force a universal folder tree. The correct structure may be a single application, monorepo, services repository, mobile application, library, infrastructure repository, hardware project, data project, or another form.

Prefer preserving a good existing structure. Restructure only when the current layout creates real problems or the skeleton layout does not match the project.

The target structure should optimize for:

- clear ownership and responsibility
- high cohesion and low coupling
- discoverable naming
- separation of domain, application, infrastructure, presentation, data, integration, or equivalent concerns when applicable
- testability and maintainability
- framework and ecosystem conventions
- build, packaging, deployment, and operational simplicity

### 4.2 Classify repository contents

Inventory repository files and directories and classify each relevant item as:

- **Keep:** already belongs in the project and is correctly located.
- **Adapt:** useful framework or project file whose content must become project-specific.
- **Move/Rename:** belongs in the project but should live elsewhere in the derived structure.
- **Create:** missing file or directory required by the chosen project structure.
- **Consolidate:** duplicate or unnecessarily fragmented documentation or configuration.
- **Remove:** template-maintenance, placeholder, obsolete, duplicate, generated, or clearly irrelevant content.
- **Decision required:** legal, licensing, destructive, ambiguous, or high-impact items that should not be changed silently.

Do not delete or rewrite user-authored files merely because they differ from the skeleton. For an existing project, preserve existing conventions unless a change has clear objective-serving value.

### 4.3 Remove skeleton-only baggage

For repositories created directly from this skeleton, normally remove or replace template-maintenance artifacts after their purpose is complete, provided they have not been repurposed. Examples include:

- `scripts/validate-template.sh`
- `scripts/install-into-project.sh`
- `docs/TEMPLATE_ACCEPTANCE_TEST.md`
- `.github/workflows/template-validation.yml`
- skeleton-specific README content, badges, examples, placeholder text, and setup instructions
- empty directories and unused placeholder files

Treat `README.md` as an **Adapt** item: rewrite it into the actual project's README with the project objective, setup, verified commands, architecture overview, development workflow, and links to authoritative documentation as appropriate.

Evaluate `CONTRIBUTING.md`, `SECURITY.md`, `CODE_OF_CONDUCT.md`, `LICENSE`, `.gitignore`, `.gitattributes`, CI workflows, and repository settings individually. Keep and adapt them only when they fit the project. Never silently change licensing or other legal terms when intent is unclear.

Keep Claude Code runtime governance that continues to provide project value, including `CLAUDE.md`, applicable `.claude/` rules, skills, agents, settings, and durable project memory. Remove or consolidate Claude framework pieces only when they are genuinely unnecessary and remaining workflows do not reference them.

### 4.4 Apply project-specific structure

Create, move, rename, consolidate, or remove files and folders needed to establish the target project structure.

When restructuring existing source code or configuration:

- update imports, package paths, build configuration, tests, scripts, CI paths, deployment references, and documentation affected by the move
- preserve behavior unless the confirmed requirements explicitly change it
- avoid speculative empty folder hierarchies
- remove directories that become empty or obsolete
- keep generated artifacts and dependencies out of source control unless the project specifically requires them

If a structural change is too risky to perform safely as setup, record it as **Milestone 0: Repository normalization**, define acceptance criteria and validation, complete it before feature implementation, and do not mix it with unrelated feature work.

### 4.5 Validate cleanup

Before considering initialization complete:

- inspect the final repository tree
- review the git diff
- search for obsolete skeleton branding, template placeholders, stale paths, duplicate sources of truth, and unused files
- run the relevant existing build, test, lint, type, configuration, or smoke checks when structural changes could affect behavior
- verify Claude Code instruction and skill references still resolve
- document the final structure and important trade-offs in `docs/architecture.md`
- record any intentionally retained template/framework artifact and why it remains

Cleanup is complete only when the repository looks and behaves like the actual project rather than a partially converted template.

## 5. Create durable project memory and implementation plan

After requirements confirmation and repository normalization:

1. Update `PROJECT_BRIEF.md` and the applicable durable documents.
2. Create or update `docs/requirements.md`, `docs/architecture.md`, `docs/decisions.md`, `docs/risks.md`, `docs/todo.md`, and `docs/deferred-actions.md` as needed.
3. Create or update `docs/plan.md` with independently verifiable milestones, dependencies, acceptance criteria, validation procedures, blockers, and sequencing.
4. Define the first implementation milestone and update `docs/status.md` with the next action.
5. Identify any decisions that still require approval before implementation.

Do not begin product coding automatically. Finish by presenting the confirmed requirements, cleanup and repository-structure changes, implementation plan, first milestone, and exact next action.