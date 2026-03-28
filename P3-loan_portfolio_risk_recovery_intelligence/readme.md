# Pricing, Discount & Profit Leakage Intelligence
### Structural Margin Erosion Analysis (Python)

This project analyses transaction-level discounting behaviour to identify structural
profit leakage, value-destructive pricing patterns, and concentration of margin
erosion across segments and subcategories.

Instead of asking "What are our discounts?", this analysis asks:

- At what discount threshold does margin collapse?
- How much total profit is destroyed by high-discount deals?
- Is leakage systemic or concentrated?
- Which pricing controls would recover margin fastest?

The output is a discount governance framework.

---

## Dataset

**Source:** Superstore transactional dataset
- `orders` — Line-item sales, profit, discount, segment, subcategory

Modelled at transaction level to isolate pricing effects.

> Note: Originally built in Google Colab. To run locally, replace the `drive.mount()`
> cell with your local file path. Superstore dataset available via Tableau Public or Kaggle.

---

## Tools & Techniques

- Python (pandas, numpy)
- Discount bucketisation: 0% · 0–10% · 10–20% · 20–30% · 30%+
- Margin analysis by discount bucket
- Revenue vs profit exposure comparison
- Pareto-style loss concentration analysis

---

## Key Analytical Insights

---

### 1️⃣ Transaction-Level Discount vs Profit

![Discount vs Profit](images/discount_vs_profit.png)

Profit dispersion collapses sharply beyond 20% discount.
High-discount transactions cluster consistently in negative profit territory.
The 20% level is the structural break point — not gradual decline.

---

### 2️⃣ Profit Margin by Discount Bucket

![Margin by Discount Bucket](images/margin_by_discount_bucket.png)

| Discount Level | Profit Margin |
|---|---|
| 0% | ~30% |
| 0–10% | ~17% |
| 10–20% | ~12% |
| 20–30% | Negative |
| 30%+ | ~–48% |

Discounts above 20% consistently destroy value across all product categories.

---

### 3️⃣ Revenue vs Profit Exposure in High-Discount Buckets

![Revenue vs Profit Exposure](images/revenue_vs_profit_high_discount.png)

High-discount buckets (20–30% and 30%+) represent a meaningful share of revenue
but generate deeply negative profit contribution.

This is the core leakage pattern: revenue is recorded, profit is destroyed.

---

### 4️⃣ Top Loss-Making Subcategories

![Top Loss Subcategories](images/top_loss_subcategories.png)

Three subcategories drive all structural losses:
- **Tables** — single largest loss driver (~–$17,700)
- **Bookcases** — second largest (~–$3,400)
- **Supplies** — third (~–$1,200)

All three carry average discount rates 2–3× the portfolio norm.

---

### 5️⃣ Segment-Level Impact at High Discounts

![Segment High Discount Margin](images/segment_high_discount_margin.png)

All three customer segments (Consumer, Corporate, Home Office) show:
- Negative margin at 20–30% discount (~–10%)
- Severely negative margin at 30%+ discount (–39% to –52%)

High-discount destruction is not segment-specific — it is universal.

---

### 6️⃣ Loss Concentration (Pareto Analysis)

![Cumulative Loss Share](images/cumulative_loss_share.png)

~80% of total losses concentrate in Tables alone.
All losses (100%) sit within just 3 subcategories.

Profit leakage is not systemic — it is surgically addressable.

---

## Structural Conclusion

Discounting above 20% is not a growth lever. It is a margin destruction mechanism.

1,885 transactions identified as "bad deals" (discount ≥20%, profit ≤0) —
contributing ~$481K revenue but generating net losses invisible at aggregate level.

---

## Pricing Governance Framework

| Discount Level | Policy Recommendation |
|---|---|
| 0–10% | Fully allowed |
| 10–20% | Standard approval |
| 20–30% | Exception-based approval only |
| 30%+ | Prohibited unless strategic sign-off |

**Subcategory caps required for:** Tables · Bookcases · Supplies

---

## Files in This Folder

- `P2_pricing_discount_profit_leakage.ipynb`
- `P2_pricing_discount_profit_leakage.html`

---

## Executive Summary

This project moves pricing analytics from descriptive reporting to enforceable
pricing control design. It applies structured financial logic to discount governance,
isolating the precise point where revenue growth turns into profit leakage.
