/* Use a correlated subquery to return one row per customer, representing 
the customer’s oldest order (the one with the earliest date). 
Each row should include these three columns: email_address, oldest_order_id, 
and oldest_order_date. Only include customers who have placed an order.
Sort the result set by the oldest_order_date and oldest_order_id columns.  */


SELECT 
	email_address,
    	order_id,
   	order_date
FROM customers c INNER JOIN orders o 
	ON c.customer_id = o.customer_id
	WHERE order_date IN (SELECT MIN(orders.order_date)
				FROM orders INNER JOIN customers
				ON orders.customer_id = customers.customer_id
				GROUP BY customers.customer_id)
