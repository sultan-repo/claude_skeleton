---
name: review-orchestrator
description: Select relevant reviewers, create a review manifest, coordinate independent reviews, and enforce milestone gates.
---

# Review Orchestrator

1. Read the approved scope and acceptance criteria.
2. Inspect the diff and identify changed systems, files, contracts, data, infrastructure, and user behavior.
3. Assess security, privacy, data, API, architecture, performance, UX, AI, release, and rollback risks.
4. Create a review manifest with scope, changed areas, risks, selected reviewers, and skipped reviewers with reasons.
5. Run selected reviewers independently and in parallel only when appropriate.
6. Keep reviewers read-only unless an isolated edit is explicitly assigned.
7. Consolidate duplicate findings.
8. Require severity, evidence, impact, and recommended action for each finding.
9. Resolve all Critical and non-deferred High findings.
10. Re-run relevant checks and request focused verification.
11. Update affected documentation.
12. Return: Pass, Pass with documented deferrals, or Fail.
