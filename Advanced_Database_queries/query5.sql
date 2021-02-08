/* Modify the solution to lab 4 so it only counts and totals line 
items that have an item_price value that’s greater than 400. */


SELECT
	email_address,
    	COUNT(*) AS order_count,
    	SUM(item_price - discount_amount) * COUNT(quantity) AS order_total
FROM customers c INNER JOIN orders o
	ON c.customer_id = o.customer_id
    	INNER JOIN order_items oi
    	ON oi.order_id = o.order_id
	WHERE item_price > 400
GROUP BY c.customer_id
HAVING order_count > 1
ORDER BY order_total DESC

