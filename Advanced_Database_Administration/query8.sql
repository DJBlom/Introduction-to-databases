/*
Create a view named best_products that uses the same 
table you used in in exercise 3. The view should have 
the same columns returned. The view should only return 
the five best selling products by order_total.
*/




CREATE OR REPLACE VIEW best_products AS

	SELECT product_name, order_total
	FROM product_summary 
	ORDER BY order_total DESC LIMIT 5;

