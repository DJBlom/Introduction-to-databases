/* Write a SELECT statement that joins the Customers, Orders, Order_Items, 
and Products tables. This statement should return these columns: 
last_name, first_name, order_date, product_name, item_price, 
discount_amount, and quantity.
Use aliases for the tables.
Sort the final result set by the last_name, order_date, 
and product_name columns.  */


SELECT 
	first_name,
    	last_name, 
    	order_date,
    	product_name,
    	item_price,
    	discount_amount,
    	quantity
FROM customers c 
	INNER JOIN orders o 
		ON c.customer_id = o.customer_id
	INNER JOIN order_items oi 
		ON	oi.order_id = o.order_id
	INNER JOIN products p 
		ON p.product_id = oi.product_id
ORDER BY last_name, order_date, product_name
