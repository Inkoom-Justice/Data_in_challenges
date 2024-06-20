/*Warehouse Efficiency:*/

-- Which warehouse has the highest sales volume?
SELECT
	warehouse,
	SUM(quantity) AS total_quantity
FROM motorcycle_data
GROUP BY warehouse
ORDER BY total_quantity DESC;

-- What is the average order value by warehouse?
SELECT
	warehouse,
	ROUND(CAST(AVG(total - payment_fee) AS NUMERIC), 2) AS avg_order_value
FROM motorcycle_data
GROUP BY warehouse
ORDER BY avg_order_value DESC;
	
-- Are there any seasonal variations in sales by warehouse?

SELECT 
    warehouse,
    CASE WHEN EXTRACT(month FROM date) = 6 THEN 'June'
		WHEN EXTRACT(month FROM date) = 7 THEN 'July'
		WHEN EXTRACT(month FROM date) = 8 THEN 'August'
		END AS month,
    ROUND(CAST(SUM(total) - SUM(payment_fee) AS NUMERIC), 2) AS monthly_revenue,
    SUM(quantity) AS monthly_quantity
FROM 
    motorcycle_data
GROUP BY warehouse, month
ORDER BY warehouse, monthly_revenue DESC;
