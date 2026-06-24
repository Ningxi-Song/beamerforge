# navigation/soft-miniframes

Soft miniframes navigation inspired by pale editorial slide headers: section labels are small, lightly tinted, and paired with small circular progress marks.

## Description

This variant keeps Beamer's standard `miniframes` headline and only changes the visual treatment. It adds a pale top rule, muted section labels, and small circular frame markers. The active marker is filled with a slightly stronger accent.

## Use Cases

- Minimal academic presentations
- Editorial or lightly branded slide decks
- Talks with a small number of sections
- Templates where a full navigation bar would feel too heavy

## Trade-offs

| Pros | Cons |
|------|------|
| Subtle progress cue | Too small for very large lecture rooms |
| Keeps content area clean | Long section titles still need restraint |
| Works well with pale palettes | Less visible on low-contrast projectors |
| Uses Beamer's standard miniframes headline | Best for short-to-medium decks |

## Configuration

```latex
\setbeamercolor{section in head/foot}{bg=white, fg=primary!45}
\setbeamercolor{subsection in head/foot}{bg=white, fg=primary!45}
\setbeamercolor{upper separation line head}{bg=primary!22}
\setbeamercolor{lower separation line head}{bg=primary!10}
\setbeamerfont{section in head/foot}{size=\fontsize{5.5pt}{6.4pt}\selectfont,series=\bfseries}
\setbeamerfont{subsection in head/foot}{size=\fontsize{5.5pt}{6.4pt}\selectfont,series=\bfseries}

\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}
\makeatletter
\beamer@compressfalse
\setbeamertemplate{mini frame}{%
  \tikz[baseline=-0.55ex]{\draw[primary!38,line width=0.32pt] (0,0) circle[radius=0.045cm];}%
}
\setbeamertemplate{mini frame in current subsection}{%
  \tikz[baseline=-0.55ex]{\filldraw[primary!58,draw=primary!58,line width=0.32pt] (0,0) circle[radius=0.045cm];}%
}
\setbeamertemplate{mini frame in other subsection}{%
  \tikz[baseline=-0.55ex]{\draw[primary!28,line width=0.32pt] (0,0) circle[radius=0.045cm];}%
}
\makeatother
```

## Compatibility

| Element | Compatible | Notes |
|---------|------------|-------|
| colors/blackred | Yes | Use `primary` or `redblack` as the accent |
| typography/serif-neuton | Yes | Small labels pair well with editorial serif themes |
| frames/title-center | Yes | Plain title frames can hide the header |
| content/figures | Yes | Header leaves the content area mostly untouched |
