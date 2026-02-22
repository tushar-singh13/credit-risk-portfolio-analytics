# Customer Risk & Revenue Intelligence — Superstore Analysis

## Objective
Identify revenue concentration, return-driven risk, and profit-at-risk customers using transactional Superstore data, and translate findings into clear, actionable business decisions.

## Business Questions Answered
- How concentrated is revenue across customers?
- Which customers and segments are profit-at-risk due to returns or weak margins?
- Where are returns concentrated (region / segment / subcategory)?
- What concrete actions should the business take (retain, restrict, reprice, intervene)?

## Dataset Overview
- **orders** — line-item level sales data (sales, profit, product, customer, region, dates)
- **returns** — order-level return flags
- **managers** — region-to-manager mapping

## Data Modeling Approach
- Line-item → Order-level → Customer-level aggregation
- Returns recorded at order level and propagated where needed
- Percentile-based thresholds used instead of arbitrary cutoffs

## Key Analytical Outputs
- Revenue concentration (Top 10 / Top 20 customers)
- Customer segmentation (Core / Growth / At-risk / Loss-making)
- Profit-at-risk customer identification
- Region & manager-level risk ownership
- Actionable customer intervention plan

## Tools Used
- Python (pandas, numpy)
- SQL (SQLite, window functions, CTEs)
- Jupyter / Google Colab
- Exploratory visualization (matplotlib)

## Files in This Repository
- `P1_customer_risk_revenue_intelligence.ipynb` — full Python analysis
- `superstore_core_analysis.sql` — SQL appendix reproducing key outputs
- `superstore.db` — SQLite database
- `P1_customer_risk_revenue_intelligence.html` — rendered notebook
