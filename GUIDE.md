# Design Guide — Human Review Checklist

Use this guide when reviewing or designing Beamer themes. Each section maps to a decision point in the layer system.

---

## 1. Foundation Layer Decisions

These are permanent. Choose once, keep forever.

### 1.1 Page Geometry

| Decision | Options | Recommendation |
|----------|---------|----------------|
| Aspect ratio | 4:3, 16:9 | 16:9 for modern screens, 4:3 for print |
| Margins | narrow, normal, wide | Normal (2.5cm左右) for readability |
| Column layout | single, two-column, mixed | Single for most slides, two-column for comparisons |

**Checklist:**
- [ ] Content does not touch frame edges
- [ ] At least 2cm margin on all sides
- [ ] Two-column layout has visible gutter spacing

### 1.2 Frame Types

| Frame Type | Purpose | Customization |
|------------|---------|---------------|
| Title page | First impression | Background, logo placement, author block |
| Section page | Topic transitions | Numbering style, background treatment |
| Content page | Main content | Title bar style, body area |
| Summary page | Key takeaways | Highlight style, block placement |
| Appendix page | Supporting material | Simplified layout, smaller fonts |

**Checklist:**
- [ ] Title page fits author, title, subtitle, date, institution
- [ ] Section page title fits on one line
- [ ] Content page title fits on one line
- [ ] All frame types share consistent footer

### 1.3 Navigation

| Element | Options | Trade-off |
|---------|---------|-----------|
| Header | None, short title, institution logo | Cleaner vs. more info |
| Footer | Page number, author, date, title | Context vs. clutter |
| Navigation bar | Mini frames, section dots, none | Progress tracking vs. distraction |

**Checklist:**
- [ ] Footer is identical on every slide
- [ ] Page numbers are readable but not prominent
- [ ] Navigation aids do not compete with content

---

## 2. Variant Layer Decisions

These are swappable. Change freely to create new themes.

### 2.1 Colors

| Element | Decision | Options |
|---------|----------|---------|
| Primary | Main brand color | Blue, green, red, gray, custom |
| Secondary | Accent color | Complementary to primary |
| Background | Slide background | White, off-white, dark, gradient |
| Text | Body text color | Black, dark gray, white (on dark) |
| Highlight | Emphasis color | Bright accent, matches secondary |

**Checklist:**
- [ ] Primary color has sufficient contrast with background (WCAG AA: 4.5:1)
- [ ] Secondary color does not clash with primary
- [ ] Text is readable at projection distance
- [ ] Highlight color stands out but is not garish
- [ ] Color scheme works in both bright and dim rooms

**Quick contrast check:**
```
Light background + dark text   → Safe for bright rooms
Dark background + light text   → Safe for dim rooms
Mixed (gradient)               → Test both conditions
```

### 2.2 Typography

| Element | Decision | Options |
|---------|----------|---------|
| Serif font | Formal/academic | Computer Modern, Palatino, Times |
| Sans-serif font | Modern/clean | Helvetica, Arial, Lato, Source Sans |
| Monospace font | Code/technical | Courier, Consolas, Fira Code |
| Body size | Readability | 18pt minimum, 20-22pt preferred |
| Title size | Hierarchy | 28-36pt |
| Line height | Density | 1.2-1.5x body size |

**Checklist:**
- [ ] Body text ≥ 18pt (audience reads from back of room)
- [ ] Title font is visibly larger than body
- [ ] No font size changes within body text (no \Large, \large)
- [ ] Serif/sans choice is consistent throughout
- [ ] Monospace only for code, never for body text

**Hierarchy rule:**
```
Title:       28-36pt   (what the slide is about)
Subtitle:    20-24pt   (supporting context)
Body:        18-22pt   (main content)
Footnote:    12-14pt   (sources, notes)
```

### 2.3 Decorations

| Element | Purpose | Implementation |
|---------|---------|----------------|
| Background image | Visual interest | tikz, \setbeamertemplate{background} |
| Color blocks | Section dividers | tikz rectangles, \rule |
| Geometric shapes | Modern feel | tikz circles, triangles, lines |
| Logo placement | Branding | Header/footer, corner placement |
| Gradient bars | Visual flow | tikz \shade, \pgfdeclarehorizontalshading |

