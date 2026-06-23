# recipes/d-rose

Complete D Rose theme recipe. Black-red academic presentation with serif fonts, miniframes navigation, and pifont ding bullets.

## Elements Used

| Layer | Element | ID |
|-------|---------|-----|
| Foundation | layout | 4:3, single column |
| Foundation | frames | title-center |
| Foundation | navigation | miniframes |
| Variant | colors | blackred (RGB 186,84,68) |
| Variant | typography | serif-neuton |
| Variant | blocks | rounded, 3 types (normal/example/alert) |
| Variant | bullets | pifont ding 220/216 |
| Content | content | bullets, figures, tables, flowchart |

## Quick Start

1. Copy this recipe directory
2. Edit `main.tex` with your title, author, institute
3. Replace content in `content/*.tex` with your own slides
4. Add figures to `fig/` and bibliography entries to `references.bib`
5. Compile with XeLaTeX:

```bash
xelatex main.tex
biber main
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
├── d-rose.cls          # Theme class file
├── main.tex            # Main presentation file
├── content/            # Slide sections
│   ├── overview.tex    # Motivation, roadmap, blocks
│   ├── figures.tex     # Figure placeholder, TikZ diagram
│   └── tables.tex      # Table example, citation example
├── fig/                # Image assets
├── font/               # Bundled Neuton fonts
├── references.bib      # Bibliography
└── README.md           # This file
```

## Template Features Demonstrated

| Slide | Feature |
|-------|---------|
| 1 | Title page with optional background image |
| 2 | Motivation slide with bullet points |
| 3 | Roadmap with numbered list |
| 4 | Three block types (normal, example, alert) |
| 5 | Figure with caption |
| 6 | TikZ flowchart diagram |
| 7 | Summary statistics table |
| 8 | Citation example |
| 9 | References |

## Customization

### Change Colors

Edit `d-rose.cls`:

```latex
\definecolor{redblack}{RGB}{186,84,68}     % Primary color
\definecolor{titleTextColor}{RGB}{1,49,78} % Structure color
```

### Change Fonts

Edit `d-rose.cls`:

```latex
\setmainfont[
  Path = font/,
  UprightFont = Neuton-Regular.ttf,
  ItalicFont = Neuton-Italic.ttf,
  BoldFont = Neuton-Regular.ttf
]{Neuton}
```

### Add Slides

Create new `.tex` files in `content/` and include them in `main.tex`:

```latex
\input{content/new-section}
```

### Add Images

Place images in `fig/` and reference them:

```latex
\includegraphics[width=0.85\textwidth]{fig/my-image.png}
```

## Build On Overleaf

1. Upload the whole folder to Overleaf
2. Set `main.tex` as the main file
3. In Menu, set Compiler to `XeLaTeX`
4. Recompile

## Design Principles

- One point per slide
- Conclusion-driven titles
- 3-5 bullets maximum
- 35-40% whitespace
- Figures over tables
- Minimal emphasis

## Anti-Patterns to Avoid

- `\Large` or `\large` in body text
- Paragraph text on slides
- Blocks on every slide
- Dense regression tables
- Empty bottom third
- Left-clustered content
