# Claude Code Project Template

A reusable, project-agnostic template for configuring Claude Code with clear instructions, scoped rules, reusable skills, and token-efficient workflows.

This repository is designed to work for software projects of any size or technology stack. It does not assume a specific language, framework, architecture, or model name.

## Start Here

For most projects, edit only:

```text
PROJECT_BRIEF.md
```

Add your objective, product idea, and mandatory constraints.

Then open the repository in Claude Code and paste:

```text
Read `PROJECT_BRIEF.md`, inspect the repository, and bootstrap the project using the existing Claude Code framework.

Improve weak or incomplete requirements when a better approach supports the objective.

Ask me only about material decisions that could significantly affect scope, behavior, architecture, APIs, data, security, dependencies, or deployment.

Proceed autonomously with low-risk and reversible decisions.
```

Claude should then improve the project definition, identify only material questions, and adapt the requirements, architecture, instructions, rules, skills, agents, and optional hooks to the actual project.

### Workflow

```text
Fork or copy repository
        ↓
Edit PROJECT_BRIEF.md
        ↓
Open in Claude Code
        ↓
Paste the bootstrap instruction
        ↓
Review material questions
        ↓
Begin implementation
```

### Existing projects

Copy the framework into a separate branch of the existing project, add `PROJECT_BRIEF.md`, and use the same bootstrap instruction.

Claude must merge with existing instructions and documentation rather than overwrite them.

## What this template includes

- Global Claude Code preferences
- Project-level `CLAUDE.md`
- Scoped rules for common engineering areas
- Reusable skills for architecture, implementation, debugging, review, and task completion
- Documentation templates for requirements, architecture, decisions, and current work
- Example permission settings
- Public repository files including license, contribution guide, security policy, and code of conduct

## Repository structure

```text
.
├── PROJECT_BRIEF.md        # Edit this first
├── global/
│   └── CLAUDE.md
├── project/
│   ├── CLAUDE.md
│   ├── .claude/
│   │   ├── rules/
│   │   ├── skills/
│   │   └── settings.example.json
│   └── docs/
├── examples/
│   └── calculator/
├── CONTRIBUTING.md
├── SECURITY.md
├── CODE_OF_CONDUCT.md
├── LICENSE
└── README.md
```

## Quick start

### 1. Use the global preferences

Copy the global file to your Claude Code configuration:

```bash
mkdir -p ~/.claude
cp global/CLAUDE.md ~/.claude/CLAUDE.md
```

If a global file already exists, merge the contents manually.

### 2. Add the project template

From your project root:

```bash
cp project/CLAUDE.md ./CLAUDE.md
cp -R project/.claude ./.claude
cp -R project/docs ./docs
```

Then replace the placeholders in:

- `CLAUDE.md`
- `docs/requirements.md`
- `docs/architecture.md`
- `docs/current-task.md`

### 3. Verify loaded instructions

In Claude Code:

```text
/memory
```

Use `/model` to view the models available to your account.

## Where project information belongs

Use `PROJECT_BRIEF.md` for your initial project idea.

Claude then converts it into the appropriate project documentation:

- `PROJECT_BRIEF.md` for the initial objective, idea, and mandatory constraints
- `CLAUDE.md` for how Claude should work
- `docs/requirements.md` for approved product behavior and acceptance criteria
- `docs/architecture.md` for the approved system design
- `docs/current-task.md` for the active implementation task
- `docs/decisions.md` or `docs/adr/` for important technical decisions

Do not place detailed feature requirements in `CLAUDE.md`.

## Model routing

This template uses capability-based model routing rather than fixed model names.

Use:

- the strongest reasoning model for architecture, difficult debugging, security-critical work, and major migrations
- the balanced coding model for normal implementation, tests, APIs, UI work, and refactoring
- the fastest economical model for repository search, summaries, formatting, and mechanical edits

This keeps the template usable even when model names or account availability change.


## Scope alignment

Before implementation, the coding agent confirms what it understood, the functional changes expected, what is out of scope, and assumptions that may affect delivery.

Approval is required when a request is ambiguous or materially changes behavior, architecture, public APIs, schemas, dependencies, deployment, or user workflows.

## Subagent strategy

The primary coding agent owns implementation and integration. Subagents are used only for bounded investigation or independent specialist review. Reviewers are read-only by default, only relevant reviewers are selected, and parallel work is limited to independent concerns.

Critical and High review findings must be resolved or formally deferred before a milestone passes.

## Token-efficiency principles

- Search before reading files.
- Read only relevant sections.
- Keep each session focused on one task.
- Use scoped rules rather than one oversized instruction file.
- Run targeted tests before full test suites.
- Avoid generated files, dependencies, build output, and large logs unless required.
- Prefer minimal diffs over full-file rewrites.
- Store stable decisions in documentation rather than repeating them in prompts.

## Example

See [`examples/calculator`](examples/calculator) for a minimal example showing where requirements, architecture, and task instructions belong.

## Compatibility

This template is intentionally generic. Review paths, commands, permissions, and workflow rules before using it in a real project.

## License

MIT
