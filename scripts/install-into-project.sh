#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 <target-project-directory>"
  echo "Installs the Claude Code framework without overwriting existing files."
}

[[ $# -eq 1 ]] || { usage; exit 2; }

SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="$(cd "$1" && pwd)"

[[ -d "$TARGET/.git" ]] || echo "Warning: target is not a Git repository root." >&2

items=(CLAUDE.md PROJECT_BRIEF.md FRAMEWORK_VERSION .claude docs)
conflicts=()
for item in "${items[@]}"; do
  [[ -e "$TARGET/$item" ]] && conflicts+=("$item")
done

if ((${#conflicts[@]})); then
  INCOMING="$TARGET/.claude-skeleton-incoming"
  rm -rf "$INCOMING"
  mkdir -p "$INCOMING"
  cp -R "$SOURCE/CLAUDE.md" "$SOURCE/PROJECT_BRIEF.md" "$SOURCE/FRAMEWORK_VERSION" "$SOURCE/.claude" "$SOURCE/docs" "$INCOMING/"
  printf 'Existing framework files detected: %s\n' "${conflicts[*]}" >&2
  printf 'No files were overwritten. Review and merge from: %s\n' "$INCOMING" >&2
  exit 1
fi

cp -R "$SOURCE/CLAUDE.md" "$SOURCE/PROJECT_BRIEF.md" "$SOURCE/FRAMEWORK_VERSION" "$SOURCE/.claude" "$SOURCE/docs" "$TARGET/"
printf 'Installed Claude Code framework into %s\n' "$TARGET"
