# User Workflow

This document defines how users interact with BeamerForge to design Beamer templates.

---

## Core Principle

Design flows from **vague to specific**. Never ask users to pick individual elements upfront.

```
Vibe → Direction → Palette → Details → Template
```

---

## Step 1: Vibe (One Sentence)

User describes the overall feeling in natural language. No technical terms.

**Examples:**
- "I want something modern and techy"
- "Make it look like a serious academic talk"
- "Something clean and minimal"
- "Bold and colorful, like a startup pitch"

**System response:** Acknowledge the vibe. Do NOT show element lists yet.

---

## Step 2: Direction (2-3 Options)

System offers 2-3 visual directions based on the vibe. Each direction is a **mood board** — a single slide showing color palette, font feel, and overall tone.

**Example for "modern and techy":**

| Direction | Description |
|-----------|-------------|
| Dark mode | Dark background, neon accents, monospace fonts |
| Light tech | Clean white, blue accents, sans-serif |
| Gradient | Color gradients, bold typography, dynamic feel |

**System response:** Show visual previews (compiled PDF slides). Ask user to pick one.

---

## Step 3: Palette (Color + Font Combination)

System suggests 2-3 specific combinations within the chosen direction. Each combination is a **pairing** of color theme + font family.

**Example for "Dark mode":**

| Option | Colors | Font |
|--------|--------|------|
| A | Teal + Orange | Fira Sans |
| B | Purple + Cyan | Source Sans Pro |
| C | Blue + Gold | Inter |

**System response:** Show side-by-side comparison slides. Ask user to pick one.

---

## Step 4: Details (Fine-tuning)

System asks about specific elements ONE AT A TIME, not all at once.

**Order:**
1. Bullet style (show 3-4 options)
2. Block style (show 2-3 options)
3. Navigation (show 2-3 options)
4. Title page layout (show 2 options)

**System response:** For each decision, show visual preview. Confirm before moving to next.

---

## Step 5: Template Generation

System generates complete template from selected elements.

**Output:**
- Complete `.tex` file
- `README.md` with customization instructions
- Preview PDF

---

## Decision Tree

```
User says: "I want X"
│
├── X is vague ("modern", "academic", "clean")
│   → Go to Step 2: Show directions
│
├── X is a direction ("dark mode", "minimal")
│   → Go to Step 3: Show palettes
│
├── X is a palette ("Fira Sans + dark blue")
│   → Go to Step 4: Ask about details
│
└── X is specific ("triangle bullets, no footer")
    → Go to Step 5: Generate template
```

---

## Anti-Patterns

| Don't | Do |
|-------|-----|
| "Pick a color from this list of 20" | "Here are 3 palettes that match your vibe" |
| "Choose your font, bullets, blocks, navigation..." | "Let's start with bullets. Here are 4 styles" |
| Show all options at once | One decision at a time |
| Technical jargon upfront | Natural language, technical terms later |

---

## File Structure Per Template

When a template is generated, it creates:

```
templates/{template-name}/
├── main.tex              # Complete presentation
├── theme.sty or .cls     # Theme file (if custom)
├── content/              # Slide sections
├── fig/                  # Images
├── font/                 # Bundled fonts (if needed)
├── preview.pdf           # Visual preview
└── README.md             # Customization guide
```

---

## Integration with Catalog

The catalog (elements/) serves as:
1. **Source material** for AI to compose templates
2. **Reference** for users who want to understand what's available
3. **Extension point** for adding new elements

AI reads catalog elements as context when generating templates. Users never need to browse catalog directly unless they want to.
