-- Q4: Delivery time and delay by shipping mode
-- Identifies which delivery modes have longer and more unstable lead times

SELECT
  delivery_mode,
  ROUND(AVG(delivery_time_days), 2) AS avg_delivery_time_days,
  ROUND(AVG(lead_time_variance), 2) AS avg_lead_time_variance
FROM lunar-standard-476607-h9.supply_chain.raw_supply_chain
WHERE delivery_time_days IS NOT NULL
  AND lead_time_variance IS NOT NULL
  AND delivery_time_days > 0
GROUP BY delivery_mode
ORDER BY avg_delivery_time_days DESC
;
