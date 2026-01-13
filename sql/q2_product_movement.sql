-- Q2: Product movement efficiency by category
-- Measures how frequently and how much products are ordered in each category

SELECT
  procurement_action_code AS category,
  ROUND(AVG(order_frequency_monthly), 2) AS avg_order_frequency,
  ROUND(AVG(avg_order_volume), 2) AS avg_order_volume
FROM lunar-standard-476607-h9.supply_chain.raw_supply_chain
GROUP BY procurement_action_code
ORDER BY avg_order_frequency DESC
