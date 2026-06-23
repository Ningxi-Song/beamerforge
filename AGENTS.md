# BeamerForge - AI Agent Instructions

## What This Is

BeamerForge is a catalog of Beamer (LaTeX presentation) design elements. It helps AI generate Beamer templates by providing structured design context.

## How to Use This Repo

When a user wants to create a Beamer template:

1. **Read the vibe** — User describes the overall feeling (e.g., "modern tech", "academic formal")
2. **Read WORKFLOW.md** — Follow the vague-to-specific design process
3. **Read elements/** — Browse available colors, fonts, bullets, blocks
4. **Generate template** — Combine selected elements into a complete .tex file

## Key Files

| File | Purpose |
|------|---------|
| `WORKFLOW.md` | Design process: Vibe → Direction → Palette → Details → Template |
| `ARCHITECTURE.md` | Layer × Element relationship |
| `GUIDE.md` | Design review checklist |
| `elements/` | Visual catalog of design elements |
| `recipes/` | Complete template examples |

## Element Categories

```
elements/
├── colors/        # Color themes (blackred, dark-blue, green-minimal, etc.)
├── typography/    # Font families (serif-neuton, sans-fira, etc.)
├── bullets/       # Bullet point styles (standard, star, triangle, etc.)
├── blocks/        # Block styles (classic, rounded, minimal)
├── navigation/    # Header/footer styles (miniframes, footline, none)
├── frames/        # Title page layouts (centered, left-aligned)
└── content/       # Content patterns (bullets, figures, tables)
```

## Design Process

```
User: "I want something modern and techy"
  ↓
AI: Acknowledges vibe. Shows 2-3 directions:
  [Dark mode]  [Light tech]  [Gradient]
  ↓
User: "Dark mode"
  ↓
AI: Shows 2-3 palettes:
  [Teal+Fira]  [Purple+Source]  [Blue+Inter]
  ↓
User: "Teal+Fira"
  ↓
AI: Asks about details one at a time:
  "What bullet style? Here are 4 options..."
  ↓
User: "Triangle bullets"
  ↓
AI: Generates complete .tex file
```

## Rules

1. **Never ask users to pick individual elements upfront** — Start with vibe
2. **Show visual previews** — Compile and show PDF/PNG when possible
3. **One decision at a time** — Don't overwhelm with choices
4. **Use natural language** — Technical terms only after direction is set
5. **Generate complete files** — Always provide compilable .tex

## Compiling Templates

Use XeLaTeX (required for fontspec):

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

Or with latexmk:

```bash
latexmk -xelatex -interaction=nonstopmode main.tex
```

## Adding New Elements

1. Create directory: `elements/{category}/{name}/`
2. Write `README.md` with description, use cases, trade-offs
3. Write `example.tex` with minimal compilable code
4. Compile to generate preview PDF/PNG
