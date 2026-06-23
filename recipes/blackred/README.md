# recipes/blackred

Complete blackred theme recipe. Combines elements for a professional academic presentation.

## Elements Used

| Layer | Element | ID |
|-------|---------|-----|
| Foundation | layout | 4:3, single column |
| Foundation | frames | title-center |
| Foundation | navigation | miniframes |
| Variant | colors | blackred |
| Variant | typography | serif-neuton |
| Variant | blocks | rounded, 3 types |
| Variant | emphasis | ding bullets |
| Content | content | bullets |

## Quick Start

1. Copy this recipe directory
2. Edit `main.tex` with your content
3. Compile with XeLaTeX:

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
blackred/
├── main.tex           # Main presentation file
├── blackred.cls       # Theme class file
├── content/           # Slide sections
│   ├── overview.tex
│   ├── figures.tex
│   └── tables.tex
├── fig/               # Image assets
├── font/              # Bundled Neuton fonts
├── references.bib     # Bibliography
└── README.md          # This file
```

## Customization

### Change Colors

Edit `blackred.cls` and modify the color definitions:

```latex
\definecolor{redblack}{RGB}{186,84,68}  % Change primary color
\definecolor{titleTextColor}{RGB}{1,49,78}  % Change structure color
```

### Change Fonts

Edit `blackred.cls` and modify the font setup:

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
