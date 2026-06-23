# colors/dark-blue

Dark blue academic color theme. Professional, high-contrast, suitable for projection in bright rooms.

## Description

A deep navy blue primary color with white text on dark backgrounds. Uses lighter blue accents for highlights and emphasis. Works well with serif or sans-serif fonts.

## Use Cases

- Academic presentations
- Conference talks
- Job market papers
- Formal seminars

## Trade-offs

| Pros | Cons |
|------|------|
| Professional appearance | Less visually striking than bold themes |
| High contrast, readable | Requires careful accent color selection |
| Works in bright rooms | Dark backgrounds may tire eyes in long talks |
| Pairs well with serif fonts | Limited decorative options |

## Color Palette

| Role | Color | Hex |
|------|-------|-----|
| Primary | Navy Blue | `#1B2A4A` |
| Secondary | Light Blue | `#4A90D9` |
| Accent | Gold | `#D4A843` |
| Background | Dark Navy | `#0D1B2A` |
| Text | White | `#FFFFFF` |
| Muted Text | Light Gray | `#B0B0B0` |

## Example

```bash
cd examples/
pdflatex example.tex
```

## Parameters

| Parameter | Default | Range | Effect |
|-----------|---------|-------|--------|
| primary | `#1B2A4A` | Any hex | Main brand color |
| secondary | `#4A90D9` | Any hex | Accent color |
| background | `#0D1B2A` | Any hex | Slide background |
| text | `#FFFFFF` | Any hex | Body text color |

## Compatibility

| Element | Compatible | Notes |
|---------|------------|-------|
| typography/serif-classic | Yes | Traditional academic look |
| typography/sans-modern | Yes | Modern clean look |
| frames/title-center | Yes | Standard layout |
| frames/title-left | Yes | Alternative layout |
| decorations/gradient-bar | Yes | Subtle accent |
| emphasis/block-classic | Yes | Standard block style |
