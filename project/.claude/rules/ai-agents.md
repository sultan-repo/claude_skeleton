---
paths:
  - "agents/**"
  - "prompts/**"
  - "**/*agent*.*"
  - "**/*prompt*.*"
---

# AI and Agent Rules

- Keep agent roles narrow and measurable.
- Define inputs, outputs, tool permissions, stopping conditions, and failure handling.
- Prefer deterministic code for validation, routing, calculations, and policy enforcement.
- Do not place secrets or sensitive customer data in prompts.
- Use structured outputs when downstream code consumes responses.
- Add evaluation cases for prompt or model behavior changes.
- Prevent unbounded loops, duplicate tool calls, and uncontrolled delegation.
