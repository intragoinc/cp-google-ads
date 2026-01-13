# Cal Preserving Google Ads Initiative — Project Plan

## Team

| Role | Person | Responsibility |
|------|--------|----------------|
| Lead | Brent | Oversight, approvals, business decisions |
| Marketing | Aksha | Google Ads campaigns, keywords, RSAs, optimization |
| Web | Developer | Landing pages, forms, tracking, PHP handler |
| Salesforce | Developer | Field mapping, UTM capture, reporting |

## Current State

- ✅ Web-to-lead form exists in Salesforce
- ✅ Google Ads account exists (replacing underperforming campaigns)
- ✅ Domain/hosting set up
- ✅ Salesforce admin access available
- ⚠️ Partial photography (build with existing, swap later)
- ❌ No landing pages built yet

---

## Timeline Summary

| Phase | Build Time | Learning Wait | Total |
|-------|------------|---------------|-------|
| **Phase 1** | 1.5-3 weeks | 2-3 weeks | **3.5-6 weeks** |
| **Phase 2** | 2-4 days | 2-3 weeks | **2.5-4 weeks** |
| **Phase 3** | 1-2 weeks | 2-4 weeks | **3-6 weeks** |
| **TOTAL** | 3-6 weeks build | 6-10 weeks learning | **8-16 weeks** |

---

## Phase 1: Bay Area, Mixed Persona

### 1.1 Pre-Build Setup & Coordination

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Kickoff meeting - align on scope, URLs, timeline | All | 1 hr | 2 hrs | |
| Confirm LP URL structure with Web | Brent + Web | 1 hr | 2 hrs | `/residential/deck/`, etc. |
| Confirm Salesforce field mapping with SFDC dev | Brent + SFDC | 1 hr | 3 hrs | Review `03_04_web-php-sfdc-field-contract.md` |
| Set up Google Ads conversion tracking (verify) | Aksha | 1 hr | 2 hrs | Confirm existing tracking works |

**Subtotal: 4-9 hours**

---

### 1.2 Landing Page Build (Web Team)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Create Elementor global components (hero, form, process, CTA) | Web | 4 hrs | 8 hrs | Reusable across all LPs |
| Build estimate request form with hidden UTM fields | Web | 2 hrs | 4 hrs | Per `02_17_lp-spec.md` |
| Build LP: `/residential/deck/` | Web | 2 hrs | 4 hrs | From `02_08_lp-deck-residential.md` |
| Build LP: `/residential/siding/` | Web | 2 hrs | 3 hrs | From `02_10_lp-siding-residential.md` |
| Build LP: `/residential/wood-structures/` | Web | 2 hrs | 3 hrs | |
| Build LP: `/residential/pressure/` | Web | 2 hrs | 3 hrs | From `02_12_lp-pressure-residential.md` |
| Build LP: `/residential/` (catch-all) | Web | 2 hrs | 3 hrs | From `02_14_lp-exteriorwood-residential.md` |
| Mobile optimization & QA | Web | 2 hrs | 4 hrs | Lighthouse 80+ target |
| Thank-you page setup | Web | 1 hr | 2 hrs | |

**Subtotal: 19-34 hours (3-5 days)**

---

### 1.3 Salesforce Integration (SFDC Team)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Add/verify custom fields for UTMs | SFDC | 1 hr | 3 hrs | `utm_source__c`, `utm_campaign__c`, etc. |
| Add custom fields for surfaces, property type | SFDC | 1 hr | 2 hrs | Multi-select, picklist |
| Configure PHP handler or update existing web-to-lead | SFDC + Web | 2 hrs | 4 hrs | Map form → SFDC fields |
| Test form submission → lead creation | SFDC | 1 hr | 2 hrs | |
| Verify UTM fields populate correctly | SFDC | 1 hr | 2 hrs | |

**Subtotal: 6-13 hours (1-2 days)**

---

### 1.4 Google Ads Campaign Build (Marketing)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Pause/archive old underperforming campaigns | Aksha | 0.5 hr | 1 hr | Keep for reference |
| Create campaign structure (5 campaigns) | Aksha | 2 hrs | 4 hrs | Bay Area Deck, Siding, Structures, Pressure, Catch-All |
| Create ad groups per campaign (3-4 each) | Aksha | 3 hrs | 5 hrs | ~15 ad groups total |
| Add keywords from `campaign-master-phase-1.csv` | Aksha | 2 hrs | 3 hrs | 47 keywords |
| Add negative keywords (campaign + ad group level) | Aksha | 2 hrs | 3 hrs | |
| Write RSA ad copy (3 RSAs per ad group minimum) | Aksha | 4 hrs | 8 hrs | Headlines, descriptions |
| Configure geo targeting (Bay Area) | Aksha | 1 hr | 2 hrs | |
| Set initial budgets and bidding strategy | Aksha | 1 hr | 2 hrs | Manual CPC recommended initially |

**Subtotal: 15.5-28 hours (2-4 days)**

---

