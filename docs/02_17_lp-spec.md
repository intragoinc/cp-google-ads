# Landing Page Implementation Spec — Cal Preserving (Phase 3)

## 1. Purpose

Turn the copy docs:

- `02_08_lp-deck-residential.md`
- `02_09_lp-deck-commercial.md`
- `02_10_lp-siding-residential.md`
- `02_11_lp-siding-commercial.md`
- `02_12_lp-pressure-residential.md`
- `02_13_lp-pressure-commercial.md`
- `02_14_lp-exteriorwood-residential.md`
- `02_15_lp-exteriorwood-commercial.md`
- `02_16_lp-furniture-residential.md`
- `02_18_lp-furniture-commercial.md`

into **consistent, fast, conversion-oriented Elementor pages** that share a common layout and component system.

---

## 2. Platform & Tech

- **CMS:** WordPress  
- **Builder:** Elementor  
- **Theme:** existing Cal Preserving theme  
- **Forms:** Elementor forms or preferred form plugin, posting **directly to Salesforce** (via native post or Attributer.io → SFDC).

Performance goals:

- Lighthouse 80+ on mobile.
- Images WebP where possible.
- Minimal blocking JS/CSS from add-ons.

---

## 3. Standard Layout Skeleton (All LPs)

1. **Hero Section**
   - Full-width hero with:
     - H1 (from LP file “Headline”)
     - Subheadline
     - Primary CTA button: “Request a Free Estimate”
     - Secondary CTA (optional): “Learn About Our Process”
   - Background: relevant high-quality wood/structure image.
   - Above-the-fold form on desktop; below on mobile.

2. **Pain / Problem Section**
   - 2–3 short paragraphs and bullet list from “Problems we solve” in each LP.
   - Layout: 2-column (text + supporting image).

3. **Services / What We Do**
   - Headline: “Our [Service] for [Persona/Property Type]”
   - 3–6 bullets or feature cards describing what’s included.
   - Use icons (prep, repairs, refinishing, protection).

4. **Process Section**
   - “How Our Process Works”
   - 4–8 step timeline (icons + short text).
   - Pull directly from the “Process” sections of each LP.

5. **Why Choose Cal Preserving**
   - 3–5 “proof point” cards:
     - Exterior wood specialists
     - Local Bay Area experience
     - Licensed & insured
     - Workmanship guarantee
     - “You don’t pay until you’re happy” for residential
   - Layout: 3-column or card grid.

6. **Service Areas**
   - Short text plus bullets of regions (Peninsula, East Bay, etc.).
   - Map image optional.

7. **FAQs**
   - FAQ accordion component:
     - Use Q&A from each LP’s FAQ section.
   - 4–6 FAQs per LP.

8. **Primary CTA Footer**
   - “Ready to restore your [surface]?”
   - CTA button anchored to form.
   - Short reassurance text: license/insurance, no obligation.

---

## 4. Form Module Spec

Embedded form (can be reused across LPs):

**Fields:**

- Property Type (radio: Residential / Commercial) — required
- Surfaces to be addressed (multi-checkbox):
  - Deck
  - Railing
  - Siding
  - Fence / Gate
  - Staircase
  - Patio Furniture
  - Trellis / Arbor
  - Gazebo
  - Hardscape (Pressure Washing)
  - Other (text)
- When are you planning to start? (select)
  - ASAP
  - Within 1 month
  - Within 3 months
  - Just exploring options
- Project description (textarea, optional)
- First Name (required)
- Last Name (required)
- Email (required)
- Phone (required)
- Street Address
- City
- State
- ZIP / Postal Code

**Hidden Fields:**

- `lp_slug`
- `utm_source`
- `utm_medium`
- `utm_campaign`
- `utm_content`
- `utm_term`
- `gclid`
- any Attributer.io fields required

**Behavior:**

- On submit:
  - Post to Salesforce (or Attributer.io endpoint) with all mapping from `02_17_sfdc-mapping.csv`.
  - Show thank-you message or redirect to a generic “Thank You” page.
- Validation:
  - Must select **Property Type**.
  - Must select **at least one surface**.
  - Must complete required contact fields.

---

## 5. LP-to-Form Defaults

Each LP should **pre-select context** without hiding options:

- Deck LP:
  - Auto-check “Deck”.
- Siding LP:
  - Auto-check “Siding”.
- Exterior Wood LP:
  - Auto-check “Fence / Gate” or leave blank but highlight those structures above the form.
- Pressure LP:
  - Auto-check “Hardscape (Pressure Washing)”.
- Furniture LP:
  - Auto-check “Patio Furniture”.

Users can still change or add surfaces.

---

## 6. Content Reuse & Components

Create Elementor **Global Widgets** for:

- Hero block (text swapped per LP).
- Process timeline (per service type).
- “Why Cal Preserving” block.
- Contact form block.
- Footer CTA block.

This reduces maintenance and keeps style consistent.

---

## 7. Visual & Brand Notes

- Use Cal Preserving brand colors and typography.
- Avoid stock imagery that looks like other painting companies; favor:
  - Real project photos where available.
  - Close-ups of wood grain, before/after.
- Keep background light and content easy to read.
- Emphasize **wood, not paint**.

---

## 8. QA Checklist (Per LP)

For each LP:

1. Hero:
   - H1 matches copy file.
   - Persona (Residential/Commercial) clear.
2. Form:
   - Hidden fields capturing UTMs + lp_slug.
   - At least one surface auto-checked if appropriate.
3. Process:
   - Steps match LP doc.
4. Guarantee:
   - Residential pages show “You don’t pay until you’re happy.”
   - Commercial pages emphasize workmanship guarantee and operations-friendly process.
5. Mobile:
   - Form and CTA visible within first screen scroll.
6. Test submission:
   - Lead appears in SFDC with correct mapping.
