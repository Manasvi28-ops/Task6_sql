# Task6_sql
#  Sales Trend Analysis Using SQL Aggregations

# Task Description

Objective: 
Perform a time-based sales analysis to calculate **monthly revenue** and **order volume** using SQL.

Key Concepts Used

- `EXTRACT(YEAR/MONTH FROM order_date)`: Extracts year and month for grouping.
- `SUM(amount)`: Aggregates monthly revenue.
- `COUNT(DISTINCT order_id)`: Counts unique orders for order volume.
- `GROUP BY`: Groups rows by year and month.
- `ORDER BY`: Sorts the output in chronological order.
- `WHERE`: Filters data for the year 2023.

 Tools Used

- SQL ( MySQL / MySQL Workbench)

SQL Query Used
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
