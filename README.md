# Beamer Design System

A catalog of Beamer design elements with AI-assisted template generation. Browse elements, pick what you like, and AI assembles them into a complete, compilable template.

## How It Works

```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│   BROWSE     │     │   PICK       │     │   GENERATE   │
│              │     │              │     │              │
│  Look at     │ ──→ │  Select      │ ──→ │  AI reads    │
│  elements    │     │  elements    │     │  catalog +   │
│  in catalog  │     │  you want    │     │  your picks  │
└──────────────┘     └──────────────┘     └──────────────┘
                                               │
                                               ▼
                                         ┌──────────────┐
                                         │   REVIEW     │
                                         │              │
                                         │  AI checks   │
                                         │  against     │
                                         │  guidelines  │
                                         └──────────────┘
```

## Workflow

### Step 1: Browse Elements

Each element directory contains:
- `README.md` — what it is, when to use, trade-offs
- `examples/` — `.tex` code snippets
- `preview/` — visual examples (screenshots)

```bash
# Browse available color themes
ls elements/colors/

# Browse available frame types
ls elements/frames/
```

### Step 2: Pick Your Elements

Tell AI what you want. Examples:

```
"I want a dark theme with blue accents and sans-serif fonts"
"I need a minimal academic template with serif fonts"
"Give me a tech-style template with code blocks and dark background"
```

### Step 3: AI Generates Template

AI reads the catalog as context, combines your picks, and produces:
- A complete `.tex` file
- Compilation instructions
- Customization notes

### Step 4: Review & Refine

AI reviews the generated template against the design guide:
- Contrast ratios
- Font hierarchy
- Whitespace balance
- Anti-pattern detection

## Catalog Structure

```
beamer-design-system/
├── README.md                 # This file
├── ARCHITECTURE.md           # Layer × Element relationship
├── GUIDE.md                  # Design review checklist
│
├── elements/                 # Design element catalog
│   ├── colors/               # Color themes, palettes, gradients
│   ├── typography/           # Font families, sizes, spacing
│   ├── layout/               # Page geometry, columns, grids
│   ├── frames/               # Title page, section page, summary page
│   ├── navigation/           # Headers, footers, page numbers
│   ├── decorations/          # TikZ shapes, backgrounds, dividers
│   ├── emphasis/             # Block styles, highlights, code blocks
│   ├── animation/            # Transitions, overlays, reveals
│   └── content/              # Reusable content block patterns
│
├── recipes/                  # Pre-composed element combinations
├── templates/                # Ready-to-compile .tex files
└── anti-patterns/            # Common mistakes and fixes
```

## For AI Users

This repository is designed to be read by AI as context. When you ask AI to create a Beamer template, point it to this repo:

```
Read the Beamer design catalog at [repo-url], then create a template
using: colors/dark-blue, typography/sans-serif-modern, layout/16-9-single
```

AI will:
1. Read the relevant element files
2. Understand the design constraints
3. Generate a complete, compilable template
4. Review it against the guidelines

## Element Naming Convention

Each element uses a consistent ID format:

```
{category}/{name}
```

Examples:
- `colors/dark-blue` — dark blue color theme
- `colors/light-green-minimal` — light green minimal theme
- `typography/serif-classic` — classic serif font combination
- `frames/title-center` — centered title page layout

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new elements.

## License

MIT
