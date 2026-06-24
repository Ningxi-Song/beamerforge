# D Rose

<img src="fig/derrick-rose-seeklogo.png" width="100" align="right" alt="D Rose Logo">

> *In the midst of oppression, we bloom.*

## Inspiration

Derrick Rose — youngest NBA MVP, a career of breathtaking highs and devastating injuries. His logo, a rose blooming from the letter "D", encodes the paradox that drives this design: **oppression and blooming coexist, prosperity and regret are inseparable.**

## Best For

Narratives built around polarities, contradictions, and dual forces: social inequality, urban polarization, crisis and resilience, or any topic where two opposing truths must be held at once.

## Elements

| Layer | Element |
|-------|---------|
| Colors | Red-black primary (RGB 186,84,68), white background |
| Fonts | Neuton serif (bundled) |
| Navigation | Miniframes header, page-number footer |
| Blocks | 2 types — normal (dark gray / light red) + alert (red / light red) |
| Bullets | Pifont ding 220/216 |

## Quick Start

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

## File Structure

```
d-rose/
├── d-rose.cls          # Theme class
├── main.tex            # Entry point
├── content/            # Slide sections
│   ├── overview.tex
│   ├── figures.tex
│   └── tables.tex
├── fig/                # Images
├── font/               # Bundled Neuton fonts
└── references.bib      # Bibliography
```

## Customization

Edit `d-rose.cls`:

```latex
\definecolor{redblack}{RGB}{186,84,68}     % Primary color
\definecolor{titleTextColor}{RGB}{1,49,78} % Structure color
```

Replace the title page background: swap `fig/hkskyline.png` with your own image.

---

<small>Created by Willie SONG</small>
