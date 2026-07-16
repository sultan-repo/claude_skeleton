---
paths:
  - "**/*test*.*"
  - "**/*spec*.*"
  - "tests/**"
---

# Testing Rules

- Test changed behavior and important failure paths.
- Prefer focused deterministic tests.
- Do not reduce assertions merely to make tests pass.
- Reuse fixtures and helpers where appropriate.
- Run the narrowest relevant test first, then broader checks once.
