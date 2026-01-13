-- Q1: Distribution of products by supply risk
-- Flags products with high demand volatility and unstable lead times

SELECT
  supply_risk_flag,
  COUNT(*) AS total_records
FROM (
  SELECT
    demand_volatility_index,
    lead_time_variance,
    CASE
      WHEN demand_volatility_index >= 0.7
       AND lead_time_variance >= 3
      THEN 'Potential Supply Risk'
      ELSE 'Normal'
    END AS supply_risk_flag
  FROM lunar-standard-476607-h9.supply_chain.raw_supply_chain
)
GROUP BY supply_risk_flag
;
