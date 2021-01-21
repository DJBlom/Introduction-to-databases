/* Write an UPDATE statement that modifies the 'Fender Stratocaster' product. 
This statement should change the discount_percent column from 30% to 35%. */




UPDATE products
SET discount_percent = 35
	WHERE category_id = (SELECT 
							category_id
                            WHERE product_name = 'Fender Stratocaster')