### 1.5 QA & Launch

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| End-to-end test: Ad → LP → Form → SFDC | All | 2 hrs | 4 hrs | Per `03_07_qa-matrix.md` |
| Test each surface LP (5 tests) | Web + SFDC | 1 hr | 2 hrs | Verify lead appears with correct data |
| Fix any issues found | Varies | 2 hrs | 8 hrs | Buffer for fixes |
| Final review and approval | Brent | 1 hr | 2 hrs | |
| Go live | Aksha | 0.5 hr | 1 hr | Enable campaigns |

**Subtotal: 6.5-17 hours (1-2 days)**

---

### 1.6 Phase 1 Learning Period (2-3 weeks)

| Activity | Hours | Notes |
|----------|-------|-------|
| Daily monitoring (15 min/day) | 2.5-5 hrs | Check for issues, spend |
| Weekly optimization review | 2-4 hrs | Query review, negative additions |
| Decision point: Ready for Phase 2? | 1-2 hrs | Review data, align on go/no-go |

**Wait time: 2-3 weeks**
**Active work during wait: 5.5-11 hours**

---

### Phase 1 Totals

| Category | Low | High |
|----------|-----|------|
| Build work | 51 hrs | 101 hrs |
| Calendar time (build) | 1.5 weeks | 3 weeks |
| Learning period | 2 weeks | 3 weeks |
| **Total Phase 1** | **3.5 weeks** | **6 weeks** |

---

## Phase 2: Add Fringe Geos

### 2.1 Campaign Duplication (Marketing)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Duplicate Bay Area campaigns → Fringe | Aksha | 2 hrs | 4 hrs | 4-5 Fringe campaigns |
| Adjust geo targeting for Fringe | Aksha | 1 hr | 2 hrs | |
| Update campaign names | Aksha | 0.5 hr | 1 hr | |
| Set Fringe-specific budgets | Aksha | 0.5 hr | 1 hr | Lower budget initially |
| Review/adjust keywords if needed | Aksha | 1 hr | 2 hrs | |

**Subtotal: 5-10 hours (1 day)**

---

### 2.2 Web & Salesforce (Minimal Changes)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Verify LPs work for Fringe traffic | Web | 0.5 hr | 1 hr | Same LPs, no new builds |
| Add `utm_geo` tracking if not present | SFDC | 1 hr | 2 hrs | bay_area vs fringe |
| Test Fringe ZIP code submission | SFDC | 0.5 hr | 1 hr | |

**Subtotal: 2-4 hours**

---

### 2.3 QA & Launch

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Test Fringe campaigns → LP → SFDC | All | 1 hr | 2 hrs | |
| Verify geo reporting in SFDC | SFDC | 0.5 hr | 1 hr | |
| Go live Fringe campaigns | Aksha | 0.5 hr | 1 hr | |

**Subtotal: 2-4 hours**

---

### 2.4 Phase 2 Learning Period (2-3 weeks)

| Activity | Hours | Notes |
|----------|-------|-------|
| Monitor for Fringe-specific issues | 2-4 hrs | Job size, routing concerns |
| Optimization review | 2-4 hrs | Budget allocation between geos |
| Decision point: Ready for Phase 3? | 1-2 hrs | |

**Wait time: 2-3 weeks**
**Active work during wait: 5-10 hours**

---

### Phase 2 Totals

| Category | Low | High |
|----------|-----|------|
| Build work | 9 hrs | 18 hrs |
| Calendar time (build) | 2 days | 4 days |
| Learning period | 2 weeks | 3 weeks |
| **Total Phase 2** | **2.5 weeks** | **4 weeks** |

---

## Phase 3: Persona Split (Residential + Commercial)

### 3.1 Commercial Landing Pages (Web Team)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Build LP: `/commercial/deck/` | Web | 2 hrs | 4 hrs | From `02_09_lp-deck-commercial.md` |
| Build LP: `/commercial/siding/` | Web | 2 hrs | 3 hrs | From `02_11_lp-siding-commercial.md` |
| Build LP: `/commercial/wood-structures/` | Web | 2 hrs | 3 hrs | |
| Build LP: `/commercial/pressure/` | Web | 2 hrs | 3 hrs | From `02_13_lp-pressure-commercial.md` |
| Build LP: `/commercial/` (catch-all) | Web | 2 hrs | 3 hrs | From `02_15_lp-exteriorwood-commercial.md` |
| Update CTA to "Request a Proposal" on commercial LPs | Web | 1 hr | 2 hrs | |
| Mobile optimization & QA | Web | 2 hrs | 4 hrs | |

**Subtotal: 13-22 hours (2-3 days)**

---

