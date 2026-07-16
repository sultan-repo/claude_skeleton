---
paths:
  - "**/*auth*.*"
  - "**/*security*.*"
  - "**/*permission*.*"
  - "**/*secret*.*"
  - "infra/**"
---

# Security Rules

- Never expose credentials, tokens, secrets, or personal data.
- Enforce authorization server-side.
- Use parameterized queries and safe framework APIs.
- Validate redirects, file paths, uploads, and external URLs.
- Preserve auditability for security-sensitive actions.
- Flag security tradeoffs before implementation.
