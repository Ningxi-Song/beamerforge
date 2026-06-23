# recipes/d-rose

D Rose Beamer theme — pure white background, deep accent red, arrow-head bullets, tcolorbox blocks.

## Elements Used

| Layer | Element | ID |
|-------|---------|-----|
| Foundation | frames | title-left |
| Foundation | navigation | none (page number only) |
| Variant | colors | deep-red (#B91C1C) + white (#FFFFFF) |
| Variant | typography | sans-fira (fallback: Latin Modern) |
| Variant | blocks | tcolorbox, 3 types, sharp corners south |
| Variant | bullets | arrow-head (dart, custom TikZ) |
| Content | content | bullets, figures, tables, flowchart |

## Quick Start

1. Copy this recipe directory
2. Edit `main.tex` with your title, author, institute
3. Replace content in `content/*.tex` with your own slides
4. Add figures to `fig/` and bibliography to `references.bib`
5. Compile with XeLaTeX:

```bash
xelatex main.tex
biber main        # if using citations
xelatex main.tex
xelatex main.tex
```

Or use latexmk:

```bash
latexmk -xelatex -interaction=nonstopmode main.tex
```

## File Structure

```
d-rose/
├── d-rose.cls          # Theme class file (colors, fonts, bullets, blocks)
├── main.tex            # Main presentation file (title, includes, bibliography)
├── references.bib      # BibLaTeX bibliography
├── content/            # Slide sections
│   ├── overview.tex    # Motivation, roadmap, blocks, bullets
│   ├── figures.tex     # Figure placeholder, two-column, TikZ diagrams
│   └── tables.tex      # Summary stats table, regression table, citation
└── fig/                # (optional) Image assets
```

## Template Features Demonstrated

| Slide | Feature |
|-------|---------|
| 1 | Title page — left-aligned with red accent bar |
| 2-4 | Overview: motivation, roadmap, block types |
| 5 | Bullet hierarchy (itemize + enumerate) |
| 6-7 | Figure placeholders (single + two-column) |
| 8-9 | TikZ diagrams (flowchart + mechanism) |
| 10-11 | Tables (summary stats + regression) |
| 12 | Citation setup |
| 13 | References |

## Customization

### Change Colors

Edit `d-rose.cls`:

```latex
\definecolor{accent}{HTML}{B91C1C}       % Primary red
\definecolor{accentDark}{HTML}{1A1A1A}   % Near-black
\definecolor{bg}{HTML}{FFFFFF}           % Background white
```

### Change Bullets

Edit `d-rose.cls` bullet section. The theme uses a right-pointing arrow head (TikZ):

```latex
\setbeamertemplate{itemize item}{%
  \begin{tikzpicture}[baseline=-0.5ex]
    \fill[accent] (0,0) -- (0.35,0.2) -- (0.35,-0.2) -- cycle;
  \end{tikzpicture}%
}
```

### Add Slides

Create new `.tex` files in `content/` and include them in `main.tex`:

```latex
\input{content/new-section}
```

## Design Principles

- One point per slide
- Conclusion-driven titles
- 3-5 bullets maximum
- Pure white background, deep red accent
- Arrow-head bullet with red accent
- tcolorbox blocks with sharp bottom corners
- No navigation bar (clean look)
- Left-aligned title page with red accent bar
