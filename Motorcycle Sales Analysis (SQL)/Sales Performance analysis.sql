/* Sales Performance:
1. Which product line generates the highest revenue across different warehouses?
2. How does the sales performance vary between retail and wholesale clients?
3. What are the monthly sales trends over the past year?
*/

-- ANSWERS --
-- 1. Which product line generates the highest revenue across different warehouses.
SELECT
	warehouse,
	product_line,
	ROUND(CAST(SUM(total) - SUM(payment_fee) AS NUMERIC), 2) AS net_revenue
FROM motorcycle_data
GROUP BY warehouse, product_line
ORDER BY warehouse, net_revenue DESC;

-- 2. How does the sales performance vary between retail and wholesale clients?
SELECT
	client_type,
	product_line,
	ROUND(CAST(SUM(total) - SUM(payment_fee) AS numeric), 2) AS net_revenue,
	SUM(quantity) AS total_quantity
FROM motorcycle_data
GROUP BY client_type, product_line
ORDER BY client_type, net_revenue DESC;

-- 3. What are the monthly sales trends?
SELECT
	CASE WHEN EXTRACT(month FROM date) = 6 THEN 'June'
		WHEN EXTRACT(month FROM date) = 7 THEN 'July'
		WHEN EXTRACT(month FROM date) = 8 THEN 'August'
		END AS month,
	ROUND(CAST(SUM(total) - SUM(payment_fee) AS numeric), 2) AS net_monthly_revenue,
	SUM(quantity) AS monthly_quantity
FROM motorcycle_data
GROUP BY month
ORDER BY month, monthly_quantity DESC;