### 3.2 Campaign Restructure (Marketing)

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Split Bay Area campaigns by persona | Aksha | 3 hrs | 5 hrs | 5 → 10 campaigns |
| Split Fringe campaigns by persona | Aksha | 2 hrs | 4 hrs | 4 → 8 campaigns |
| Update LP URLs in all campaigns | Aksha | 2 hrs | 3 hrs | Point to correct persona LP |
| Adjust ad copy for commercial tone | Aksha | 3 hrs | 6 hrs | "Proposal" vs "Estimate" |
| Set persona-specific budgets | Aksha | 1 hr | 2 hrs | ~60% residential, 40% commercial |
| Add commercial-specific keywords if any | Aksha | 1 hr | 2 hrs | HOA, property management terms |

**Subtotal: 12-22 hours (2-3 days)**

---

### 3.3 Salesforce Updates

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Add `utm_persona` field if not present | SFDC | 1 hr | 2 hrs | residential vs commercial |
| Verify persona reporting works | SFDC | 1 hr | 2 hrs | |
| Test commercial form submissions | SFDC | 0.5 hr | 1 hr | |

**Subtotal: 2.5-5 hours**

---

### 3.4 QA & Launch

| Task | Owner | Low | High | Notes |
|------|-------|-----|------|-------|
| Test all residential campaign → LP paths | All | 1 hr | 2 hrs | 5 surfaces × 2 geos |
| Test all commercial campaign → LP paths | All | 1 hr | 2 hrs | 5 surfaces × 2 geos |
| Verify CTA differences (Estimate vs Proposal) | Web | 0.5 hr | 1 hr | |
| End-to-end SFDC lead tests (6 variations) | SFDC | 1 hr | 2 hrs | Per `03_07_qa-matrix.md` |
| Fix any issues | Varies | 2 hrs | 6 hrs | |
| Final review and approval | Brent | 1 hr | 2 hrs | |
| Go live Phase 3 | Aksha | 0.5 hr | 1 hr | |

**Subtotal: 7-16 hours (1-2 days)**

---

### 3.5 Phase 3 Learning Period (2-4 weeks)

| Activity | Hours | Notes |
|----------|-------|-------|
| Compare residential vs commercial performance | 2-4 hrs | |
| Optimization for persona-specific patterns | 2-4 hrs | |
| Consider smart bidding transition | 1-2 hrs | If 50+ conversions reached |

**Wait time: 2-4 weeks**
**Active work during wait: 5-10 hours**

---

### Phase 3 Totals

| Category | Low | High |
|----------|-----|------|
| Build work | 34.5 hrs | 65 hrs |
| Calendar time (build) | 1 week | 2 weeks |
| Learning period | 2 weeks | 4 weeks |
| **Total Phase 3** | **3 weeks** | **6 weeks** |

---

## Full Project Summary

| Phase | Build Hours | Calendar (Build) | Learning Wait | Total Duration |
|-------|-------------|------------------|---------------|----------------|
| **Phase 1** | 51-101 hrs | 1.5-3 weeks | 2-3 weeks | **3.5-6 weeks** |
| **Phase 2** | 9-18 hrs | 2-4 days | 2-3 weeks | **2.5-4 weeks** |
| **Phase 3** | 35-65 hrs | 1-2 weeks | 2-4 weeks | **3-6 weeks** |
| **TOTAL** | **95-184 hrs** | **3-6 weeks** | **6-10 weeks** | **8-16 weeks** |

---

## Work Distribution by Role

| Role | Phase 1 | Phase 2 | Phase 3 | Total |
|------|---------|---------|---------|-------|
| **Brent (Lead)** | 4-8 hrs | 2-4 hrs | 2-4 hrs | **8-16 hrs** |
| **Aksha (Marketing)** | 19-34 hrs | 7-14 hrs | 14-26 hrs | **40-74 hrs** |
| **Web Developer** | 21-38 hrs | 1-2 hrs | 15-26 hrs | **37-66 hrs** |
| **Salesforce Developer** | 7-15 hrs | 2-4 hrs | 3-6 hrs | **12-25 hrs** |

---

## Key Milestones

1. **Phase 1 Go-Live** — First ads running, leads flowing to Salesforce
2. **Phase 1 Data Checkpoint** — 30-50 conversions, ready for Phase 2 decision
3. **Phase 2 Go-Live** — Fringe campaigns active
4. **Phase 2 Data Checkpoint** — Geo comparison data, ready for Phase 3 decision
5. **Phase 3 Go-Live** — Full persona split active
6. **System Maturity** — Consider smart bidding, ongoing optimization mode

---

## Risks That Could Extend Timeline

| Risk | Impact | Mitigation |
|------|--------|------------|
| LP design revisions | +1-2 weeks | Approve wireframes before build |
| Salesforce field issues | +3-5 days | Early field contract review |
| Low conversion volume | +2-4 weeks learning | Increase budget or extend wait |
| Team availability gaps | +1-2 weeks per phase | Confirm capacity upfront |
| Photography delays | Minimal | Use existing images, swap later |

---

## Notes

- Photography: Build LPs with existing images, swap in new assets when available
- Google Ads: Replacing existing campaigns means historical data helps learning period
- Salesforce: Web-to-lead exists, just need UTM field additions
- All documentation exists in `/docs/` folder for reference
