---
name: finish-task
description: Validate completed work, preserve durable project memory, and report the next action.
---

# Finish Task

1. Review the final diff for unintended changes, regressions, dead code, incomplete migrations, and scope drift.
2. Run targeted tests and required lint, type, build, security, migration, workflow, or deployment checks according to risk.
3. Run broader validation when justified by the affected surface.
4. Confirm acceptance criteria and identify what remains unverified.
5. Resolve confirmed Critical and High findings, or document explicit user-approved risk acceptance.
6. Update requirements, architecture, decisions, current status, TODOs, deferred actions, risks, and current task as applicable.
7. Ensure every discovered but unimplemented action is either in the TODO register, deferred-action register, validation backlog, or explicitly rejected with reasoning.
8. Record the next logical action so later prompts do not erase the project sequence.
9. Return:
   - objective and behavior delivered
   - changed files
   - decisions or requirement changes
   - checks and evidence
   - unresolved risks and validation gaps
   - TODOs and deferred actions recorded
   - next action

Never mark work complete merely because code was written.