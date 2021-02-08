/* Write a script that creates a stored procedure named insert_category. 
Code the procedure so that it adds a new row to the Categories table. 
To do that, the procedure should have a parameter for the category name. */

USE my_guitar_shop;

DROP PROCEDURE IF EXISTS insert_category;
DELIMITER //
CREATE PROCEDURE insert_category
(
     var_category_name VARCHAR(100)
)

BEGIN
	DECLARE sql_error TINYINT DEFAULT FALSE;
    	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    
    	SET sql_error = TRUE;
    	START TRANSACTION;
		UPDATE categories
            	SET category_id = var_category_name;
            	IF (sql_error = FALSE) THEN 
			COMMIT;
		ELSE
			ROLLBACK;
		END IF;
END //
DELIMITER ;
CALL insert_category('Trees');
