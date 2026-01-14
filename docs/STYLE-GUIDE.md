# Documentation Style Guide

This guide defines conventions for creating and maintaining documentation in the `cp-google-ads` repository.

---

## File Naming

### Numbered Documents

Use the pattern: `XX_YY_descriptive-name.ext`

- `XX` = Section number (01, 02, 03, 04)
- `YY` = Document number within section (01, 02, 03...)
- `descriptive-name` = Kebab-case description
- `ext` = File extension (.md, .mdx, .csv)

**Examples:**
- `01_01_executive-context.mdx`
- `02_08_lp-deck-residential.md`
- `03_01_sfdc-mapping.csv`

### Non-Numbered Documents

Use kebab-case for all other files:

**Examples:**
- `campaign-master-phase-1.csv`
- `project-overview.txt`
- `commercial-lp-wireframe.html`

### Avoid

- Spaces in filenames
- Special characters (parentheses, commas, etc.)
- PascalCase or camelCase
- Underscores outside the numbered prefix pattern

---

## Section Numbers

| Section | Topic |
|---------|-------|
| 01_xx | Context & Orientation |
| 02_xx | Segmentation, Canonical, Creative, Landing Pages |
| 03_xx | Attribution, Salesforce, Reporting, QA |
| 04_xx | SEO & Web Alignment |

---

## Document Structure

### Standard Header

Start each document with a level-1 heading that includes the document ID:

```markdown
# 02_08 — LP: Deck (Residential)
```

Or for non-numbered docs:

```markdown
# Campaign Master — Phase 1
```

### Section Headings

Use sentence case for headings (capitalize first word and proper nouns only):

```markdown
## 1. Purpose
## 2. Target audience
## 3. Key messages
```

**Avoid ALL CAPS headings** in new documents.

### Numbered Sections

For documents with many sections, use numbered headings:

```markdown
## 1. Overview
## 2. Requirements
## 3. Implementation
```

---

## Formatting

### Lists

Use `-` for unordered lists:

```markdown
- First item
- Second item
- Third item
```

Use `1.` for ordered lists:

```markdown
1. First step
2. Second step
3. Third step
```

### Tables

Use standard markdown tables with header row:

```markdown
| Column A | Column B | Column C |
|----------|----------|----------|
| Value 1  | Value 2  | Value 3  |
```

### Code and File References

Use backticks for:
- File names: `campaign-master-phase-1.csv`
- Field names: `utm_source__c`
- Code snippets: `property_type = "residential"`

### Emphasis

- **Bold** for key terms on first use
- *Italics* for emphasis within sentences
- Avoid underlining (not supported in markdown)

---

## Links and References

### Internal Links

Use relative paths from the docs folder:

```markdown
See [SFDC Mapping](./03_01_sfdc-mapping.md) for field definitions.
```

### Section References

When referencing a section within another document:

```markdown
See `02_17_lp-spec.md` Section 4: Form Module Spec
```

### External Links

Use descriptive link text (not "click here"):

```markdown
Review the [Google Ads documentation](https://ads.google.com/...) for details.
```

---

## CSV Files

### Headers

Use snake_case for column headers:

```csv
campaign_name,ad_group,keyword,match_type,final_url
```

### Values

- Use double quotes for values containing commas
- Use consistent casing within columns
- Avoid trailing commas

---

## Archive Folder

### When to Archive

Move files to `_archive/` when:
- Document is superseded by a newer version
- Content is no longer relevant but should be preserved

### Archive Naming

Prefix archived files with `Archive_`:

```
Archive_01_02_segmentation-taxonomy-old.md
Archive_02_01_campaign-export-old.csv
```

### Archive README

The `_archive/README.md` should note that files are for historical reference only.

---

## README.mdx Maintenance

When adding new documents:

1. Add the file to the appropriate section in `README.mdx`
2. Use the standard link format: `- [filename.ext](./filename.ext)`
3. Add a brief description if the filename isn't self-explanatory:
   ```markdown
   - [filename.ext](./filename.ext) — Brief description
   ```

---

## Version Notes

- **Created:** January 2026
- **Applies to:** All new documentation in `/docs`
- **Existing docs:** Not required to be updated for style compliance, but should follow these conventions when edited
