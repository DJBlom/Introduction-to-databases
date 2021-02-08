/* Write a SELECT statement that returns these columns from the Products table:

The date_added column
A column that uses the CAST function to return the date_added 
column with its date only (year, month, and day). Name this column added_date
A column that uses the CAST function to return the date_added 
column with just the year and the month.  Name this column added_char7
A column that uses the CAST function to return the date_added column 
with its full time only (hour, minutes, and seconds). 
Name this column added_time
Sort the result set by the date_added column in ascending sequence. */

SELECT
	date_added,
    	CAST(date_added AS DATE) AS added_date,
    	CAST(date_added AS CHAR(7)) AS added_char7,
    	CAST(date_added AS TIME) AS added_time
FROM products
ORDER BY date_added ASC
