# Pricing, Discount & Profit Leakage — Superstore Analysis

## Objective
Identify profit leakage driven by discounting practices, loss-making deals,
and structurally weak pricing across segments and subcategories, and translate
findings into clear, enforceable pricing control actions.

---

## Business Questions Answered
- How does discounting impact profitability?
- Which discount ranges are structurally value-destructive?
- Which subcategories and segments rely excessively on discounts?
- How much profit is destroyed by clearly avoidable “bad deals”?
- Where should discounting be capped, restricted, or redesigned?

---

## Dataset Overview
- **orders** — Line-item level transactional data  
  (sales, profit, discount, quantity, product, segment, region)
- **returns** — Order-level return flags (not central to this project)
- **managers** — Region-to-manager mapping (not used here)

---

## Analytical Approach
- Discount bucketization (0%, 0–10%, 10–20%, 20–30%, 30%+)
- Profit margin analysis by discount level
- Revenue and profit exposure measurement
- Identification of:
  - Structurally loss-making subcategories
  - High-discount, negative-profit “bad deals”
- Concentration (Pareto-style) analysis of profit leakage
- Translation of findings into pricing rules and controls

---

## Key Insights
- Discounts above **20%** are consistently value-destructive across all segments
- High-discount transactions represent a meaningful share of revenue but
  destroy a disproportionate share of total profit
- A relatively small number of **bad deals** drive nearly half of total losses
- Profit leakage is **concentrated**, not systemic
- Profit recovery requires **targeted pricing controls**, not broad price increases

---

## Recommendations
- Enforce hard discount caps above 20% for identified subcategories
- Introduce approval thresholds for high-discount deals
- Eliminate structurally unprofitable discounting patterns
- Preserve flexibility only where discounting shows clear volume response

---

## Tools Used
- Python (pandas, numpy)
- Jupyter / Google Colab
- Exploratory visualization (matplotlib)

---

## Files in This Repository
- `P2_pricing_discount_profit_leakage.ipynb` — Full analysis notebook
- `P2_pricing_discount_profit_leakage.html` — Rendered notebook