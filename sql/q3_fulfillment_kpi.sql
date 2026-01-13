-- Q3: Fulfillment performance KPIs
-- Measures on-time delivery, defect rate, and return rate

SELECT
  ROUND(AVG(on_time_delivery_rate), 2) AS avg_on_time_delivery_rate,
  ROUND(AVG(defect_rate), 2) AS avg_defect_rate,
  ROUND(AVG(return_rate), 2) AS avg_return_rate
FROM lunar-standard-476607-h9.supply_chain.raw_supply_chain
WHERE on_time_delivery_rate IS NOT NULL
  AND defect_rate IS NOT NULL
  AND return_rate IS NOT NULL
  AND on_time_delivery_rate BETWEEN 0 AND 1
  AND defect_rate BETWEEN 0 AND 1
  AND return_rate BETWEEN 0 AND 1
  ;
