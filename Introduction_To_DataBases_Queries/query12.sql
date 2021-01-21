/* Use the UNION operator to generate a result set consisting of 
three columns from the Orders table: 
ship_status A calculated column that contains a value of SHIPPED or NOT SHIPPED

order_id The order_id column
order_date The order_date column

If the order has a value in the ship_date column, the ship_status column should contain a value of SHIPPED. Otherwise, it should contain a value of NOT SHIPPED.
Sort the final result set by the order_date column.  */


	SELECT 'SHIPPED' 
		AS ship_status, order_id, order_date
	FROM orders
		WHERE ship_date IS NOT NULL
UNION
	SELECT 'NOT_SHIPPED'
		AS ship_status, order_id, order_date
	FROM orders
		WHERE ship_date IS NULL
	ORDER BY order_date
