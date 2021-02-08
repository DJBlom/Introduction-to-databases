/* Write a script that adds an index to the my_guitar_shop database 
for the lastname and firstname fields in the Customers table.  
You can name the index anything you like. */

USE my_guitar_shop;
CREATE INDEX last_name_index
ON customers (last_name);

USE my_guitar_shop;
CREATE INDEX first_name_index
ON customers (first_name);
