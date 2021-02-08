/* Write a script that creates a stored procedure named test. 
This stored procedure should declare a variable and set it to 
the count of all products in the Products table. 
The stored procedure should accept an OUT  parameter 
where a message is passed out of the procedure.  
If the count is greater than or equal to 7, 
the stored procedure should return the value 
“The number of products is greater than or equal to 7”. 
Otherwise, it should return the value “
The number of products is less than 7”. */

USE my_guitar_shop;

DROP PROCEDURE IF EXISTS test;
DELIMITER //
CREATE PROCEDURE test
(
	OUT message VARCHAR(200)
)

BEGIN
	DECLARE count_products DECIMAL(10, 2);
    
    	SELECT COUNT(product_id)
    	INTO count_products
    	FROM products;
    
    	IF (count_products >= 7) THEN
		SELECT 'The number of products is greater than or equal to 7' AS message;
	ELSE
		SELECT 'The number of products is less than 7.' AS message;
	END IF;
END //
DELIMITER ;
CALL test(@message);


