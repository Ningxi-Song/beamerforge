<div align="center">
  <img src="fig/bamboo-white.png" width="520" alt="Template inspiration image">
  <h1>Bamboo</h1>
  <p><strong>A reusable Beamer recipe adapted from the original Bamboo template.</strong></p>
  <p><em>Clean, concise, and suited for clear analytical presentations.</em></p>
  <p><strong>Creator:</strong> Willie SONG</p>
</div>

## Inspiration

Bamboo is inspired by Chinese landscape painting, especially the crisp, upright, and forceful presence of bamboo in ink compositions. The template translates that spirit into a clean academic structure: restrained color, clear hierarchy, light visual weight, and a concise rhythm suited for arguments that should feel fresh and firm.

## Best For

Research talks, policy briefings, concept pitches, and analytical presentations that need a restrained academic layout with a clear navigation header.

## Elements

| Layer | Element |
|-------|---------|
| Colors | Original blue-white palette with alert accents |
| Fonts | Palatino serif body text |
| Navigation | Miniframes header, page-number footer |
| Blocks | Rounded Beamer blocks in normal, example, and alert styles |
| Bullets | Original pifont markers |
| Title page | Optional right-side image with a white curtain for title text |

## Quick Start

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

## File Structure

```text
bamboo/
|-- bamboo.cls          # Theme class adapted from the original template
|-- main.tex            # Entry point with replaceable metadata
|-- content/            # Replaceable slide sections
|   |-- overview.tex
|   |-- figures.tex
|   `-- tables.tex
|-- fig/                # README image and optional title images
`-- references.bib      # Sample bibliography
```

## Customization

Edit the metadata in `main.tex`, then replace the files in `content/` with your own slides.

To use the title-page curtain layout with your own image, place an image in `fig/` and uncomment:

```latex
\titleimage{fig/title-image.png}
```

The included `fig/bamboo-white.png` is for this README introduction page, not a required slide asset.
