/* Write a script that creates a stored function named 
discount_price that calculates the discount price of 
an item in the Order_Items table (discount amount subtracted from item price). 
To do that, this function should accept one parameter for the item ID, 
and it should return the value of the discount price for that item. */

USE my_guitar_shop;

DROP FUNCTION IF EXISTS discount_price;

DELIMITER //

CREATE FUNCTION discount_price
(
	item_id_argument INT
)

RETURNS DECIMAL(9,2)
BEGIN
	DECLARE discount_price_var DECIMAL(9, 2);
		SELECT item_price - discount_amount
		INTO discount_price_var
		FROM order_items
		WHERE item_id = item_id_argument;
		
	RETURN discount_price_var;
END //

DELIMITER ;

SELECT 
    discount_price(item_id) AS discount_price
FROM
    order_items
WHERE
   item_id = 5;


