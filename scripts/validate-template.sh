#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  printf 'ERROR: %s\n' "$1" >&2
  exit 1
}

required=(
  CLAUDE.md
  PROJECT_BRIEF.md
  .claude/settings.json
  .claude/agents/specialist-reviewer.md
  .claude/agents/adversarial-verifier.md
  .claude/skills/bootstrap-project/SKILL.md
  .claude/skills/plan-milestone/SKILL.md
  .claude/skills/review-milestone/SKILL.md
  .claude/skills/full-spectrum-validation/SKILL.md
  .claude/skills/finish-milestone/SKILL.md
  docs/PROJECT_EXECUTION_STANDARD.md
  docs/requirements.md
  docs/architecture.md
  docs/plan.md
  docs/status.md
  docs/decisions.md
  docs/todo.md
  docs/deferred-actions.md
  docs/risks.md
)

for path in "${required[@]}"; do
  [[ -f "$path" ]] || fail "Missing required file: $path"
done

python3 - <<'PY'
import json
from pathlib import Path
json.loads(Path('.claude/settings.json').read_text())
PY

while IFS= read -r imported; do
  [[ -f "$imported" ]] || fail "Broken CLAUDE.md import: $imported"
done < <(grep -oE '@[A-Za-z0-9_./~-]+\.md' CLAUDE.md | sed 's/^@//' || true)

mapfile -t names < <(awk '/^name: / {print $2}' .claude/agents/*.md)
[[ "${#names[@]}" -eq "$(printf '%s\n' "${names[@]}" | sort -u | wc -l | tr -d ' ')" ]] || fail "Duplicate agent name"

for skill in .claude/skills/*/SKILL.md; do
  grep -q '^description:' "$skill" || fail "Skill missing description: $skill"
done

if grep -R -nE 'project/CLAUDE\.md|path-to-skeleton/project|@\.\./PROJECT_BRIEF' README.md CLAUDE.md docs .claude 2>/dev/null; then
  fail "Legacy nested-template reference found"
fi

if grep -R -nE 'must invoke these four|product-architect|ux-office-reviewer|qa-security-reviewer|ai-orchestration-reviewer' CLAUDE.md docs .claude 2>/dev/null; then
  fail "Fixed reviewer roster found"
fi

printf 'Template validation passed.\n'
