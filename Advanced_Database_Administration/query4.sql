/*Write an ALTER TABLE statement that modifies the Customers table 
in the my_guitar_shop database. You should be adding a new field 
called sms_number to store the phone number for text messages.  
The field should be designed so it can store a maximum of 20 characters.*/




ALTER TABLE customers
ADD sms_number VARCHAR(20);
