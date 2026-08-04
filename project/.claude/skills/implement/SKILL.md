---
name: implement
description: Implement an approved task while preserving objective-first recommendations, durable context, and targeted validation.
---

# Implement

1. Read `docs/current-task.md`, current status, relevant requirements, architecture, decisions, risks, TODOs, and deferred actions.
2. Inspect actual code, tests, configuration, schemas, infrastructure, and existing patterns relevant to the task.
3. Reconcile the task with the ultimate objective and pending project work.
4. State a concise plan for non-trivial work, including acceptance criteria, affected behavior, assumptions, and material risks.
5. Surface justified scope or requirement recommendations separately. Do not suppress them, but do not silently implement major direction changes without approval.
6. Implement the smallest coherent solution supporting the approved direction.
7. Add or update focused tests and failure-path coverage.
8. Run targeted checks first, then broader validation when risk requires it.
9. Review the final diff for regressions and unintended scope.
10. Update requirements, architecture, decisions, status, TODOs, deferred actions, risks, and current task as applicable.
11. Report delivered behavior, changed files, checks run, unresolved evidence gaps, recorded recommendations, and the next action.
12. Avoid unrelated cleanup unless it is necessary for correctness, safety, or the approved design.