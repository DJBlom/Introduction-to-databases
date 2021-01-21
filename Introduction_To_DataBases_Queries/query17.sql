/* Write an INSERT statement that adds this row to the Customers table:
email_address: rick@raven.com
password: (empty string)
first_name: Rick
last_name: Raven
Use a column list for this statement. */


INSERT INTO customers
	(email_address,
     	password,
     	first_name,
     	last_name)
VALUES
	('rick@raven.com',
     	 '',
     	 'Rick',
     	 'Raven')
