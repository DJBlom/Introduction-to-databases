/* Write a script that creates a stored procedure named test. 
This stored procedure should create a cursor for a result 
set that consists of the product_name and list_price columns 
for each product with a list price that’s greater than $700. 
The rows in this result set should be sorted in descending 
sequence by list price. The stored procedure should accept an OUT  
parameter where a message is passed out of the procedure.  
Then, the procedure should set the out parameter to a string 
variable that includes the product_name and list price for 
each product so it looks something like this: *Gibson SG*,*2517.00*|*Gibson Les Paul*,*1199.00*|
Here, each value is enclosed in asterisk(*), each column is separated by a     
comma (,) and each row is separated by a pipe character (|). */

USE my_guitar_shop;

DROP PROCEDURE IF EXISTS test;
DELIMITER //
CREATE PROCEDURE test
(
	OUT message VARCHAR(200)
)

BEGIN
	DECLARE people VARCHAR(50);
    	DECLARE prices DECIMAL(8, 2);
    	DECLARE message VARCHAR(200);
    	DECLARE done TINYINT;
    
    	DECLARE products_cursor CURSOR FOR
		SELECT product_name, list_price 
        	FROM products
		WHERE list_price > 700
		ORDER BY list_price DESC;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    	SET done = 0;
    	SET	message = '';
    
    	OPEN products_cursor;
    
    	testloop : loop
    	FETCH products_cursor INTO people, prices;
    	IF (done = 1) THEN 
		LEAVE testloop;
	END IF;
    
    	SET message = CONCAT('*', people, '*', ', ', '*', prices, '*', "|", message);
    
    	END LOOP testloop;
    
    	SELECT message;
    	CLOSE products_cursor;
END //
DELIMITER ;
CALL test(@message);
    
