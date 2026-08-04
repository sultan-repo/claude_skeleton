---
name: finish-milestone
description: Verify milestone completion, preserve durable project memory, and state the next logical action.
disable-model-invocation: true
allowed-tools: Read Grep Glob Bash Write Edit Agent AskUserQuestion
---

# Finish Milestone

1. Review the final diff for unintended changes, regressions, dead code, incomplete migrations, and scope drift.
2. Run required targeted and broader validation according to the milestone risk.
3. Confirm acceptance criteria and identify what remains unverified.
4. Run `/review-milestone` when the milestone or risk requires an independent gate.
5. Ensure confirmed Critical findings are resolved and confirmed High findings are resolved or explicitly accepted by the user with mitigation and a review trigger.
6. Update requirements, architecture, plan, status, decisions, TODOs, deferred actions, and risks as applicable.
7. Ensure every discovered but unimplemented action is recorded, explicitly rejected, or tied to an evidence-gathering step.
8. Mark the milestone complete only when completion conditions are genuinely satisfied.
9. State the next logical action.
