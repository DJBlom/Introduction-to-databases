/* Write a SELECT statement that returns the name, list_price and discount 
percent of each product that has a unique discount percent. In other words, 
don’t include products that have the same discount percent as another product.
Sort the result set by the product_name column.  */


SELECT 
	p.product_name,
    	p.list_price,
    	p.discount_percent
FROM products p 
	WHERE p.discount_percent NOT IN 
		(SELECT
			pr.discount_percent
												 FROM products pr								 	WHERE p.product_name <> pr.product_name)
ORDER BY product_name
