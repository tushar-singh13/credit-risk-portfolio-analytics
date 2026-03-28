# Loan Portfolio Risk & Recovery Intelligence
### From Default Metrics to Credit Policy Decisions (Python + Power BI)

This project analyses a 500K+ loan consumer portfolio to identify structural risk
multipliers, economic loss concentration, pricing inflection failure, and explicit
credit policy interventions.

This is not a machine learning project.

It is a **portfolio decision intelligence framework** designed to answer:

> If this were a live ₹500–1000 Cr lending book, what credit rule would I change tomorrow?

---

## Dataset

**Source:** Lending Club Accepted Loans (2007–2018)
**Size:** 500,000 records
**Available at:** [Kaggle — Lending Club Loan Data](https://www.kaggle.com/datasets/wordsforthewise/lending-club)

> Note: Originally built in Google Colab. To run locally, replace the `drive.mount()`
> cell with your local file path to the dataset CSV.

---

## Tools Used

- Python (pandas, numpy, matplotlib, seaborn)
- Segmentation & binning logic
- Loss decomposition
- Pareto concentration analysis
- Power BI (executive dashboard layer)

No machine learning. Focus: decision intelligence, not prediction accuracy.

---

## Executive Dashboard (Power BI)

### Portfolio Overview

![Portfolio Overview](images/portfolio_overview.jpeg)

**Key metrics:** 500K loans · 15.8% default rate · $455.6M total net loss · 7.9% avg recovery rate

---

### Risk Segmentation Deep Dive

![Risk Segmentation](images/risk_segmentation.jpeg)

**High-risk cluster:** 38.1% default rate · only 0.72% of portfolio
**Medium-risk (2 of 3 triggers):** 29.1% default rate · 8.07% of portfolio

High intensity risk exists but is not scaled — opportunity to tighten underwriting
before it grows.

---

## Analytical Evidence (Python)

---

### 1️⃣ Tenor as Structural Risk Amplifier

![Default Rate by Term](images/default_rate_by_term.png)

60-month loans default at **21.6%** vs **13.0%** for 36-month loans.

![Avg Loss per Default](images/avg_loss_per_default.png)

Average loss per default: **~$9,300 for 60-month** vs **~$5,000 for 36-month**.

60-month tenor amplifies both default frequency AND loss severity.
This is a structural underwriting risk, not a pricing question.

---

### 2️⃣ Interest Rate Inflection: Where Pricing Fails

![Interest Rate Inflection](images/interest_rate_inflection.png)

- Net loss rate stays negative (profitable) up to the 14–16% bucket
- Crosses zero between **16–18%**
- Turns clearly positive at **18%+**

Beyond 16–18%, higher interest charged does not compensate for rising default losses.
This is adverse selection — the borrowers accepting high-rate loans are disproportionately
those who cannot repay.

---

### 3️⃣ Credit Grade Mispricing

![Risk vs Pricing by Grade](images/risk_vs_pricing_by_grade.png)

Interest rate increases linearly from Grade A to G.
Default rate accelerates — rising faster than pricing from Grade D onwards.

The gap between the two lines at Grades E–G is where the portfolio loses money.
Pricing follows a linear rule; risk follows an exponential one.

---

### 4️⃣ Loss Concentration (Pareto Analysis)

![Loss Concentration](images/loss_concentration_pareto.png)

Top 20% of loss-making loans drive **~48% of total economic loss**.

Loss is partially concentrated — this enables surgical intervention
rather than broad credit tightening.

---

## Structural Risk Drivers

| Risk Driver | Finding |
|---|---|
| Loan tenor | 60-month: 21.6% default rate, ~$9,300 avg loss per default |
| Interest rate | Net loss turns positive beyond 16–18% |
| Credit grade | Grades E–G structurally mispriced relative to actual loss |
| DTI | 30–40% bucket peaks at 22.5% default rate |
| Loan purpose | Debt consolidation & small business drive highest absolute losses |

---

## Credit Policy Playbook

| Category | Policy Action | Rationale |
|---|---|---|
| STOP | 60-month loans, DTI > 30%, Grade D+ | Higher default frequency AND severity |
| STOP | New originations priced above 18% | Net loss turns positive beyond this point |
| START | Pricing floors by grade and term (C–E) | Lower grades need stronger loss coverage |
| START | DTI caps for 60-month loan approvals | Tenor amplifies concentration risk |
| CONTINUE | Grade A–B, 36-month loans | Stable core, lower loss intensity |

---

## Strategic Conclusion

This portfolio does not suffer from random defaults.

It suffers from tenor leverage risk, pricing inflection failure, and concentrated
loss drivers in specific borrower segments.

Risk is partially concentrated — enabling **surgical tightening, not broad credit contraction.**

---

## Files in This Folder

- `P3_loan_portfolio_risk_recovery_intelligence.ipynb`
- `P3_loan_portfolio_risk_recovery_intelligence.html`
