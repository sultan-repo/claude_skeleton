---
name: review-orchestrator
description: Coordinate evidence-based milestone reviews, required core reviewers, adversarial verification, remediation, and documentation updates.
---

# Milestone Review Orchestrator

Use before completing a major milestone, merging a major feature, changing architecture, public APIs, schemas, data, operating workflows, AI behavior, infrastructure, or preparing a production release.

## 1. Establish review context

Read the ultimate objective, requirements, architecture, decisions, status, TODOs, deferred actions, risks, current task, actual diff, and relevant source code, tests, configuration, schemas, infrastructure, UI, and operational artifacts.

Create a review manifest containing:

- ultimate objective and milestone outcome
- acceptance criteria
- changed files, systems, contracts, data, workflows, and user behavior
- known assumptions, risks, and evidence gaps
- required core reviewers
- additional specialists and reasons

## 2. Run the required core panel

Invoke these four independent reviewers for every major milestone review:

1. `product-architect`
2. `ai-orchestration-reviewer`
3. `ux-office-reviewer`
4. `qa-security-reviewer`

A reviewer may mark parts of its domain non-applicable, but must inspect enough actual project material to justify that conclusion. Do not omit a core reviewer merely because the coordinating agent expects no findings.

Add domain, data, performance, infrastructure, compliance, integration, or other specialists when project risk requires them.

## 3. Independent primary-source review

Assign each reviewer a bounded domain and required primary sources. Reviewers must inspect actual files and artifacts, not only summaries. Run reviewers independently before synthesis and in parallel only when their work does not depend on another reviewer or modify overlapping files.

Require every material finding to include severity, evidence confidence, concrete evidence, impact, root cause, recommended action, alternatives, acceptance criteria, and validation method.

## 4. Adversarial verification

Send every Critical and High finding to `adversarial-verifier` or an equally qualified independent reviewer.

The verifier must attempt to reproduce, disprove, reclassify, or qualify the finding and assess whether the proposed remedy addresses the root cause.

Do not treat an unverified serious claim as fact or place it into the accepted roadmap without qualification.

## 5. Resolve and rerun

- Resolve all confirmed Critical findings before the milestone can pass.
- Resolve all confirmed High findings before the milestone can pass unless the user explicitly accepts the risk and the decision, rationale, owner, mitigation, and review trigger are documented.
- Record credible unresolved findings in the validation backlog with evidence-gathering actions.
- Rerun the affected tests, checks, workflows, and focused reviewer verification after remediation.
- Confirm that fixes introduced no regressions.

## 6. Synthesize and update memory

Resolve reviewer contradictions rather than listing opinions. Remove duplicates, distinguish root causes from symptoms, and reconnect accepted recommendations to the ultimate objective.

Update requirements, architecture, decisions, status, TODOs, deferred actions, risks, and current task as applicable.

Return:

- overall assessment
- evidence coverage and gaps
- confirmed findings by severity
- rejected or modified findings
- remediation completed
- accepted risks or deferrals
- checks rerun and results
- required scope or requirement recommendations
- milestone result: Pass | Pass with explicit user-accepted risk | Fail
- next action
