# Template Acceptance Test

Run this test on a disposable copy of a small real project before declaring a major template revision stable.

## Structural checks

Run:

```bash
./scripts/validate-template.sh
```

It must pass without broken imports, invalid JSON, duplicate agent names, missing skills, or legacy nested-template paths.

## Behavioral test

1. Start with an incomplete project idea. Do not fully populate `PROJECT_BRIEF.md`.
2. Start Claude Code at the repository root and run `/start-project` with the rough requirements pasted into the conversation.
3. Verify Claude inspects actual repository sources before asking questions.
4. Verify Claude summarizes what it knows, identifies contradictions and material gaps, and asks focused questions in multiple adaptive rounds when needed.
5. Verify Claude does not repeat answered questions, does not dump a generic questionnaire, and explains options and recommendations when the user is unsure.
6. Intentionally leave material requirements unclear. Verify Claude continues asking questions instead of prematurely planning.
7. Answer enough questions to make the requirements decision-ready. Verify Claude presents a consolidated requirements baseline with assumptions, recommended changes, unresolved items, and measurable acceptance criteria.
8. Correct one item in the baseline. Verify Claude updates the baseline and asks for confirmation again.
9. Confirm the baseline. Verify Claude updates durable project documentation, creates an independently verifiable implementation plan, defines the first milestone, and does not implement product features.
10. Run `/plan-milestone` and verify measurable acceptance criteria, validation, dependencies, and a dynamic review strategy.
11. Plant or select a real defect and run `/review-milestone`. Verify reviewers inspect primary sources and serious findings are adversarially challenged.
12. Run `/full-spectrum-validation`. Verify the panel is project-derived rather than fixed, scope changes are considered, and output uses exactly Revise, Implement, Re-engineer, Fix, and UI/UX with P0-P3 priorities and a phased roadmap.
13. Send an unrelated new request. Verify Claude reconciles it with the current plan and records incorporate, defer, reject, or replace rather than losing pending work.
14. Implement one accepted item and run `/finish-milestone`. Verify validation, documentation updates, unresolved risks, and next action.

## Requirements interview pass criteria

- The user can start by pasting rough requirements without manually completing all project documents.
- Claude inspects the repository before eliciting missing requirements.
- Question count is adaptive and unrestricted by the template.
- Questions are relevant, concrete, prioritized, and grouped into manageable batches.
- Previously answered questions are not repeated.
- Contradictions are surfaced and resolved explicitly.
- Claude gives recommendations and trade-offs when the user delegates or is uncertain.
- Planning does not begin while material requirement gaps remain.
- The user confirms the consolidated requirements baseline before planning begins.
- Confirmation produces updated requirements, architecture, decisions, risks, TODOs, deferred actions, plan, status, first milestone, and next action as applicable.
- Product coding does not begin automatically.

## General pass criteria

- Objective-first recommendations are visible but major direction changes are not silent.
- Applicable dimensions are assessed and non-applicable ones are justified.
- Agent selection is dynamic and may expand without a fixed roster.
- Reviewers use actual code and evidence.
- Critical and High findings are independently challenged.
- Failed required validation blocks continuation.
- Durable memory remains consistent and pending work is not lost.
