/* Write a SELECT statement that returns three columns: email_address, 
order_id, and the order total for each customer. To do this, 
you can group the result set by the email_address and order_id columns. In addition, you must calculate the order total from the columns in the 
Order_Items table.

Write a second SELECT statement that uses the first SELECT statement 
in its FROM clause. The main query should return three columns: 
the customer’s email address and the largest order (aliased as max_order_total) and the smallest order_id (aliased as min_order_id). 
To do this, you can group the result set by the email_address. 
Sort the result set by the largest order in descending sequence.  */


SELECT 
	eo.email_address,
    	MAX(eo.order_total) AS max_order_total,
    	MIN(order_id) AS min_order_id
FROM (SELECT 
		c.email_address,
		oi.order_id,
		SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
	 FROM order_items oi 
		INNER JOIN orders o
			ON oi.order_id = o.order_id
		INNER JOIN customers c
			ON o.customer_id = c.customer_id	
	 GROUP BY c.email_address, oi.order_id) AS eo
GROUP BY eo.email_address
