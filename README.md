# Supply Chain Performance Analysis

This project analyzes supply chain performance using SQL (BigQuery) and Tableau Public.  
The objective is to identify supply risk, assess product movement efficiency, evaluate delivery & fulfillment performance, and compare supplier reliability to support data-driven decisions.

---

## Business Questions

1. Which products show potential supply risk due to high volatility?
2. How efficiently are products moving across categories?
3. What is the current fulfillment performance?
4. How long does delivery take and where do delays occur?
5. Which suppliers underperform based on reliability and delivery stability?

---

## Tools & Technologies

- **Google BigQuery** (SQL for data extraction & analysis)  
- **Tableau Public** (Data visualization & dashboard)  
- **GitHub** (Project documentation & portfolio)

---

## Dataset Overview

Dataset Kaggle
CC0: Public Domain
Link: https://www.kaggle.com/datasets/programmer3/supply-chain-dataset?resource=download

The dataset contains key operational metrics for supply chain, including:

| Field | Description |
|-------|-------------|
| demand_volatility_index | Variation in product demand |
| lead_time_variance | Stability of lead time |
| order_frequency_monthly | Monthly order frequency |
| avg_order_volume | Average order volume |
| on_time_delivery_rate | Delivery punctuality |
| defect_rate | Defective order proportion |
| return_rate | Returned order proportion |
| supplier_reliability_score | Supplier trustworthiness |

---

## Key Findings

### 1. Supply Risk
- Approximately **11.82% of products** are flagged as *potential supply risk* due to high demand volatility and unstable lead times.

### 2. Product Movement
- **Category 0** exhibits the highest average order frequency, indicating faster inventory turnover.

### 3. Fulfillment Performance
- On-time delivery rate: **85%**
- Defect rate: **5%**
- Return rate: **3%**

Overall, fulfillment is relatively strong.

### 4. Delivery Time & Delays
- Delivery times are similar across modes (~15 days).
- *Air shipments* show slightly higher lead time variability.

### 5. Supplier Performance
- Supplier groups show similar reliability scores and delivery stability.
- No significant underperformer detected based solely on the grouping.

---

## Tableau Public Dashboard
Access the interactive dashboard here:
https://public.tableau.com/views/SupplyChainPerformanceOverview_17682930655400/Dashboard1?:language=en-US

---

## Information on This Repo

- `/sql/` — contains SQL queries used to generate data for each analysis step
- `/data/` — CSV files exported from BigQuery
- `README.md` — documentation & summary of the project

---

## About Me

**Janice Aulita**  
Aspiring Data Analyst | SQL & Tableau  
Connect with me via GitHub & LinkedIn
