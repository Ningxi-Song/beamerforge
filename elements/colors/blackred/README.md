# colors/blackred

Dark red-brown academic theme. Professional, warm tone, high contrast.

## Description

A deep red-brown (`#BA5444`) primary color with black structural elements on white backgrounds. Uses three distinct block types for visual hierarchy. Small caps frame titles add elegance.

## Use Cases

- Academic seminars
- Conference presentations
- Research group meetings
- Course lectures

## Trade-offs

| Pros | Cons |
|------|------|
| Warm, distinctive appearance | Red can be overpowering if overused |
| High contrast, readable | Requires careful color balance |
| Three block types for hierarchy | More complex to customize |
| Professional serif typography | Neuton font must be bundled |

## Color Palette

| Role | Color | Hex | RGB |
|------|-------|-----|-----|
| Primary | Red-brown | `#BA5444` | 186, 84, 68 |
| Structure | Dark teal | `#01314E` | 1, 49, 78 |
| Alert | Bright red | `#C85444` | 200, 84, 68 |
| Normal block bg | Red | `#E22A2C` | 226, 42, 44 |
| Normal block title | Black | `#000000` | 0, 0, 0 |
| Example block bg | Light blue | `#C0DFF8` | 192, 223, 248 |
| Example block title | Blue | `#4789BE` | 71, 137, 190 |
| Alert block bg | Light red | `#F9BDBB` | 249, 189, 187 |
| Alert block title | Red | `#CC2D18` | 204, 45, 24 |
| Background | White | `#FFFFFF` | 255, 255, 255 |
| Text | Black | `#000000` | 0, 0, 0 |

## Typography

- **Font family**: Neuton (serif)
- **Frame titles**: Small caps (`\scshape`)
- **Title size**: 20pt
- **Author/institute**: 12pt
- **Bundled fonts**: Yes (in `font/` directory)

## Block Styles

| Type | Title BG | Body BG | Use For |
|------|----------|---------|---------|
| Normal | Black | Red | Main points |
| Example | Blue | Light blue | Definitions, examples |
| Alert | Red | Light red | Warnings, limitations |

## Example

```bash
cd examples/
xelatex example.tex
```

## Parameters

| Parameter | Default | Effect |
|-----------|---------|--------|
| primary | `#BA5444` | Main accent color |
| structure | `#01314E` | Structural elements |
| blockstyle | rounded | Block corner style |

## Compatibility

| Element | Compatible | Notes |
|---------|------------|-------|
| typography/serif-neuton | Yes | Requires bundled fonts |
| typography/serif-lmodern | Yes | Fallback option |
| frames/title-bg-image | Yes | Title page with background |
| navigation/miniframes | Yes | Section dots in header |
| decorations/tikz-diagrams | Yes | Arrows use primary color |
