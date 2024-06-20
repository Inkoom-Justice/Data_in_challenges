/* Customer Insights:*/

-- 1. What is the average order quantity for retail vs. wholesale clients?
SELECT
	client_type,
	ROUND(AVG(quantity), 2) AS avg_order_quantity
FROM motorcycle_data
GROUP BY client_type
ORDER BY avg_order_quantity DESC;

-- 2. Which payment methods are most popular among different client types?
SELECT
	client_type,
	payment,
	COUNT(*) AS pop_payment_method
FROM motorcycle_data
GROUP BY client_type, payment
ORDER BY client_type, pop_payment_method;

-- 3. What is the distribution of payment methods used by clients?
SELECT 
    payment,
    COUNT(*) AS payment_count,
    ROUND((COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ()), 2) AS payment_percentage
FROM 
    motorcycle_data
GROUP BY 
    payment
ORDER BY 
    payment_count DESC;
