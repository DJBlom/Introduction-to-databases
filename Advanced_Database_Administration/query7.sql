/*
Create a view named product_summary that uses the same 
table you used in in exercise 2. This view should 
return summary information about each product.
Each row should include product_name, 
order_count (the quantity of the product that has been ordered) 
and order_total (the total sales revenue for the product).
*/




CREATE OR REPLACE VIEW product_summary AS
	SELECT p.product_name AS product_name, SUM(oi.quantity) AS order_count,
		SUM(oi.quantity * oi.item_price) AS order_total
	FROM products p INNER JOIN order_items oi
		ON oi.item_id = oi.order_id
	GROUP BY p.product_id, p.product_name
