/* Write an INSERT statement that adds this row to the Categories table:

category_name: Brass
Code the INSERT statement so MySQL automatically generates the 
category_id column. */

INSERT INTO categories
	(category_id,
     	 category_name)
VALUES
	(DEFAULT, 
	 'Brass')
