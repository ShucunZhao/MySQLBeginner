USE sql_store;
-- SELECT first_name, last_name
-- FROM customers
-- UNION
-- SELECT name, shippers.shipper_id
-- FROM shippers
SELECT 
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id,
    order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';