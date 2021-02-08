/*Write a SELECT statement that returns one row for each category that has products with these columns:

The category_name column from the Categories table
The count of the products in the Products table aliased as product_count
The list price of the most expensive product in the Products table aliased as most_expensive_product
Sort the result set so the category with the most products appears first. */

SELECT
	category_name,
    	COUNT(product_id) AS product_count,
	MAX(list_price) AS most_expensive_product
FROM categories c INNER JOIN products p
	ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY product_count

