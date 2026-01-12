# 03_06 – Risks & Assumptions (Form & Lead Delivery)

This document captures key **risks**, **impact**, and **mitigations** for the Web → PHP → Salesforce pipeline used in the Cal Preserving Google Ads initiative.

---

## 1. Assumptions

1. **Salesforce web-to-lead endpoint is stable and reachable** from the WordPress server over HTTPS.
2. **PHP handler is deployed and version-controlled** by the Web Team.
3. **Salesforce Team owns UTM and duplicate handling** and keeps field mappings up to date.
4. **Marketing Team does not directly edit Salesforce configuration** (e.g., field API names, assignment rules).
5. **Form structure is phase-stable** across Phase 1–3 (no structural changes required).
6. **reCAPTCHA keys are properly configured**, and the Web Team maintains them.

---

## 2. Risks & Mitigations

| ID | Risk                                                                                 | Impact                                                     | Mitigation / Owner          |
|----|--------------------------------------------------------------------------------------|------------------------------------------------------------|-----------------------------|
| R1 | Salesforce web-to-lead endpoint unavailable                                         | Leads may be lost (no local retry/buffer).                | SFDC monitors uptime; WEB can add optional local logging. |
| R2 | Field API names change in Salesforce                                                | Leads may fail silently or lose data.                     | SFDC documents changes; coordinate via change management. |
| R3 | reCAPTCHA misconfiguration                                                          | All leads blocked or excessive spam.                      | WEB validates config in staging; SFDC can monitor anomalies. |
| R4 | UTM mapping misunderstood                                                           | Poor attribution; hard to optimize Google Ads.            | SFDC documents UTM schema; MKT reviews reports regularly. |
| R5 | Multiple lead submits by same person (duplicates)                                   | Duplicated leads / noise in CRM.                          | SFDC decides duplicate strategy (M4); communicates behavior. |
| R6 | Changes to form fields not propagated to PHP or SFDC                                | Missing data; broken SFDC mapping.                        | Change control: all field changes must be reflected in `03_04` contract. |
| R7 | Incorrect LP URL mapping vs campaign structure                                      | Leads land on wrong LP; conversion rate drops.            | MKT + WEB align on `lp_mapping_phase*.csv`; QA before go-live. |
| R8 | Excessive spam submissions despite reCAPTCHA                                        | Noise, wasted time.                                       | WEB can add honeypot / rate limiting if needed (S4 → S5). |
| R9 | No clear ownership for post-launch monitoring                                       | Issues go undetected.                                     | RACI in `03_05` formalizes responsibilities. |

---

## 3. Out-of-Scope (For This Document)

- Detailed Salesforce routing rules (queues, owners, auto-assignment).
- Advanced offline conversion uploads to Google Ads / Meta.
- Deep deduplication rules, merge logic, and opportunity handling.
