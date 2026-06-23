# Beamer Design System — Architecture

## System Overview

This is a **catalog + AI assistant** system for designing Beamer presentations.

```
┌─────────────────────────────────────────────────────────────────────┐
│                        USER INTERACTION                             │
│                                                                     │
│  "I want a dark theme with blue accents"                           │
│         │                                                           │
│         ▼                                                           │
│  ┌──────────────┐     ┌──────────────┐     ┌──────────────┐        │
│  │   BROWSE     │     │   PICK       │     │   GENERATE   │        │
│  │              │     │              │     │              │        │
│  │  elements/   │ ──→ │  element IDs │ ──→ │  AI reads    │        │
│  │  catalog     │     │  (e.g.       │     │  catalog +   │        │
│  │              │     │  colors/     │     │  picks →     │        │
│  │              │     │  dark-blue)  │     │  .tex file   │        │
│  └──────────────┘     └──────────────┘     └──────────────┘        │
│                                                     │               │
│                                                     ▼               │
│                                               ┌──────────────┐      │
│                                               │   REVIEW     │      │
│                                               │  AI checks   │      │
│                                               │  GUIDE.md    │      │
│                                               └──────────────┘      │
└─────────────────────────────────────────────────────────────────────┘
```

## Layer × Element Relationship

```
┌─────────────────────────────────────────────────────────────────────┐
│                        LAYERS (Assembly Order)                      │
│                                                                     │
│  ┌───────────────────────────────────────────────────────────────┐  │
│  │  Layer 1: FOUNDATION (Fixed)                                  │  │
│  │  All themes share this. Never change after initial setup.     │  │
│  │                                                               │  │
│  │  Elements:                                                    │  │
│  │  ├── layout/       (page geometry, columns)                  │  │
│  │  ├── frames/       (title, section, summary pages)           │  │
│  │  └── navigation/   (header, footer, page numbers)            │  │
│  └───────────────────────────────────────────────────────────────┘  │
│                              ↓                                      │
│  ┌───────────────────────────────────────────────────────────────┐  │
│  │  Layer 2: VARIANT (Swappable)                                 │  │
│  │  Change freely to create new themes.                          │  │
│  │                                                               │  │
│  │  Elements:                                                    │  │
│  │  ├── colors/       (theme, gradients, palettes)              │  │
│  │  ├── typography/   (fonts, sizes, spacing)                   │  │
│  │  ├── decorations/  (tikz, backgrounds, dividers)             │  │
│  │  ├── emphasis/     (blocks, highlights, code)                │  │
│  │  └── animation/    (transitions, overlays)                   │  │
│  └───────────────────────────────────────────────────────────────┘  │
│                              ↓                                      │
│  ┌───────────────────────────────────────────────────────────────┐  │
│  │  Layer 3: CONTENT (Per-Presentation)                          │  │
│  │  Adapts to each presentation's topic.                         │  │
│  │                                                               │  │
│  │  Elements:                                                    │  │
│  │  └── content/      (bullet lists, figures, tables, code)     │  │
│  └───────────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────┘
```

## Element Catalog

| Element ID | Layer | Category | Description |
|------------|-------|----------|-------------|
| `colors/dark-blue` | Variant | colors | Dark blue academic theme |
| `colors/dark-tech` | Variant | colors | Dark background with bright accents |
| `colors/light-minimal` | Variant | colors | Clean light theme |
| `colors/light-green` | Variant | colors | Fresh green palette |
| `typography/serif-classic` | Variant | typography | Computer Modern serif family |
| `typography/sans-modern` | Variant | typography | Sans-serif modern family |
| `typography/mono-code` | Variant | typography | Monospace for code-heavy slides |
| `layout/4-3-single` | Foundation | layout | 4:3 single column |
| `layout/16-9-single` | Foundation | layout | 16:9 single column |
| `layout/16-9-two-col` | Foundation | layout | 16:9 two-column |
| `frames/title-center` | Foundation | frames | Centered title page |
| `frames/title-left` | Foundation | frames | Left-aligned title page |
| `frames/section-minimal` | Foundation | frames | Minimal section divider |
| `navigation/none` | Foundation | navigation | No header/footer |
| `navigation/footline-page` | Foundation | navigation | Page number only |
| `navigation/footline-full` | Foundation | navigation | Author + title + page |
| `decorations/gradient-bar` | Variant | decorations | Horizontal gradient divider |
| `decorations/geometric` | Variant | decorations | Geometric shapes |
| `decorations/image-bg` | Variant | decorations | Background image |
| `emphasis/block-classic` | Variant | emphasis | Standard Beamer block |
| `emphasis/block-rounded` | Variant | emphasis | Rounded corner block |
| `animation/none` | Variant | animation | No transitions |
| `animation/fade` | Variant | animation | Fade transitions |
| `content/bullets` | Content | content | Standard bullet list |
| `content/figure-caption` | Content | content | Figure with caption |
| `content/minimal-table` | Content | content | Stripped-down table |

## Design Decision Tree

```
What do you want to create?
│
├── "I want a complete theme"     → Pick from recipes/
│   ├── Academic style            → recipes/academic-classic/
│   ├── Tech style                → recipes/tech-modern/
│   ├── Business style            → recipes/business-minimal/
│   └── Creative style            → recipes/creative-bold/
│
├── "I want a custom theme"       → Pick elements individually
│   ├── Step 1: Pick foundation   → layout/ + frames/ + navigation/
│   ├── Step 2: Pick variant      → colors/ + typography/ + decorations/
│   └── Step 3: Fill content      → content/
│
└── "I want to learn"             → Read GUIDE.md
    ├── Design principles         → GUIDE.md § Design Principles
    ├── Anti-patterns             → anti-patterns/
    └── Examples                  → elements/*/examples/
```

## AI Integration Points

### 1. Generation Context

When AI reads this catalog, it understands:
- What elements are available
- How they combine (layer constraints)
- What trade-offs each choice involves

### 2. Constraint Checking

AI validates generated templates against:
- GUIDE.md design rules
- Layer constraints (foundation ≠ variant)
- Anti-pattern detection

### 3. Refinement Loop

```
User: "Make the title bigger"
  → AI reads elements/typography/
  → AI updates the title font size in the .tex file
  → AI checks against hierarchy rules
  → AI provides updated file
```

## File Structure Per Element

```
elements/{category}/{element-name}/
├── README.md          # Description, use cases, trade-offs
├── example.tex        # Minimal compilable example
├── preview.png        # Visual preview (generated)
└── parameters.md      # Tunable values and effects
```

## Adding New Elements

1. Create directory: `elements/{category}/{new-name}/`
2. Write `README.md` with description, use cases, trade-offs
3. Write `example.tex` with minimal compilable code
4. Add entry to this file's Element Catalog table
5. Generate `preview.png` by compiling `example.tex`
