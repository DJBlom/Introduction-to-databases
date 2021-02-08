/* Write a script that creates and calls a stored procedure named test. 
This procedure should calculate the common factors of the numbers 10 and 20. 
To find a common factor, you can use the modulo operator (%) 
to check whether a number that’s less than 10 
can be evenly divided into both numbers. 
The procedure should return a 1 row, 1 column result set with a column named result.  
The return result should be a string that includes the common factors like this:
Common factors of 10 and 20: 1 2 5 10 
*/

USE my_guitar_shop;

DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test()
BEGIN
	DECLARE factor10 INT;
    	DECLARE factor20 INT;
	DECLARE counter INT;
    	DECLARE result VARCHAR(50);
    
    	SET factor10 = 10;
    	SET factor20 = 20;
    	SET counter = 1;
    	SET result = 'common factors of 10 and 20: ';
    	WHILE (counter <= factor10/2) DO
		IF (factor10 % counter = 0 AND factor20 % counter = 0) THEN
			SET result = CONCAT(result, counter, ' ');
		END IF;
        SET counter = counter + 1;
	END WHILE;
    SELECT result AS message;
END //

DELIMITER ;

CALL test();
