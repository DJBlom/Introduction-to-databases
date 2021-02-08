/*Write a SELECT statement that returns these columns:

The count of the number of orders in the Orders table named order_count
The sum of the tax_amount columns in the Orders table named tax_total
The average of the tax_amount columns in the Orders table named tax_average */

SELECT
	COUNT(*) order_id,
    	SUM(tax_amount) AS tax_total,
    	AVG(tax_amount) AS tax_average
FROM orders
