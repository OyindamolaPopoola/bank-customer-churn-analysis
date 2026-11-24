SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN c15 = 'churned' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN c15 = 'churned' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_pct
FROM bank_churn
WHERE c15 IN ('churned', 'retained');
SELECT 
    c5 AS country,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN c15 = 'churned' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN c15 = 'churned' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_pct
FROM bank_churn
WHERE c15 IN ('churned', 'retained')
GROUP BY c5
ORDER BY churn_rate_pct DESC;
SELECT 
    c17 AS age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN c15 = 'churned' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN c15 = 'churned' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_pct
FROM bank_churn
WHERE c15 IN ('churned', 'retained')
GROUP BY c17
ORDER BY churn_rate_pct DESC;
SELECT 
    c16 AS activity_status,
    c15 AS churn_status,
    COUNT(*) AS customers
FROM bank_churn
WHERE c15 IN ('churned', 'retained')
GROUP BY c16, c15
ORDER BY c16, c15;
