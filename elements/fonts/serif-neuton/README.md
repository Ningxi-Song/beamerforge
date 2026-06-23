# typography/serif-neuton

Neuton serif font family for Beamer. Elegant, readable, with small caps support.

## Description

Neuton is a modern serif typeface designed for screen readability. It includes Regular, Italic, Bold, ExtraBold, Light, and ExtraLight variants. Small caps are achieved via `\scshape`.

## Use Cases

- Academic presentations
- Formal seminars
- Research talks
- Course lectures

## Trade-offs

| Pros | Cons |
|------|------|
| Elegant, professional appearance | Requires bundled font files |
| Excellent screen readability | Not available in standard LaTeX |
| Multiple weights available | ExtraBold needed for bold titles |
| Small caps for titles | Larger file size |

## Font Files

| File | Variant | Use |
|------|---------|-----|
| Neuton-Regular.ttf | Regular | Body text |
| Neuton-Italic.ttf | Italic | Emphasis |
| Neuton-Bold.ttf | Bold | Bold text |
| Neuton-ExtraBold.ttf | ExtraBold | Titles, strong emphasis |
| Neuton-Light.ttf | Light | Captions, footnotes |
| Neuton-ExtraLight.ttf | ExtraLight | Decorative text |

## Usage

```latex
\RequirePackage{fontspec}
\usefonttheme{professionalfonts}
\usefonttheme{serif}

\setmainfont[
  Path = font/,
  UprightFont = Neuton-Regular.ttf,
  ItalicFont = Neuton-Italic.ttf,
  BoldFont = Neuton-Regular.ttf
]{Neuton}

\setsansfont[
  Path = font/,
  UprightFont = Neuton-Regular.ttf,
  ItalicFont = Neuton-Italic.ttf,
  BoldFont = Neuton-ExtraBold.ttf
]{Neuton}
```

## Fallback

If Neuton fonts are not available:

```latex
\setmainfont{Latin Modern Roman}
\setsansfont{Latin Modern Sans}
```

## Example

```bash
cd examples/
xelatex example.tex
```

## Parameters

| Parameter | Default | Effect |
|-----------|---------|--------|
| Path | `font/` | Font file location |
| UprightFont | `Neuton-Regular.ttf` | Regular weight |
| BoldFont | `Neuton-ExtraBold.ttf` | Bold weight |
| ItalicFont | `Neuton-Italic.ttf` | Italic variant |

## Compatibility

| Element | Compatible | Notes |
|---------|------------|-------|
| colors/blackred | Yes | Designed for this combination |
| colors/dark-blue | Yes | Works with any color scheme |
| frames/title-center | Yes | Small caps titles work well |
| emphasis/block-classic | Yes | Standard block styling |
