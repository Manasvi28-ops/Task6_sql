-- TASK 6: Sales Trend Analysis Using Aggregations
-- Objective: Analyze monthly revenue and order volume from the 'online_sales' table

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
WHERE
    order_date >= '2023-01-01' AND order_date < '2024-01-01'
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;
SELECT * from online_sales;