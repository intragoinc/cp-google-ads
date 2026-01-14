# 03_07 – QA Matrix (Phases 1–3)

This matrix defines what must be tested in each rollout phase to ensure the Web → PHP → Salesforce pipeline works correctly and stays aligned with the Google Ads structure.

Phases:

- **Phase 1** – Bay Area only, mixed persona (Residential/Commercial together in campaigns)
- **Phase 2** – Bay Area + Fringe, still mixed persona
- **Phase 3** – Bay Area + Fringe, split by persona (Residential vs Commercial) with dedicated LPs

---

## 1. Phase 1 – Bay Area, Mixed Persona

**Scope:**

- Campaigns: Deck, Siding, Structures, Pressure, Catch-All (Bay Area only).
- LP: Residential-focused copy but not strictly split from commercial yet.
- Form: See `02_17_lp-spec.md` (Section 4: Form Module Spec).

**QA Checklist:**

- [ ] LP loads correctly for each campaign.
- [ ] Form validation works (required fields, reCAPTCHA).
- [ ] Single test submit per surface type (Deck, Siding, Structures, Pressure, Catch-All).
- [ ] Each test submit appears in Salesforce as a Lead with:
  - [ ] Correct property type.
  - [ ] Correct surfaces multi-select.
  - [ ] Address fields populated.
  - [ ] UTM fields populated (if present).
- [ ] Thank-you behavior / redirect works as expected.
- [ ] No obvious spam leakage (recaptcha functioning).

---

## 2. Phase 2 – Bay Area + Fringe, Mixed Persona

**Scope Additions:**

- New campaigns for **Fringe** geos (copy of Bay Area structure).
- LP URLs may remain the same (no geo in path at this time).

**Additional QA Checklist:**

- [ ] New Fringe campaigns correctly mapped to the right LPs.
- [ ] At least one test lead from a Bay Area ZIP and one from a Fringe ZIP.
- [ ] Salesforce reports can filter by **campaign** to distinguish Bay Area vs Fringe.
- [ ] No change to form structure; confirm previously passing tests still pass.
- [ ] Budget and geo targeting confirmed inside Google Ads (not in this doc, but as part of Go-Live QA).

---

## 3. Phase 3 – Bay Area + Fringe, Persona Split

**Scope Additions:**

- Campaigns split by **persona**:
  - Residential
  - Commercial
- Dedicated LPs per **persona + surface**, e.g.:
  - `/residential/deck/`
  - `/commercial/deck/`
  - (etc.)

**Additional QA Checklist:**

- [ ] Residential campaigns point to **residential** LPs only.
- [ ] Commercial campaigns point to **commercial** LPs only.
- [ ] Residential LPs use CTA: **“Request a Free Estimate”**.
- [ ] Commercial LPs use CTA: **“Request a Proposal”**.
- [ ] Form structure is identical on residential vs commercial LPs.
- [ ] Test leads from:
  - [ ] Residential Deck
  - [ ] Residential Siding
  - [ ] Residential Structures
  - [ ] Commercial Deck
  - [ ] Commercial Siding
  - [ ] Commercial Structures
- [ ] In Salesforce, persona-specific reporting works (using `Property_Type__c`).
- [ ] UTM fields and LP slug/URL reflect residential vs commercial correctly.

---

## 4. Regression Expectations

For every phase:

- If the **form structure** is changed:
  - Update `02_17_lp-spec.md` (Section 4: Form Module Spec).
  - Update `03_04_web-php-sfdc-field-contract.md`.
  - Re-run regression QA for all active phases.

- If **new campaigns** or **LPs** are added:
  - Update campaign master and LP mapping CSVs.
  - Add at least minimal QA cases for the new combinations.

This ensures the funnel remains robust as Cal Preserving scales or iterates.
