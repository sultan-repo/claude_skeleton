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
  FRAMEWORK_VERSION
  .claude/settings.json
  .claude/agents/specialist-reviewer.md
  .claude/agents/adversarial-verifier.md
  .claude/skills/start-project/SKILL.md
  .claude/skills/plan-milestone/SKILL.md
  .claude/skills/review-milestone/SKILL.md
  .claude/skills/full-spectrum-validation/SKILL.md
  .claude/skills/finish-milestone/SKILL.md
  docs/PROJECT_EXECUTION_STANDARD.md
  docs/TEMPLATE_ACCEPTANCE_TEST.md
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

node -e "JSON.parse(require('fs').readFileSync('.claude/settings.json', 'utf8'))"

bash -n scripts/validate-template.sh scripts/install-into-project.sh

while IFS= read -r imported; do
  [[ -f "$imported" ]] || fail "Broken CLAUDE.md import: $imported"
done < <(grep -oE '@[A-Za-z0-9_./~-]+\.md' CLAUDE.md | sed 's/^@//' || true)

agent_count="$(awk '/^name: / {print $2}' .claude/agents/*.md | wc -l | tr -d ' ')"
unique_agent_count="$(awk '/^name: / {print $2}' .claude/agents/*.md | sort -u | wc -l | tr -d ' ')"
[[ "$agent_count" -eq "$unique_agent_count" ]] || fail "Duplicate agent name"

for skill in .claude/skills/*/SKILL.md; do
  grep -q '^description:' "$skill" || fail "Skill missing description: $skill"
  [[ "$(wc -l < "$skill" | tr -d ' ')" -le 500 ]] || fail "Skill exceeds 500 lines: $skill"
done

[[ "$(wc -l < CLAUDE.md | tr -d ' ')" -le 220 ]] || fail "CLAUDE.md exceeds 220 lines"

grep -q '/start-project' README.md || fail "README missing simplified /start-project workflow"
grep -q 'as many.*question' .claude/skills/start-project/SKILL.md || fail "Start workflow does not permit adaptive question rounds"
grep -q 'requirements baseline' .claude/skills/start-project/SKILL.md || fail "Start workflow missing requirements confirmation gate"
grep -q 'Do not begin repository normalization' .claude/skills/start-project/SKILL.md || fail "Start workflow does not block premature repository normalization"
grep -q 'Normalize and clean the repository' .claude/skills/start-project/SKILL.md || fail "Start workflow missing repository cleanup stage"
grep -q 'Do not force a universal folder tree' .claude/skills/start-project/SKILL.md || fail "Start workflow may force a fixed repository structure"
grep -q 'Remove skeleton-only baggage' .claude/skills/start-project/SKILL.md || fail "Start workflow missing skeleton artifact cleanup"
grep -q 'Automatic repository cleanup' README.md || fail "README missing automatic cleanup guidance"
grep -q 'Project-specific folder structure' README.md || fail "README missing adaptive folder structure guidance"
grep -q 'Milestone 0' .claude/skills/start-project/SKILL.md || fail "Start workflow missing safe structural-normalization fallback"

if grep -R -nE 'project/CLAUDE\.md|path-to-skeleton/project|@\.\./PROJECT_BRIEF' README.md CLAUDE.md docs .claude 2>/dev/null; then
  fail "Legacy nested-template reference found"
fi

if grep -R -nE '/bootstrap-project|bootstrap-project/SKILL\.md' README.md CLAUDE.md docs .claude scripts 2>/dev/null; then
  fail "Legacy bootstrap entry point found"
fi

if grep -R -nE 'must invoke these four|product-architect|ux-office-reviewer|qa-security-reviewer|ai-orchestration-reviewer' CLAUDE.md docs .claude 2>/dev/null; then
  fail "Fixed reviewer roster found"
fi

if grep -R -nE 'claude-(opus|sonnet|haiku)-[0-9]' CLAUDE.md docs .claude 2>/dev/null; then
  fail "Fixed model ID found"
fi

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT
mkdir -p "$tmpdir/project/.git"
./scripts/install-into-project.sh "$tmpdir/project" >/dev/null
[[ -f "$tmpdir/project/CLAUDE.md" && -f "$tmpdir/project/FRAMEWORK_VERSION" ]] || fail "Installer smoke test failed"
[[ -f "$tmpdir/project/.claude/skills/start-project/SKILL.md" ]] || fail "Installer did not copy start-project skill"

printf 'Template validation passed.\n'
