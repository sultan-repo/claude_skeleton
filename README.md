# Claude Code Project Skeleton

A reusable, project-agnostic Claude Code framework for building projects with objective-first reasoning, durable context, disciplined execution, specialist subagents, and full-spectrum validation.

The template is intentionally technology-neutral. It does not assume a language, framework, cloud, architecture, operating model, or fixed model name.

## Start here

For a new project, edit only:

```text
PROJECT_BRIEF.md
```

Describe the ultimate outcome, intended users, product idea, success definition, and mandatory constraints. Requirements are allowed to evolve when Claude identifies a materially better way to achieve the objective.

Then open the repository in Claude Code and use:

```text
Read PROJECT_BRIEF.md and the Claude Code framework under project/.
Inspect the repository and bootstrap this project.

Treat the ultimate objective as the primary constraint. Challenge incomplete or weak requirements and recommend justified scope, requirement, workflow, architecture, data, AI, security, operational, or UI/UX changes when they materially improve the outcome.

Create and maintain the durable project documentation, identify material decisions, and prepare the first validated implementation milestone.
```

Claude should inspect real project sources, improve the project definition, raise only material decisions, create durable documentation, and establish an implementation roadmap.

## Recommended workflow

```text
Fork or copy repository
        ↓
Edit PROJECT_BRIEF.md
        ↓
Copy project/ contents into the project root
        ↓
Open in Claude Code
        ↓
Run the bootstrap instruction
        ↓
Review material recommendations and decisions
        ↓
Implement milestone by milestone
        ↓
Run milestone and full-spectrum validation gates
```

## Install into a project

From the target project root, copy:

```bash
cp path-to-skeleton/project/CLAUDE.md ./CLAUDE.md
cp -R path-to-skeleton/project/.claude ./.claude
cp -R path-to-skeleton/project/docs ./docs
cp path-to-skeleton/PROJECT_BRIEF.md ./PROJECT_BRIEF.md
```

For an existing project, perform this on a separate branch. Claude must reconcile the framework with existing instructions and documentation rather than overwrite useful project knowledge.

## What the template provides

- A concise Claude Code entry point in `CLAUDE.md`
- A comprehensive objective-first execution standard
- Persistent project status, TODO, deferred-action, decision, and risk tracking
- Applicability-first assessment across product, users, operations, technology, data, AI, security, privacy, integrations, hardware, reliability, testing, deployment, support, and lifecycle
- Complete human-workflow assessment when applicable
- Capability-based model selection
- Required milestone review using four independent core reviewers
- Additional specialist reviewers selected according to project risk
- Adversarial verification of Critical and High findings
- Full-spectrum multi-agent validation using actual code and documentation
- State-of-the-art comparison where relevant
- Required synthesis into Revise, Implement, Re-engineer, Fix, and UI/UX
- Prioritized baseline and recommended roadmaps when scope changes are advised
- Scoped Claude Code rules and reusable implementation skills

## Repository structure

```text
.
├── PROJECT_BRIEF.md
├── global/
│   └── CLAUDE.md
├── project/
│   ├── CLAUDE.md
│   ├── .claude/
│   │   ├── agents/
│   │   │   ├── product-architect.md
│   │   │   ├── ai-orchestration-reviewer.md
│   │   │   ├── ux-office-reviewer.md
│   │   │   ├── qa-security-reviewer.md
│   │   │   └── adversarial-verifier.md
│   │   ├── rules/
│   │   ├── skills/
│   │   │   ├── review-orchestrator/
│   │   │   └── full-spectrum-validation/
│   │   └── settings.example.json
│   └── docs/
│       ├── PROJECT_EXECUTION_STANDARD.md
│       ├── requirements.md
│       ├── architecture.md
│       ├── decisions.md
│       ├── current-task.md
│       ├── status.md
│       ├── todo.md
│       ├── deferred-actions.md
│       └── risks.md
├── examples/
├── CONTRIBUTING.md
├── SECURITY.md
├── CODE_OF_CONDUCT.md
└── LICENSE
```

## Core philosophy

The ultimate objective outranks the current implementation plan. Claude is expected to act as a project adviser, not only a coding assistant.

It may recommend that scope or requirements be:

- preserved
- revised
- expanded
- reduced
- replaced
- deferred

Major direction changes are recommendations requiring approval. Claude should not silently rewrite the project, but it must not hide better options merely because they fall outside the current scope.

## Durable project memory

Important context must not live only in chat history.

Claude maintains:

- current milestone and next action
- prioritized TODOs
- deferred actions and reconsideration triggers
- decisions and alternatives
- risks and evidence gaps
- requirements and acceptance criteria
- architecture and trade-offs
- actual validation performed

This prevents later prompts from erasing earlier commitments or diverting the project without an explicit decision.

## Required milestone review

Before major milestone completion, architecture or schema changes, high-risk migrations, security-sensitive work, operating-model changes, or production release, Claude invokes:

1. `product-architect`
2. `ai-orchestration-reviewer`
3. `ux-office-reviewer`
4. `qa-security-reviewer`

Each reviewer inspects actual code and project artifacts independently. A reviewer may mark concerns non-applicable only after enough inspection to justify that conclusion. Further specialists are added when needed.

Every Critical and High finding is independently challenged by `adversarial-verifier`. Confirmed Critical and High findings must be resolved before the gate passes, except a confirmed High may be deferred only through explicit user risk acceptance with documented mitigation and a review trigger.

## Full-spectrum validation

Use the `full-spectrum-validation` skill when:

- starting or substantially redefining a project
- completing a major milestone
- changing architecture, data, workflow, or operating model
- preparing for production or a major release
- repeated failures suggest a systemic problem
- comprehensive validation is explicitly requested

The assessment covers all applicable project dimensions, compares credible state-of-the-art alternatives, and requires primary-source inspection rather than coordinator summaries.

The final assessment must produce:

1. Revise
2. Implement
3. Re-engineer
4. Fix
5. UI/UX

It also produces priorities, dependencies, acceptance criteria, validation methods, and a phased roadmap. When scope changes are advised, it provides both a baseline roadmap and a recommended objective-first roadmap.

## Model routing

The framework chooses capability by task rather than hardcoding model names:

- strongest reasoning capability for architecture, difficult debugging, security-sensitive work, migrations, adversarial verification, and synthesis
- balanced coding capability for normal implementation, tests, APIs, UI, and refactoring
- efficient capability for search, classification, formatting, mechanical edits, and summaries

Quality, testing, security, and evidence requirements are never reduced merely to save model cost.

## Global preferences

Optionally merge `global/CLAUDE.md` into:

```bash
~/.claude/CLAUDE.md
```

Project-specific objectives, commands, architecture, and decisions should remain inside the repository.

## Verify instructions

In Claude Code, use:

```text
/memory
```

Use `/model` to inspect models available to your account.

## License

MIT