**Checklist:**
- [ ] Decorations do not compete with content
- [ ] Background images are low-contrast or semi-transparent
- [ ] Decorative elements are consistent across all slides
- [ ] Logo does not overlap with title or content area
- [ ] Gradients are subtle, not distracting

### 2.4 Emphasis

| Element | Purpose | Restriction |
|---------|---------|-------------|
| Block | Key finding | Max 2-3 per entire deck |
| Bold | Important term | Max 1 per slide |
| Color highlight | Key number | Max 1 per slide |
| Italic | Definition/note | Sparingly |
| Code block | Technical content | Use listings package |

**Checklist:**
- [ ] Blocks appear at most 2-3 times in entire deck
- [ ] Bold text appears at most once per slide
- [ ] Colored text appears at most once per slide
- [ ] Emphasis elements have consistent styling
- [ ] Block text size matches surrounding body text

### 2.5 Animation

| Effect | Use case | Avoid |
|--------|----------|-------|
| None | Formal presentations | — |
| Fade | Subtle transitions | Overuse |
| Slide | Directional flow | Inconsistent directions |
| Wipe | Progressive reveal | Too fast |
| Appear | Bullet-by-bullet | More than 4 steps |

**Checklist:**
- [ ] Transitions are consistent throughout deck
- [ ] No animation slower than 0.5s
- [ ] Bullet reveals do not exceed 4 steps per slide
- [ ] Animation serves content, not decoration

---

## 3. Content Layer Decisions

Adapt per presentation.

### 3.1 Content Block Patterns

| Pattern | When to use |
|---------|-------------|
| Bullet list (3-5 items) | Main points, findings |
| Figure + caption | Charts, graphs, images |
| Minimal table | Coefficients, comparisons |
| Two-column | Before/after, comparison |
| Quote block | Citations, definitions |
| Code block | Technical implementation |

**Checklist:**
- [ ] 3-5 bullet points per slide maximum
- [ ] Each bullet fits on one line
- [ ] Figures are centered and ≥ 80% text width
- [ ] Tables show only essential columns
- [ ] Two-column layouts have balanced content

### 3.2 Slide Density

**The 60-65% rule:**
- Content should fill 60-65% of the slide area
- Whitespace occupies 35-40%
- Never let content exceed 75%

**Visual check:**
```
[Title bar: ~15%]
[                  ]
[   Content: ~65%  ]
[                  ]
[Footer bar: ~10%]
```

**Checklist:**
- [ ] Bottom third is not empty
- [ ] Content does not touch frame edges
- [ ] Horizontal balance is even (no left-clustering)
- [ ] Vertical spacing is distributed, not concentrated

---

## 4. Anti-Patterns to Avoid

| Anti-Pattern | Problem | Fix |
|--------------|---------|-----|
| \Large in body text | Breaks hierarchy | Use bold or color |
| Paragraph text on slides | Audience reads instead of listens | Break into bullets |
| Block on every slide | Blocks lose emphasis | Reserve for main finding |
| Dense regression table | Cannot process in 30s | Show only key coefficient |
| Empty bottom third | Wasted space | Add content or redistribute |
| Left-clustered content | Unbalanced whitespace | Use \centering |
| Mixed font sizes | Confusing hierarchy | Consistent size per category |
| Label titles ("Data") | No information conveyed | Use conclusion titles |

---

## 5. Review Workflow

When reviewing a Beamer deck:

1. **Layer audit**: Identify which layer each element belongs to
2. **Foundation check**: Are frame types, layout, navigation consistent?
3. **Variant check**: Are colors, fonts, decorations consistent?
4. **Content check**: Is each slide one point? 3-5 bullets? Conclusion title?
5. **Emphasis check**: Blocks ≤ 3 in deck? Bold ≤ 1 per slide?
6. **Density check**: 60-65% content, 35-40% whitespace?
7. **Contrast check**: All text readable at projection distance?
8. **Anti-pattern scan**: Check against the anti-patterns table above
