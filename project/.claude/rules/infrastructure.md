---
paths:
  - "infra/**"
  - "terraform/**"
  - "deploy/**"
  - ".github/workflows/**"
  - "Dockerfile*"
  - "**/*.yml"
  - "**/*.yaml"
---

# Infrastructure Rules

- Prefer declarative, repeatable configuration.
- Preserve least privilege.
- Avoid destructive changes without explicit approval.
- Describe rollout, rollback, and operational impact.
- Do not hard-code credentials or environment-specific secrets.
- Validate configuration using the smallest relevant command first.
