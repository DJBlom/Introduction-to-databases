/* Write a SELECT statement that returns these columns from the Products table:

The list_price column
The discount_percent column
A column named discount_amount that uses the previous two columns to 
calculate the discount amount and uses the ROUND function to round the 
result so it has 2 decimal digits
Sort the result set by the discount_amount column in ascending sequence. */



SELECT
	list_price,
    	discount_percent,
    	ROUND(list_price * discount_percent / 100, 2) AS discount_amount
FROM products
ORDER BY discount_amount ASC;
