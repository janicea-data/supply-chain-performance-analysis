-- Q5: Supplier performance comparison
-- Compares reliability and lead time stability between supplier groups

SELECT
  selected_supplier_flag AS supplier_group,
  ROUND(AVG(supplier_reliability_score), 2) AS avg_supplier_reliability,
  ROUND(AVG(on_time_delivery_rate), 2) AS avg_on_time_delivery_rate,
  ROUND(AVG(lead_time_variance), 2) AS avg_lead_time_variance
FROM lunar-standard-476607-h9.supply_chain.raw_supply_chain
WHERE supplier_reliability_score IS NOT NULL
  AND on_time_delivery_rate IS NOT NULL
  AND lead_time_variance IS NOT NULL
  AND on_time_delivery_rate BETWEEN 0 AND 1
GROUP BY selected_supplier_flag
ORDER BY avg_supplier_reliability ASC
;
