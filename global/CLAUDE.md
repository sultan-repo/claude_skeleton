# Global Claude Code Preferences

## Communication
- Be concise and direct.
- Do not repeat the request.
- Do not explain obvious code unless asked.
- Report only the approach, changed files, validation, and unresolved issues.

## Repository usage
- Search before reading.
- Read only relevant files or sections.
- Do not inspect dependencies, generated output, build artifacts, caches, coverage, or large lock files unless required.
- Do not reread unchanged files without a clear reason.
- Prefer existing patterns over new abstractions.

## Changes
- Make the smallest correct change.
- Do not refactor unrelated code.
- Preserve public behavior unless the task explicitly changes it.
- Prefer patches and targeted edits over full-file rewrites.
- Never weaken tests, validation, security, or error handling to make a task pass.

## Validation
- Run the smallest relevant test or check first.
- Run broader validation only after targeted checks pass.
- Do not repeat a failed command without changing the approach.
- Stop when acceptance criteria are met.
