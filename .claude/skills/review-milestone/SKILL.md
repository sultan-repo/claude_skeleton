---
name: review-milestone
description: Run an independent risk-based milestone review, verify serious findings, enforce remediation, and decide whether the gate passes.
allowed-tools: Read Grep Glob Bash Write Edit Agent AskUserQuestion
---

# Review Milestone

## Build the review manifest

Read the objective, milestone outcome, acceptance criteria, diff, code, tests, configuration, schemas, infrastructure, UI, operations, decisions, risks, and validation evidence.

List:

- changed systems, files, contracts, data, workflows, and user behavior
- known assumptions, risks, failures, and evidence gaps
- review dimensions that apply and those that do not
- independent specialist perspectives required

## Select the panel dynamically

Select the smallest complete independent panel based on the actual change and risk. There is no fixed roster or preset maximum.

Use multiple instances of `specialist-reviewer`, built-in agents, or additional project agents when useful. Create a new reusable agent only when a specialist role is likely to recur. Assign each reviewer a bounded question and the primary sources it must inspect.

Reviewers must work independently before synthesis and remain read-only unless explicitly given isolated edit ownership.

## Verify and remediate

- Send every Critical and High finding to `adversarial-verifier` or an equally qualified independent challenger.
- Do not treat an unverified serious claim as fact.
- Resolve confirmed Critical findings before passing.
- Resolve confirmed High findings before passing unless the user explicitly accepts the documented risk, mitigation, owner, and review trigger.
- Record credible unresolved claims in a validation backlog with an evidence-gathering action.
- After remediation, rerun affected checks and focused verification. Confirm no regression was introduced.

## Synthesize and close

Resolve contradictions, remove duplicates, separate root causes from symptoms, and reconnect accepted actions to the ultimate objective.

Update requirements, architecture, plan, status, decisions, TODOs, deferred actions, and risks as applicable.

Return: Pass | Pass with explicit user-accepted risk | Fail, with evidence and the next action.
