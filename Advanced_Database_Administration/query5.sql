/*Create a view named customer_addresses that shows the shipping 
and billing addresses for each customer.
This view should return these columns from the Customers table: 
customer_id, email_address, last_name and first_name.
This view should return these columns from the Addresses table: 
bill_line1, bill_line2, bill_city, bill_state, bill_zip, ship_line1, 
ship_line2, ship_city, ship_state, and ship_zip.*/



CREATE OR REPLACE VIEW customer_addresses AS 
SELECT c.customer_id, c.email_address, c.last_name, c.first_name, b.line1, b.line2,
b.city AS billing_city, b.state AS billing_state, b.zip_code AS billing_zip, 
s.line1 AS ship_line1, s.line2 AS ship_line2, s.city AS ship_city, 
s.state AS ship_state, s.zip_code AS ship_zip
FROM customers c INNER JOIN addresses s
	ON c.shipping_address_id = s.address_id
   	INNER JOIN addresses b
    	ON c.billing_address_id = b.address_id
	WHERE c.shipping_address_id = s.address_id 
	AND c.billing_address_id = b.address_id
