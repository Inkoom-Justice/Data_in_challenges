-- SHOW THE CONTENT OF THE TABLE motorcycle_data
SELECT * FROM motorcycle_data;

-- ANSWER TO THE REQUEST
SELECT
	product_line,
	CASE WHEN EXTRACT(month FROM date) = 6 THEN 'June'
		WHEN EXTRACT(month FROM date) = 7 THEN 'July'
		WHEN EXTRACT(month FROM date) = 8 THEN 'August'
		END AS month,
	warehouse,
	SUM(total) - SUM(payment_fee) AS net_revenue
FROM motorcycle_data
WHERE client_type = 'Wholesale'
GROUP BY product_line, month, warehouse
ORDER BY product_line, month, net_revenue DESC;