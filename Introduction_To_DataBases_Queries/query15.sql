/* Write a DELETE statement that deletes the Keyboards category in the 
Categories table. This statement should use the category_id 
column to identify the row.  */

DELETE FROM categories
	WHERE category_id = (SELECT
				category_id
				WHERE category_name = 'Keyboards')
