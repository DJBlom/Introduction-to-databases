/* Write a script that creates a stored procedure named test. 
This procedure should attempt to insert a new category named “Guitars” into the Categories table. 
The procedure should return a 1 row, 1 column result set with a column named result.  
If the insert is successful, the procedure should return the value: 1 row was inserted.
If the update is unsuccessful, the procedure should return the value:
Row was not inserted - duplicate entry.
*/

USE my_guitar_shop;

DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test()
BEGIN
	DECLARE duplicate_entry TINYINT DEFAULT FALSE;

	BEGIN
		DECLARE EXIT HANDLER FOR 1062
        	SET duplicate_entry = TRUE;
        	INSERT INTO categories VALUES (DEFAULT, 'Guitars');
        	SELECT '1 row was inserted.' AS message;
	END;

	IF (duplicate_entry = TRUE) THEN
		SELECT 'Row was not inserted - duplicate entery.' AS message;
	END IF;
    
END //

DELIMITER ;

CALL test();
