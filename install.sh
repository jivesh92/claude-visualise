#!/bin/bash
# Install the visualise command for Claude Code

DEST="$HOME/.claude/commands"
mkdir -p "$DEST"

curl -fsSL "https://raw.githubusercontent.com/jiveshgupta/claude-visualise/main/visualise.md" \
  -o "$DEST/visualise.md"

echo "Installed! Use /visualise in Claude Code."
