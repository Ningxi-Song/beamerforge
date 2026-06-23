# navigation/miniframes

Miniframes outer theme with custom footer. Clean, professional navigation.

## Description

Uses Beamer's miniframes outer theme to show section progress as small dots in the header. Custom footer displays page numbers in italic script.

## Use Cases

- Multi-section presentations
- Conference talks
- Academic seminars
- Course lectures

## Trade-offs

| Pros | Cons |
|------|------|
| Clear section progress | Header can be cluttered with many sections |
| Professional appearance | Requires subsection=false for clean look |
| Custom footer flexibility | Footer may overlap with content |
| Works with most themes | Not suitable for very short talks |

## Configuration

```latex
% Miniframes with no subsection dots
\useoutertheme[subsection=false]{miniframes}

% Remove navigation symbols
\setbeamertemplate{navigation symbols}{}

% Custom footer
\setbeamertemplate{footline}{%
  \leavevmode%
  \hbox{%
    \begin{beamercolorbox}[wd=\paperwidth,ht=2ex,dp=1ex,rightskip=1em]{author in head/foot}%
      \hfill{\itshape\scriptsize \insertframenumber\,/\,\inserttotalframenumber}
    \end{beamercolorbox}%
  }%
}
```

## Parameters

| Parameter | Default | Effect |
|-----------|---------|--------|
| subsection | false | Hide subsection dots |
| footstyle | italic-page | Page number format |

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
| frames/title-center | Yes | Header does not conflict |
