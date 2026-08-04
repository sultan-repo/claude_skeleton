# Template Acceptance Test

Run this test on a disposable copy of a small real project before declaring a major template revision stable.

## Structural checks

Run:

```bash
./scripts/validate-template.sh
```

It must pass without broken imports, invalid JSON, duplicate agent names, missing skills, or legacy nested-template paths.

## Behavioral test

1. Edit `PROJECT_BRIEF.md` with a real project objective.
2. Start Claude Code at the repository root.
3. Run `/bootstrap-project` and verify Claude inspects actual sources, challenges weak requirements, updates durable documents, defines a milestone, and does not implement product features.
4. Run `/plan-milestone` and verify measurable acceptance criteria, validation, dependencies, and a dynamic review strategy.
5. Plant or select a real defect and run `/review-milestone`. Verify reviewers inspect primary sources and serious findings are adversarially challenged.
6. Run `/full-spectrum-validation`. Verify the panel is project-derived rather than fixed, scope changes are considered, and output uses exactly Revise, Implement, Re-engineer, Fix, and UI/UX with P0-P3 priorities and a phased roadmap.
7. Send an unrelated new request. Verify Claude reconciles it with the current plan and records incorporate, defer, reject, or replace rather than losing pending work.
8. Implement one accepted item and run `/finish-milestone`. Verify validation, documentation updates, unresolved risks, and next action.

## Pass criteria

- Objective-first recommendations are visible but major direction changes are not silent.
- Applicable dimensions are assessed and non-applicable ones are justified.
- Agent selection is dynamic and may expand without a fixed roster.
- Reviewers use actual code and evidence.
- Critical and High findings are independently challenged.
- Failed required validation blocks continuation.
- Durable memory remains consistent and pending work is not lost.
