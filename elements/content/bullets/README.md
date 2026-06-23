# content/bullets

Standard bullet list content pattern. 3-5 items, one line each.

## Description

The most common content pattern for Beamer slides. Each bullet is one phrase, fitting on one line. Maximum 5 items per slide.

## Use Cases

- Main points
- Research findings
- Method descriptions
- Summary slides

## Trade-offs

| Pros | Cons |
|------|------|
| Easy to create | Can become monotonous |
| Audience scans quickly | Limited visual variety |
| Works with any theme | Not suitable for complex data |
| Standard Beamer behavior | Requires discipline (3-5 items) |

## Usage

```latex
\begin{frame}{Slide Title}
  \begin{itemize}
    \item First point (one line)
    \item Second point (one line)
    \item Third point (one line)
  \end{itemize}
\end{frame}
```

## Custom Bullets

```latex
% Custom bullet symbols
\setbeamertemplate{itemize item}{\ding{220}}
\setbeamertemplate{itemize subitem}{\ding{216}}

% Or use standard symbols
\setbeamertemplate{itemize item}{\textbullet}
\setbeamertemplate{itemize subitem}{\textendash}
```

## Rules

1. **3-5 bullets maximum** per slide
2. **One line per bullet** (no wrapping)
3. **One phrase per bullet** (no paragraphs)
4. **Consistent grammar** (all fragments or all sentences)

## Example

```bash
cd examples/
xelatex example.tex
```

## Parameters

| Parameter | Default | Effect |
|-----------|---------|--------|
| symbol | ding-220 | Bullet symbol |
| subitem | ding-216 | Sub-bullet symbol |

## Compatibility

| Element | Compatible | Notes |
|---------|------------|-------|
| colors/blackred | Yes | Designed for this combination |
| colors/dark-blue | Yes | Works with any color scheme |
| typography/serif-neuton | Yes | Font choice independent |
| emphasis/block-classic | Yes | Blocks complement bullets |
