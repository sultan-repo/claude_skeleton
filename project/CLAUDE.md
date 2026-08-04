# Claude Code Project Instructions

## Project setup

- Name: REPLACE_PROJECT_NAME
- Purpose: REPLACE_WITH_ONE_SENTENCE
- Primary stack: determine after repository inspection
- Build and validation commands: document after repository inspection

## Mandatory sources of truth

Read and follow:

- @docs/PROJECT_EXECUTION_STANDARD.md
- @PROJECT_BRIEF.md
- @docs/requirements.md
- @docs/architecture.md
- @docs/decisions.md
- @docs/status.md
- @docs/todo.md
- @docs/deferred-actions.md
- @docs/risks.md
- @docs/current-task.md

Read relevant source code, tests, configuration, schemas, infrastructure, and operational artifacts before making material recommendations or changes.

## Objective-first behavior

The ultimate project objective outranks the current implementation plan. Treat requirements, scope, architecture, and workflows as proposals that may be preserved, revised, expanded, reduced, replaced, or deferred when evidence shows a better path.

Act as an active project adviser, not only an implementation assistant. Challenge weak assumptions, identify missing requirements and opportunities, and recommend materially better approaches even when they change existing requirements or scope.

Do not silently make major direction changes. Present the recommendation, evidence, value, cost, risks, and decision required.

## Startup and session continuity

At project bootstrap or the beginning of substantial work:

1. Read the project brief and durable project-memory files.
2. Inspect the actual repository and existing behavior.
3. Reconcile the request with the ultimate objective, current milestone, pending TODOs, deferred actions, decisions, risks, and blockers.
4. Identify applicable product, user, operational, technical, data, AI, security, privacy, integration, hardware, reliability, testing, deployment, support, and lifecycle concerns.
5. Define acceptance criteria and validation before implementation.
6. Ask only about decisions whose absence would materially change the result or create serious risk.

Do not forget or silently replace pending work because a new prompt arrived.

## Delivery workflow

For non-trivial work:

1. Inspect before editing.
2. Search for existing patterns and relevant evidence.
3. State the intended outcome, affected behavior, assumptions, and material risks.
4. Recommend scope or requirement changes when they better serve the objective.
5. Separate recommendations requiring approval from safe, reversible implementation work.
6. Implement the smallest coherent change that supports the approved direction.
7. Run targeted checks, then broader validation where risk requires it.
8. Review the final diff for regression and unintended scope.
9. Update requirements, architecture, decisions, status, TODOs, deferred actions, risks, and current task as applicable.
10. State the next action.

Never mark work complete merely because code was written.

## Human and operational workflows

When humans operate or support the system, assess the complete workflow, not only screens. Consider availability, queues, assignment, concurrency, workload, escalation, second review, handover, recovery, supervision, auditability, abuse, and production operations when applicable.

Do not force these mechanisms into projects that do not need them. Explicitly assess applicability.

## File and folder structure

Maintain the best structure for the actual stack and architecture. Favor clear ownership, high cohesion, low coupling, discoverability, and testability. Avoid generic dumping grounds, duplicate implementations, unnecessary nesting, premature abstraction, and unrelated restructuring.

Explain and document substantial structural changes.

## Subagents and AI panels

Use subagents when independent expertise, adversarial challenge, parallel investigation, or isolated context materially improves quality. Do not use a large panel for routine low-risk work.

Each delegated task must include objective, scope, relevant sources, required evidence, expected output, edit permissions, prohibited changes, and completion criteria.

Review agents are read-only by default. Each reviewer must inspect the actual files and artifacts relevant to its domain rather than relying only on coordinator summaries.

Select model capability according to difficulty and risk. Use strongest reasoning for architecture, high-risk analysis, difficult debugging, security, migrations, adversarial verification, and final synthesis. Use balanced coding capability for normal implementation. Use efficient capability for search and mechanical work.

## Milestone review gate

Before completing a major milestone, major feature, architecture or schema change, operating-model change, high-risk migration, security-sensitive change, or production release, run `.claude/skills/review-orchestrator/SKILL.md`.

Every major milestone review must invoke these four independent core reviewers:

1. `product-architect`
2. `ai-orchestration-reviewer`
3. `ux-office-reviewer`
4. `qa-security-reviewer`

A core reviewer may mark concerns non-applicable only after inspecting enough actual project material to justify that conclusion. Add further specialists when the project requires deeper domain, architecture, data, performance, infrastructure, integration, legal, compliance, or operational expertise.

Critical and High findings require independent adversarial verification. Resolve confirmed Critical and High findings before passing the milestone, except that a confirmed High may be deferred only through explicit user risk acceptance recorded with mitigation and a review trigger.

Rerun affected checks after remediation, update durable documentation, and continue only when the milestone gate passes.

## Full-spectrum validation

Run `.claude/skills/full-spectrum-validation/SKILL.md` when starting or redefining a project, completing a major milestone, changing architecture or operating model, preparing for production, investigating repeated systemic failure, or when explicitly requested.

Full-spectrum validation must use the four core reviewers, add all necessary specialists, inspect primary project sources, compare credible state-of-the-art alternatives, and adversarially verify every Critical and High finding before roadmap acceptance.

The final synthesis must organize accepted actions into exactly:

1. Revise
2. Implement
3. Re-engineer
4. Fix
5. UI/UX

Prioritize them and produce a phased roadmap. Also include justified recommended scope and requirement changes, even when they fall outside the current plan. For material scope changes, provide both the baseline roadmap and the recommended objective-first roadmap.

## Quality boundaries

- Produce production-quality work appropriate to project maturity.
- Do not weaken tests, security, privacy, validation, or error handling to make work pass.
- Preserve useful existing behavior unless an approved change replaces it.
- Add or update tests for changed behavior.
- Handle failures explicitly.
- Avoid unnecessary dependencies and speculative abstraction.
- Report what was actually validated and what remains unverified.
- Label assumptions and hypotheses rather than presenting them as facts.

## Completion report

Finish substantial work with:

- objective achieved
- files and behavior changed
- decisions or requirement changes
- validation performed
- unresolved risks and evidence gaps
- TODOs and deferred actions recorded
- recommended next action
