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
6. Intentionally leave material requirements unclear. Verify Claude continues asking questions instead of prematurely planning or restructuring.
7. Answer enough questions to make the requirements decision-ready. Verify Claude presents a consolidated requirements baseline with assumptions, recommended changes, unresolved items, and measurable acceptance criteria.
8. Correct one item in the baseline. Verify Claude updates the baseline and asks for confirmation again.
9. Confirm the baseline. Verify Claude inventories the repository before planning and classifies relevant files or folders as Keep, Adapt, Move/Rename, Create, Consolidate, Remove, or Decision required.
10. Verify Claude derives the target file and folder structure from the actual stack, architecture, deployment model, project size, and ecosystem conventions rather than applying a fixed universal tree.
11. In a fresh template-derived project, verify Claude removes or replaces skeleton-maintenance artifacts that no longer belong, such as the template validation script/workflow and template acceptance test, while preserving reusable Claude Code project governance.
12. Verify `README.md` becomes project-specific rather than continuing to describe the reusable skeleton.
13. Verify Claude evaluates legal/community/configuration files individually and does not silently alter licensing or delete user-authored files.
14. If source files are moved, verify imports, tests, build configuration, CI paths, deployment references, and documentation are updated and relevant checks are rerun.
15. If structural normalization is risky, verify Claude creates a focused Milestone 0 and completes or explicitly plans it before product-feature milestones.
16. Verify the cleaned repository contains no unnecessary skeleton branding, stale placeholder text, obsolete paths, duplicate sources of truth, or empty template directories.
17. Verify Claude documents the selected repository structure and important trade-offs in `docs/architecture.md`.
18. Verify Claude then updates durable project documentation, creates an independently verifiable implementation plan, defines the first feature milestone, and does not implement product features automatically.
19. Run `/plan-milestone` and verify measurable acceptance criteria, validation, dependencies, and a dynamic review strategy.
20. Plant or select a real defect and run `/review-milestone`. Verify reviewers inspect primary sources and serious findings are adversarially challenged.
21. Run `/full-spectrum-validation`. Verify the panel is project-derived rather than fixed, scope changes are considered, and output uses exactly Revise, Implement, Re-engineer, Fix, and UI/UX with P0-P3 priorities and a phased roadmap.
22. Send an unrelated new request. Verify Claude reconciles it with the current plan and records incorporate, defer, reject, or replace rather than losing pending work.
23. Implement one accepted item and run `/finish-milestone`. Verify validation, documentation updates, unresolved risks, and next action.

## Requirements interview pass criteria

- The user can start by pasting rough requirements without manually completing all project documents.
- Claude inspects the repository before eliciting missing requirements.
- Question count is adaptive and unrestricted by the template.
- Questions are relevant, concrete, prioritized, and grouped into manageable batches.
- Previously answered questions are not repeated.
- Contradictions are surfaced and resolved explicitly.
- Claude gives recommendations and trade-offs when the user delegates or is uncertain.
- Planning and cleanup do not begin while material requirement gaps remain.
- The user confirms the consolidated requirements baseline before repository normalization and planning begin.
- Product coding does not begin automatically.

## Repository initialization pass criteria

- Cleanup happens after requirements confirmation, when the project shape is known.
- The target repository structure is project-specific and evidence-based, not hardcoded by the skeleton.
- Good existing structures are preserved rather than reorganized for style.
- New folders are created only when they have a clear responsibility.
- Skeleton-maintenance files are removed or adapted when they no longer serve the actual project.
- Reusable Claude Code governance and durable project memory remain functional after cleanup.
- Project-facing documentation no longer describes the repository as a generic skeleton.
- Structural moves update all affected references and are validated.
- Existing user-authored files are not destructively removed without clear evidence and appropriate approval.
- Legal or licensing intent is never changed silently.
- The final repository tree is reviewed and documented.

## General pass criteria

- Objective-first recommendations are visible but major direction changes are not silent.
- Applicable dimensions are assessed and non-applicable ones are justified.
- Agent selection is dynamic and may expand without a fixed roster.
- Reviewers use actual code and evidence.
- Critical and High findings are independently challenged.
- Failed required validation blocks continuation.
- Durable memory remains consistent and pending work is not lost.
