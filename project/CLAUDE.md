# Project Instructions

## Project
- Name: REPLACE_PROJECT_NAME
- Purpose: REPLACE_WITH_ONE_SENTENCE
- Primary stack: REPLACE_STACK
- Package manager or build tool: REPLACE_TOOL

## Sources of truth
- Requirements: `docs/requirements.md`
- Architecture: `docs/architecture.md`
- Decisions: `docs/decisions.md`
- Current task: `docs/current-task.md`

Read only the documents needed for the current task.

## Commands
Replace these placeholders with real commands:

```bash
# install
REPLACE_INSTALL_COMMAND

# development
REPLACE_DEV_COMMAND

# targeted test
REPLACE_TARGETED_TEST_COMMAND

# full test
REPLACE_FULL_TEST_COMMAND

# lint, typecheck, or build
REPLACE_VALIDATION_COMMANDS
```

## Delivery workflow
1. Inspect before editing.
2. Search for existing patterns and conventions.
3. Identify the minimum affected files.
4. For non-trivial work, provide a plan of no more than five bullets.
5. Implement only the requested scope.
6. Run targeted validation first.
7. Finish with:
   - changed files
   - behavior delivered
   - checks run
   - remaining risks or none

## Quality requirements
- Produce production-quality code.
- Preserve backward compatibility unless explicitly waived.
- Add or update tests for changed behavior.
- Handle errors explicitly.
- Avoid unnecessary dependencies.
- Do not duplicate existing utilities or patterns.
- Do not leave dead code, placeholders, or commented-out implementations.

## Context and token efficiency
- Search before opening files.
- Prefer symbol search and narrow reads.
- Do not scan the entire repository unless the task genuinely requires it.
- Ignore by default: dependencies, generated files, build output, caches, coverage, large logs, and lock files.
- Do not include large file contents in responses.
- Summarize long logs and retain only actionable lines.
- Keep one session focused on one task.
- Use isolated subagents only for bounded work that benefits from separate context.

## Model routing
Use the lowest-cost model that can complete the task reliably.

### Fast economical model
Use for:
- repository discovery
- locating symbols and references
- summarizing logs
- formatting, renames, and simple mechanical edits

### Balanced coding model
Use for:
- normal feature implementation
- tests
- isolated bug fixes
- API and UI work
- limited refactoring

### Strongest reasoning model
Use for:
- architecture
- security-sensitive changes
- difficult root-cause analysis
- concurrency or distributed-system issues
- large migrations
- critical final review

Escalate only when complexity or risk justifies it. After the strongest model determines the approach, delegate routine implementation to the balanced model when practical.


## Scope confirmation

Before making code changes for a new request or a material requirement change, respond with:

### My understanding
Summarize the requested outcome in plain, non-technical language.

### Planned functional changes
List the observable product or user behaviors that will change.

### Out of scope
List nearby behaviors, features, or systems that will not be changed.

### Assumptions
List assumptions caused by incomplete or ambiguous requirements.

### Approval gate
Wait for approval before implementation when:
- multiple reasonable interpretations exist
- existing behavior will materially change
- architecture, public APIs, database schemas, dependencies, deployment behavior, or user workflows may change
- the requested work could reasonably expand beyond the stated scope

Do not implement unrelated improvements discovered during the task. Report them separately as optional recommendations.

## Subagent coding workflow

The primary coding agent owns the approved scope, implementation, integration, validation, and final delivery.

Use subagents only when delegation provides clear value through specialist expertise, independent review, parallel investigation, or context isolation.

### Before implementation
1. Confirm the requested outcome in functional, non-technical language.
2. Define the approved scope, out-of-scope items, assumptions, and acceptance criteria.
3. Inspect the repository using targeted search.
4. Decide whether subagent delegation is justified.

Do not use subagents for simple, isolated changes that the primary agent can safely complete directly.

### Appropriate subagent use
Use subagents for:
- bounded repository exploration
- independent root-cause investigation
- architecture or security analysis
- reviewing a clearly defined area
- validating tests, UX, APIs, data, infrastructure, or AI orchestration
- summarizing large logs or unfamiliar components
- parallel analysis of independent concerns

### Inappropriate subagent use
Do not use subagents for:
- trivial edits
- work with unclear scope
- multiple agents editing the same files
- delegating the entire task without clear ownership
- repeating analysis already completed by another agent
- speculative improvements outside the approved scope

### Delegation contract
Every delegated task must specify:
- objective
- approved scope
- relevant files or components
- expected output
- prohibited changes
- required evidence
- whether the agent may edit files
- completion criteria

Subagents must return concise findings rather than full repository contents.

### Editing ownership
By default, specialist and review subagents are read-only.

A subagent may edit files only when:
- the work is isolated
- file ownership does not overlap with another active agent
- expected changes are clearly defined
- the primary agent will review and integrate the result

### Parallel execution
Run subagents in parallel only when their work is independent.

Do not run agents in parallel when one agent's output is required by another or when they may modify overlapping code.

### Scope control
Subagents must review against approved requirements and acceptance criteria.

They must not expand scope or implement optional improvements automatically. Report out-of-scope improvements separately as recommendations.

## Milestone review gate

Run a milestone review before:
- merging a major feature
- changing architecture
- changing a public API or database schema
- releasing to production
- completing security-sensitive work
- completing a large migration or high-risk refactor

The review orchestrator must first create a concise review manifest containing:
- approved scope
- changed areas and files
- risk indicators
- required reviewers
- skipped reviewers and reasons

Select only relevant reviewers.

### Core reviewers
- Product Architect: requirements, scope, architecture, maintainability
- AI Orchestration Reviewer: agents, prompts, tools, model routing, context, token efficiency
- UX Reviewer: usability, accessibility, consistency, error states, user behavior
- QA and Security Reviewer: correctness, regressions, tests, security, privacy, reliability

### Optional specialist reviewers
- Code Quality Reviewer
- Performance Reviewer
- API and Integration Reviewer
- Data and Migration Reviewer
- Infrastructure and DevOps Reviewer
- Documentation Reviewer
- Risk Reviewer
- Release Reviewer

Each reviewer must return:
1. Overall assessment
2. Critical findings
3. High findings
4. Medium recommendations
5. Low suggestions
6. Approval status: Approve, Approve with Conditions, or Reject

Resolution rules:
- Resolve all Critical findings.
- Resolve High findings unless explicitly deferred with documented justification.
- Medium and Low findings do not block progress.
- Re-run only relevant checks after remediation.
- Verify that fixes introduced no regressions.
- Update affected requirements, architecture, decision, operational, or release documentation.
- Continue only when all blocking findings are resolved.

### Reviewer model classes
Assign model capability, not a fixed model name.

- Strategic: architecture, difficult analysis, security-critical review
- Balanced: normal engineering and specialist review
- Fast: discovery, summaries, documentation, and mechanical checks

Use the lowest-cost capable model. Reserve the strongest reasoning model for high-risk or complex work.

## Boundaries
- Ask a question only when missing information would materially change the implementation or create risk.
- Otherwise choose the safest reasonable assumption and record it.
- Do not change architecture, schemas, public APIs, dependencies, or deployment behavior without stating the impact first.
