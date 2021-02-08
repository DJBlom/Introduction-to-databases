/*Create a view named order_item_products that returns columns from 
the Orders, Order_Items, and Products tables.
This view should return these columns from the Orders table: order_id, 
order_date, tax_amount, and ship_date.
This view should return the product_name column from the Products table.
This view should return these columns from the Order_Items table: item_price, 
discount_amount, final_price (the discount amount subtracted from the item price), 
quantity, and item_total (the calculated total for the item - quantity * price).*/



CREATE OR REPLACE VIEW order_item_products AS 
SELECT o.order_id AS order_items, o.order_date AS order_date, o.tax_amount AS tax_amount,
o.ship_date AS ship_date, p.product_name AS product_name, oi.item_price AS item_price, 
oi.discount_amount AS discount_amount, (oi.discount_amount - oi.item_price) AS final_price,
oi.quantity AS quantity, (oi.quantity * item_price) AS item_total
FROM orders o INNER JOIN products p
	ON o.order_id = p.product_id
    INNER JOIN order_items oi
    ON oi.item_id = oi.order_id
    WHERE oi.item_id = o.order_id 
