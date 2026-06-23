# recipes/d-rose

> *In the midst of oppression, we bloom.*
>
> — Inspired by Derrick Rose's logo and journey

## Inspiration

This theme draws from **Derrick Rose**, the youngest NBA MVP whose career was defined by breathtaking highs and devastating injuries. His personal logo — a rose blooming from the letter "D" — encodes the very paradox that drives this design:

**Oppression and blooming coexist. Prosperity and regret are inseparable.**

The deep red-black palette mirrors this tension. The red is not cheerful — it is the color of blood, struggle, and the fire that refuses to go out. The black is not neutral — it is the weight of what was lost. Together, they narrate a story where beauty emerges precisely from the crack in the pavement.

## Best Suited For

This template works best for narratives built around **polarities, contradictions, and dual forces**:

- **Social inequality** — wealth vs poverty, privilege vs marginalization
- **Urban polarization** — gentrification, segregation, the two faces of a city
- **Conflict economics** — winners and losers of policy, trade, or technological change
- **Crisis and resilience** — financial crashes, health shocks, climate adaptation
- **Dual narratives** — any topic where two opposing truths must be held at once

The template's visual language (dark headers against white space, red accents bleeding through) reinforces the tension between order and disruption, data and emotion.

## Elements Used

| Layer | Element | ID |
|-------|---------|-----|
| Foundation | layout | 4:3, single column |
| Foundation | frames | title-center (with optional background image) |
| Foundation | navigation | miniframes |
| Variant | colors | red-black (primary: RGB 186,84,68) |
| Variant | typography | serif-neuton (bundled) |
| Variant | blocks | rounded, 2 types (normal + alert) |
| Variant | bullets | pifont ding 220/216 |
| Content | content | bullets, figures, tables, flowchart |

## Quick Start

1. Copy this recipe directory
2. Edit `main.tex` with your title, author, institute
3. Replace placeholder content in `content/*.tex` with your own slides
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
├── page01~09.png       # Preview
└── README.md           # This file
```

## Template Features Demonstrated

| Slide | Feature |
|-------|---------|
| 1 | Title page with optional background image |
| 2 | Motivation slide with bullet points |
| 3 | Roadmap with numbered list |
| 4 | Two block types (normal + alert) |
| 5 | Figure placeholder with caption |
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

### Replace Background Image

The title page uses `fig/hkskyline.png` as a background. Replace it with your own image:

```latex
% In main.tex, the image path:
\includegraphics[width=\paperwidth]{fig/your-image.png}
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
