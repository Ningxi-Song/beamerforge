# Background Colors

Classic background colors for Beamer presentations.

## Recommended (Light Only)

| Name | Hex | Use Case |
|------|-----|----------|
| Off-White | #F5F5F5 | General presentations, bright rooms |
| Light Gray | #EEEEEE | Subtle variation, softer than pure white |
| Pure White | #FFFFFF | Maximum contrast, controlled lighting |

## Prohibited (Dark Backgrounds)

| Name | Hex | Reason |
|------|-----|--------|
| Dark Gray | #2D2D2D | Too dark, reduces readability |
| Charcoal | #1A1A1A | Too dark, causes eye strain |
| Pure Black | #000000 | Too harsh, poor contrast |

See `anti-patterns/01-no-solid-backgrounds.md` for rules.

## Usage

```latex
\definecolor{bg}{HTML}{F5F5F5}
\setbeamercolor{normal text}{fg=black,bg=bg}
```
