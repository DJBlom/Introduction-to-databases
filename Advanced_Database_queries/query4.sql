/* Write a SELECT statement that returns one row for each customer that 
has orders with these columns:

The email_address column from the Customers table
A count of the number of orders aliased as order_count
The total amount for each order aliased as order_total 
(Hint: First, subtract the discount amount from the price. 
Then, multiply by the quantity.)
Return only those rows where the customer has more than 1 order.
Sort the result set in descending sequence by the sum of the line item amounts.  */


SELECT
	email_address,
    	COUNT(*) AS order_count,
    	SUM((item_price - discount_amount) * quantity) AS order_total
FROM customers c INNER JOIN orders o
	ON c.customer_id = o.customer_id
	INNER JOIN order_items oi
    	ON o.order_id = oi.order_id
GROUP BY c.customer_id
HAVING order_count > 1
ORDER BY order_total DESC
