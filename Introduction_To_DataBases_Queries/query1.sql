/* This is a select statement that will retrieve the product code, product name, list price, 
and discount precentage in a table called customers in descending order. */

SELECT 
	product_code, 
	product_name, 
	list_price, 
	discount_percent
FROM products
	ORDER BY list_price DESC
