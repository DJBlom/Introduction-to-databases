/*Write a script that adds an index to the my_guitar_shop database 
for the zip code field in the addresses table. You can name the 
index anything you like.*/

USE my_guitar_shop;
CREATE INDEX zip_index
ON addresses (zip_code);
