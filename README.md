# /visualise for Claude Code

A Claude Code slash command that generates an interactive HTML diagram of your current conversation context — architecture, progress, blockers, decisions, and file changes — all in one visual snapshot.

![Dark theme with color-coded status indicators](https://img.shields.io/badge/theme-dark-1a1a2e) ![No dependencies](https://img.shields.io/badge/dependencies-zero-00d26a)

## What it does

Run `/visualise` in any Claude Code conversation and it generates a self-contained HTML file that shows:

- **Architecture** — system/component diagrams with SVG arrows
- **Progress** — kanban-style done/in-progress/blocked/not-started view
- **Blockers** — red-flagged items with reasons and owners
- **Next Steps** — ordered with dependencies
- **Decisions** — key choices made with rationale
- **File Map** — files touched, grouped by purpose

The HTML is fully self-contained (no CDNs, no frameworks), interactive (collapsible sections, light/dark toggle), and opens automatically in your browser.

## Install

**One-liner:**

```bash
curl -fsSL https://raw.githubusercontent.com/jiveshgupta/claude-visualise/main/install.sh | bash
```

**Manual:**

```bash
mkdir -p ~/.claude/commands
curl -fsSL https://raw.githubusercontent.com/jiveshgupta/claude-visualise/main/visualise.md \
  -o ~/.claude/commands/visualise.md
```

## Usage

In any Claude Code conversation, type:

```
/visualise
```

That's it. Claude reads your conversation context and generates a diagram.

## Uninstall

```bash
rm ~/.claude/commands/visualise.md
```

## License

MIT
