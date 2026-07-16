---
paths:
  - "migrations/**"
  - "db/**"
  - "database/**"
  - "**/*.sql"
  - "**/*schema*.*"
---

# Database Rules

- Treat schema changes as high impact.
- Prefer backward-compatible migrations.
- Separate expand and contract steps when zero-downtime deployment matters.
- Include rollback or recovery guidance.
- Consider indexes, locking, data volume, and transactional safety.
- Never delete or rewrite production data without explicit approval.
