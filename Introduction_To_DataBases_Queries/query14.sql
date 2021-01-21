/* Write an UPDATE statement that modifies the drums category in the Categories table. This statement should change the category_name column to “Woodwinds”, 
and it should use the category_id to identify the row.  */

UPDATE categories
	SET category_name = 'Woodwinds'
	WHERE category_id = (SELECT 
				category_id 
				WHERE category_name = 'Drums')
