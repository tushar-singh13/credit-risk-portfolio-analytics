-- ============================================
-- Superstore: Revenue & Risk Analysis
-- ============================================

-- 1. Overall performance
SELECT
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit,
  ROUND(SUM(profit) * 1.0 / SUM(sales), 2) AS profit_margin
FROM orders;

-- 2. Sales and margin by region
SELECT
  region,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit,
  ROUND(SUM(profit) * 1.0 / SUM(sales), 2) AS profit_margin
FROM orders
GROUP BY region;

-- 3. Sales and margin by segment
SELECT
  segment,
  SUM(sales) AS total_sales,
  SUM(profit) AS total_profit,
  ROUND(SUM(profit) * 1.0 / SUM(sales), 2) AS profit_margin
FROM orders
GROUP BY segment;

-- 4. Top 20 customers by revenue
SELECT
  customer_id,
  customer_name,
  SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 20;

-- 5. Revenue concentration (Top 10 / Top 20)
WITH customer_sales AS (
  SELECT customer_id, SUM(sales) AS total_sales
  FROM orders
  GROUP BY customer_id
),
ranked AS (
  SELECT *,
         DENSE_RANK() OVER (ORDER BY total_sales DESC) AS rnk
  FROM customer_sales
)
SELECT
  SUM(total_sales) AS overall_sales,
  SUM(CASE WHEN rnk <= 10 THEN total_sales ELSE 0 END) AS top10_sales,
  SUM(CASE WHEN rnk <= 20 THEN total_sales ELSE 0 END) AS top20_sales,
  ROUND(SUM(CASE WHEN rnk <= 10 THEN total_sales ELSE 0 END) * 100.0 / SUM(total_sales), 2) AS pct_top10,
  ROUND(SUM(CASE WHEN rnk <= 20 THEN total_sales ELSE 0 END) * 100.0 / SUM(total_sales), 2) AS pct_top20
FROM ranked;

-- 6. Return rate by region and segment
SELECT
  o.region,
  o.segment,
  COUNT(DISTINCT o.order_id) AS total_orders,
  COUNT(DISTINCT r.order_id) AS returned_orders,
  ROUND(COUNT(DISTINCT r.order_id) * 100.0 / COUNT(DISTINCT o.order_id), 2) AS return_rate
FROM orders o
LEFT JOIN returns r
  ON o.order_id = r.order_id
GROUP BY o.region, o.segment;

-- 7. Return rate by subcategory
SELECT
  o.subcategory,
  COUNT(DISTINCT o.order_id) AS total_orders,
  COUNT(DISTINCT r.order_id) AS returned_orders,
  ROUND(COUNT(DISTINCT r.order_id) * 100.0 / COUNT(DISTINCT o.order_id), 2) AS return_rate
FROM orders o
LEFT JOIN returns r
  ON o.order_id = r.order_id
GROUP BY o.subcategory;