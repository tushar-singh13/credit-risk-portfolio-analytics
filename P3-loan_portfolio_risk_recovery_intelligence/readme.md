# Loan Portfolio Risk & Recovery Intelligence  
**From Default Metrics to Credit Policy Decisions**

---

## Overview

This project analyzes a large-scale consumer loan portfolio (Lending Club–style data) to move beyond surface-level default rates and uncover **true economic risk**, **loss drivers**, and **actionable credit policy rules**.

The goal is not to build a machine learning model, but to answer the kind of questions a **Credit Head, Risk VP, or Strategy Leader** actually cares about:

> *Where does the portfolio really lose money, why does it happen, and what should we do about it?*

The analysis is structured as a **decision-driven narrative**, not a technical notebook.

---

## Key Objectives

- Understand **portfolio health** and outcome distribution  
- Identify **structural risk drivers** (tenor, pricing, borrower attributes)  
- Measure **economic loss**, not just defaults  
- Test **risk concentration vs diversification** (Pareto logic)  
- Convert insights into **explicit credit policy rules**

---

## Dataset

- Source: Lending Club loan-level data  
- Size: ~600k+ loans (hundreds of MB)  
- Key fields:
  - Loan status, term, grade, interest rate
  - Loan amount, total payments, recoveries
  - Borrower attributes (DTI, income, employment length, home ownership)
  - Loan purpose

> **Important Note:**  
> Analysis is primarily performed on **closed loans** (Fully Paid, Charged Off, Default) to avoid survival bias from still-active loans.

---

## Project Structure & Questions Answered

### **SECTION 1 — Portfolio Health & Outcome Reality**

**Q1. What is the overall loan outcome distribution?**  
Establishes baseline portfolio health.

**Q2. How does loan performance vary by loan term (36 vs 60 months)?**  
Shows that longer tenors materially amplify risk and loss.

**Q3. What is the average interest rate by loan outcome?**  
Tests whether pricing differentiates between successful and failed loans.

---

### **SECTION 2 — Pricing, Risk & Economic Loss**

**Q4. Does higher interest rate actually reduce losses?**  
Identifies a critical **pricing inflection point (~16–18%)** beyond which higher rates no longer compensate for risk.

**Q5. Are some credit grades underpriced for their risk?**  
Evaluates alignment between grade, default rate, pricing, and loss severity.

**Q6. Where does the portfolio actually lose money?**  
Shifts focus from defaults to **net economic loss**, incorporating:
- Charge-offs  
- Recoveries  
- Interest earned  

This section reveals **true loss concentration by grade, term, and purpose**.

---

### **SECTION 3 — Default & Loss Drivers**

**Q7. Which borrower attributes drive default the most?**  
Tests underwriting variables:
- DTI  
- Income  
- Employment length  
- Home ownership  

Separates **signal vs noise** in borrower risk indicators.

**Q8. Does loan purpose matter for risk and loss?**  
Identifies purposes that are structurally loss-heavy vs volume-driven.

---

### **SECTION 4 — Portfolio-Level Risk Strategy**

**Q9. Is risk concentrated or diversified? (Pareto Test)**  
Applies the 80/20 framework:
- Top 20% of loss-making loans drive ~48% of total losses  
- Concentration analyzed by grade, purpose, and tenor  

Used to decide between **surgical fixes vs system-wide tightening**.

**Q10. What loans should never be approved under current pricing?**  
Defines explicit **“bad loan” combinations** based on observed outcomes.

**Q11. What pricing rules should be enforced going forward?**  
Translates findings into:
- Minimum pricing floors  
- DTI caps by term  
- Purpose-based restrictions  

**Q12. Final Portfolio Risk Playbook (VP Slide)**  
One-page strategic summary:
- What to tighten  
- What to allow  
- What to price higher  
- What to stop completely  

---

## Core Insights (Executive-Level)

- **60-month loans are a structural risk multiplier**, not just a pricing issue  
- **Pricing breaks beyond ~16–18% interest**, indicating adverse selection  
- **Debt consolidation and credit card refinancing** drive the largest absolute losses  
- **High DTI (>40%) loans exhibit tail-risk behavior** despite low frequency  
- Losses are **partially concentrated**, enabling targeted policy intervention rather than blanket tightening  

---

## Tools & Techniques

- Python (pandas, numpy)
- Groupby aggregations & loss decomposition
- Binning and segmentation analysis
- Pareto (concentration) logic
- Business-first visualization and narrative framing

> No machine learning was used intentionally — this project focuses on **decision intelligence**, not prediction.

---

## Intended Audience

- Credit Risk Managers  
- Portfolio Strategy Teams  
- FinTech / NBFC Leadership  
- Senior Analytics & Decision Science Roles  

This project is designed to demonstrate **credit judgment, strategic thinking, and policy design**, not just coding ability.

---

## How to Use This Project

- Read top-down (Executive Summary → Policy Playbook)  
- Treat each question as a **business decision**, not a technical exercise  
- Use insights as a template for real-world portfolio reviews  

---

## Author’s Note

This project reflects a **banker-to-analytics transition**: combining on-ground credit intuition with data-driven validation.

The emphasis is on answering:
> *“If this were a ₹100–₹1,000 Cr portfolio, what would I change tomorrow?”*

---

**End of README**