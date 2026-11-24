# bank-customer-churn-analysis
End-to-end SQL and Tableau analysis of customer churn across 10,000 European bank customers.
# Bank Customer Churn Analysis (SQL & Tableau)

## Project Overview
Customer retention is critical for retail banking profitability. This project analyzes **10,000 customer records** from a European bank to identify the primary demographic, geographic, and behavioral drivers of customer churn—and translates those findings into an interactive Tableau Public dashboard.

🔗 **[View Live Interactive Tableau Dashboard]([https://public.tableau.com:9443/views/BankCustomerChurnAnalysis_17955237655980/BankCustomerChurnAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link])**

![Bank Customer Churn Dashboard](dashboard_preview.png)

---

## Key Business Insights
* **Geographic Risk (Germany):** Germany exhibits a significantly higher churn rate compared to France and Spain, indicating localized competitive pressure or product mismatch.
* **High-Risk Age Bracket (46–60):** Customers aged **46–60** experience the highest churn concentration, whereas customers aged **30–45** form the largest and most stable retained segment.
* **Engagement Gap (Inactive Members):** Inactive customers churn at nearly double the rate of active customers (**1,302** churned inactive users vs. **735** churned active users), proving that account engagement is one of the strongest predictors of retention.

---

## Tools & Workflow
1. **Data Cleaning & Feature Engineering (Excel / CSV):** Standardized categorical labels (`Churned` vs. `Retained`, `Active` vs. `Inactive`) and engineered age group brackets (`Under 30`, `30-45`, `46-60`, `60+`).
2. **Exploratory & Cohort Analysis (SQL):** Queried customer segmentation, churn rates by geography, activity status, and age cohorts (`churn_analysis.sql`), exporting summary tables to `sql_results/`.
3. **Interactive Visualization (Tableau Public):** Built a cross-filtered executive dashboard combining geographic mapping with cohort bar charts.

---

## Repository Structure
* `Churn_Cleaned.csv` — Cleaned dataset (10,000 records)
* `churn_analysis.sql` — SQL queries used for churn segmentation and KPI aggregation
* `sql_results/` — Exported CSV outputs from SQL queries
* `dashboard_preview.png` — Snapshot of the published Tableau Public dashboard

---

## Strategic Recommendations
1. **Targeted Retention Campaigns in Germany:** Launch localized loyalty incentives and fee reviews for mid-to-high-balance German accounts.
2. **Pre-Retirement Engagement (Ages 46–60):** Introduce tailored wealth management and advisory check-ins before customers hit peak churn age.
3. **Early Re-Engagement Triggers:** Flag accounts with 60+ days of inactivity for automated mobile app nudges and personalized product offers.
