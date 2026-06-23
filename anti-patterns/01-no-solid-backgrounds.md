# Anti-Patterns

This directory contains documented anti-patterns to avoid in Beamer template design.

## Rule #1: No Dark Solid Backgrounds

**Status:** STRICT PROHIBITION

### Problem
Dark solid backgrounds are harsh on the eyes:
- **Solid black (#000000):** Too harsh, causes eye strain, poor contrast with white text
- **Dark gray (#121212, #1A1A1A):** Still too dark, reduces readability
- **Any dark solid color:** Uncomfortable for audiences, especially in bright rooms

### Solution
Use light backgrounds:
- **Preferred:** Off-white (#F5F5F5) or light gray (#EEEEEE)
- **Alternative:** Pure white (#FFFFFF) if projection conditions are controlled
- **Color accents:** Apply dark colors only to elements (headers, bullets, blocks), not the entire background

### Examples

**Bad:**
```latex
\definecolor{bg}{HTML}{121212}  % Dark solid - AVOID
\setbeamercolor{normal text}{fg=white,bg=bg}
```

**Bad:**
```latex
\definecolor{bg}{HTML}{000000}  % Pure black - AVOID
\setbeamercolor{normal text}{fg=white,bg=bg}
```

**Good:**
```latex
\definecolor{bg}{HTML}{F5F5F5}  % Off-white - PREFERRED
\setbeamercolor{normal text}{fg=black,bg=bg}
```

### Rationale
- Reduces eye strain for both presenter and audience
- Better readability in bright rooms
- Follows accessibility guidelines
- More comfortable for long presentations
