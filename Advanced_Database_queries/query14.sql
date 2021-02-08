/* Write a SELECT statement that returns these columns from the Orders table:

The card_number column
The length of the card_number column aliased as card_number_length
The last four digits of the card_number column aliased as 
last_four_digits
A column that displays an X for each digit of the card_number 
column except for the last four digits. If the card number contains 
16 digits, it should be displayed in this format: XXXX-XXXX-XXXX-1234, 
where 1234 are the actual last four digits of the number. 
If the card number contains 15 digits, it should be displayed in this 
format: XXXX-XXXXXX-X1234. (Hint: Use an IF function to 
determine which format to use.).  
This column should be aliased as formatted_number
Sort the result set by the card_number column in ascending sequence. */


SELECT 
	card_number,
    	LENGTH(card_number) AS card_number_length,
    	RIGHT(card_number, 4) AS last_four_digits,
    	IF(LENGTH(card_number) = 16, CONCAT('XXXX-XXXX-XXXX-', RIGHT(card_number, 4)), CONCAT('XXXX-XXXXXX-X', RIGHT(card_number, 3))) AS formatted_number
FROM orders
ORDER BY card_number ASC;
