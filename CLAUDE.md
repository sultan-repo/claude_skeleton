# Claude Code Project Instructions

This repository uses an objective-first, evidence-based delivery framework.

## First principles

- The project's ultimate objective outranks the current implementation plan.
- Treat requirements, scope, architecture, workflows, and implementation as proposals that may be preserved, revised, expanded, reduced, replaced, or deferred when evidence supports a better path.
- Challenge weak assumptions. Distinguish facts, assumptions, recommendations, risks, and unresolved questions.
- Prefer the simplest design that reliably achieves the objective. Technical elegance alone is not justification.
- Do not silently make major direction changes. Present the recommendation, evidence, value, cost, risks, and decision required.

## Before significant work

1. Read `PROJECT_BRIEF.md`, `docs/status.md`, `docs/plan.md`, relevant decisions, risks, TODOs, and deferred actions.
2. Inspect the actual code, tests, configuration, schemas, infrastructure, UI, and existing behavior relevant to the task.
3. Reconcile the request with the ultimate objective, current milestone, pending work, and prior decisions.
4. Define measurable acceptance criteria and validation before implementation.
5. Surface only material decisions that require user approval. Proceed autonomously with safe, reversible work.

For the complete standard, read `docs/PROJECT_EXECUTION_STANDARD.md` when bootstrapping, planning significant work, reviewing a milestone, or resolving conflicts.

## Execution

- Break large work into independently implementable and verifiable milestones.
- Implement the smallest coherent change that supports the approved direction.
- Run targeted validation first, then broader checks according to risk.
- Failed required validation blocks dependent work until fixed, the approach changes and passes, or an appropriate risk is explicitly accepted by the user.
- Review the final diff for regressions, unintended scope, and incomplete documentation.
- Never mark work complete merely because code was written.

## Dynamic agent and model orchestration

- Use subagents when independent expertise, adversarial challenge, parallel investigation, or context isolation materially improves quality.
- Select review perspectives from the actual project and task. Do not limit the panel to a preset roster or maximum count.
- Use the smallest complete panel for routine work. Use as many independent specialists as justified for high-risk or full-spectrum validation.
- Every reviewer must inspect relevant primary sources rather than rely only on coordinator summaries.
- Reusable project agents are templates, not the limit of available roles. Claude may use built-in agents, multiple instances of the generic specialist reviewer, or create additional project agents when a recurring specialist role provides durable value.
- Route work by capability: strongest reasoning for architecture, high-risk decisions, security, difficult debugging, adversarial verification, and synthesis; balanced capability for implementation; efficient capability for search and mechanical work.
- Never lower testing, review, privacy, or safety standards to save model cost.

## Durable project memory

Keep authoritative project context in repository documentation, not only chat history. Update the applicable files after substantial work:

- `docs/requirements.md`
- `docs/architecture.md`
- `docs/plan.md`
- `docs/status.md`
- `docs/decisions.md`
- `docs/todo.md`
- `docs/deferred-actions.md`
- `docs/risks.md`

Create additional focused documents only when complexity justifies them. Avoid duplicate sources of truth and ceremonial files.

## Reusable workflows

- `/bootstrap-project`: inspect and establish the project foundation without implementing features.
- `/plan-milestone`: define a milestone, dependencies, acceptance criteria, validation, and review needs.
- `/review-milestone`: run an independent, risk-based review panel and enforce the milestone gate.
- `/full-spectrum-validation`: perform comprehensive objective-first validation and produce a prioritized roadmap.
- `/finish-milestone`: verify completion, update durable memory, and state the next action.

## Completion report

For substantial work, report:

- objective and behavior delivered
- files and decisions changed
- validation performed and evidence
- unresolved risks or evidence gaps
- TODOs and deferred actions recorded
- recommended next action
