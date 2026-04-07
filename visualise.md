# Visualise — Conversation Context Diagram

You are generating a **single self-contained HTML file** that visualises the current conversation's work context as an interactive diagram. The goal: help the user understand at a glance what's been done, what's stuck, what's next, and how things connect.

## Instructions

1. **Analyse the conversation** — review everything discussed so far: files touched, decisions made, blockers, architecture, next steps, open questions.

2. **Generate a single HTML file** at `/tmp/visualise-${Date.now()}.html` containing:

### Required sections (include only what's relevant)

| Section | What to show |
|---|---|
| **Architecture** | System/component diagram — services, databases, APIs, how they connect. Use boxes + arrows. |
| **Progress** | What's done (green), in-progress (yellow), blocked (red), not started (grey). Kanban-style or checklist. |
| **Blockers** | Red-flagged items with the reason they're stuck and who/what unblocks them. |
| **Next Steps** | Ordered list of what should happen next, with dependencies shown. |
| **Decisions** | Key decisions made in this conversation, with brief rationale. |
| **File Map** | Files created/modified in this session, grouped by purpose. |

### Design rules

- **Self-contained** — inline all CSS/JS, no external dependencies. Use CSS Grid/Flexbox for layout.
- **Visual, not text-heavy** — prefer boxes, arrows (CSS/SVG), color coding, and icons (Unicode) over paragraphs.
- **Color scheme** — dark background (#1a1a2e), with:
  - Done: #00d26a (green)
  - In progress: #f5a623 (amber)  
  - Blocked: #ff4757 (red)
  - Not started: #636e72 (grey)
  - Connections/arrows: #a29bfe (purple)
  - Text: #f1f2f6 (light)
- **Interactive** — clicking a section heading collapses/expands it. Add a toggle for light/dark mode.
- **Responsive** — works on any screen width.
- **Architecture arrows** — use SVG or CSS borders + pseudo-elements to draw connections between components. Keep it clean.
- **Timestamp** — show generation time in the user's local timezone in the footer.

### SVG diagram guidelines

For architecture/flow diagrams, draw actual SVG with:
- Rounded rectangles for services/components
- Arrows (with arrowhead markers) for data flow / dependencies
- Labels on arrows describing the relationship
- Group related components visually
- Use the color scheme above

3. **Open it** — after writing the file, run `open <filepath>` to launch it in the browser.

4. **Tell the user** — share the file path and a 2-line summary of what's visualised.

## Important

- Do NOT use any external CDN, library, or framework — pure HTML/CSS/SVG/JS only.
- Do NOT generate placeholder content — everything must reflect the actual conversation.
- If the conversation is short or has minimal context, still produce something useful: show the topic, any files mentioned, and suggested next steps.
- Keep the HTML under 500 lines if possible — be concise in the visual design.
- All times in the user's local timezone.
