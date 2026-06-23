# frames/title-center

Centered title page layout with background image support.

## Description

Standard centered title page with title, subtitle, author, institute, and date. Supports optional background image via tikz overlay.

## Use Cases

- Academic presentations
- Conference talks
- Research seminars
- Course lectures

## Trade-offs

| Pros | Cons |
|------|------|
| Clean, professional appearance | Background image may obscure text |
| Works with any color scheme | Requires careful contrast |
| Easy to customize | Limited layout options |
| Standard Beamer behavior | May look plain without decoration |

## Usage

### Basic title page

```latex
\begin{frame}
  \titlepage
\end{frame}
```

### Title page with background image

```latex
{%
\usebackgroundtemplate{%
  \IfFileExists{fig/background.png}{%
    \begin{tikzpicture}[remember picture,overlay]
      \node[anchor=south, yshift=-0.5cm] at (current page.south)
        {\includegraphics[width=\paperwidth]{fig/background.png}};
    \end{tikzpicture}%
  }{}%
}
\begin{frame}[plain]
  \vspace{-1cm}
  \titlepage
\end{frame}
}
```

## Parameters

| Parameter | Default | Effect |
|-----------|---------|--------|
| alignment | center | Title text alignment |
| background | none | Background image path |

## Example

```bash
cd examples/
xelatex example.tex
```

## Compatibility

| Element | Compatible | Notes |
|---------|------------|-------|
| colors/blackred | Yes | Designed for this combination |
| colors/dark-blue | Yes | Works with any color scheme |
| typography/serif-neuton | Yes | Font choice independent |
| navigation/miniframes | Yes | Header does not conflict |
