/* Write a SELECT statement that returns these columns from the Orders table:

The order_date column
A column that uses the DATE_FORMAT function to return the four-digit 
year that’s stored in the order_date column.  Alias the column order_year
A column that uses the DATE_FORMAT function to return the order_date 
column in this format: Mon-DD-YYYY. In other words, use abbreviated 
months and separate each date component with dashes. 
Alias the column order_date_formatted
A column that uses the DATE_FORMAT function to return the order_date 
column with only the hours and minutes on a 12-hour clock with an am/pm 
indicator. Alias the column order_time
A column that uses the DATE_FORMAT function to return the order_date 
column in this format: MM/DD/YY HH:MM. In other words, use two-digit months, 
days, and years and separate them by slashes. Use 2-digit hours and 
minutes on a 24-hour clock. And use leading zeros for all 
date/time components. Alias the column  order_datetime
Sort the result set by the order_date column in ascending sequence.  */


SELECT 
	order_date,
    	DATE_FORMAT(order_date, '%Y'),
    	DATE_FORMAT(order_date, '%d-%e-%Y') AS order_date_formatted,
    	DATE_FORMAT(order_date, '%l-%i-%p') AS order_time,
    	DATE_FORMAT(order_date, '%m/%e/%y %H:%i') AS order_date_time
FROM orders
ORDER BY order_date ASC;
