---
paths:
  - "src/**/*.{ts,js,py,go,java,kt,cs,rb,php,rs}"
  - "server/**"
  - "api/**"
---

# Backend Rules

- Follow existing service, repository, controller, and error-handling patterns.
- Validate inputs at trust boundaries.
- Keep authorization separate from authentication.
- Use transactions for multi-step writes requiring atomicity.
- Avoid hidden side effects.
- Add structured logging without secrets or sensitive payloads.
