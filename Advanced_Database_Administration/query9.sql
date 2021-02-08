/* Write a script that creates a stored procedure named test. 
This stored procedure should declare a variable and set it 
to the count of all products in the Products table. 
The procedure should return a 1 row, 1 column result 
set with a column named result.  
If the count is greater than or equal to 7, 
the stored procedure should return the value 
“The number of products is greater than or equal to 7”. 
Otherwise, it should return the value “The number of products is less than 7”.
*/

DROP PROCEDURE IF EXISTS test;
DELIMITER //
CREATE procedure test()
BEGIN
	DECLARE count_of_7 DECIMAL(10, 2);
    SELECT count(product_id) INTO count_of_7 FROM products;
    	IF count_of_7 >= 7 THEN
		SELECT 'The number of products is greater than or equal to 7' AS message;
	ELSE 
		SELECT 'The number of products is less than 7' AS message;
	END IF;
END //
DELIMITER ;
CALL test();
