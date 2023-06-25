USE sql_store;
SELECT 
	od.order_date,
    od.order_id,
    c.first_name,
    sh.name AS shipper,
    od_st.name AS status
FROM orders od
JOIN customers c ON
	od.customer_id = c.customer_id
LEFT JOIN shippers sh ON
	od.shipper_id = sh.shipper_id
LEFT JOIN order_statuses od_st ON
	od.status = od_st.order_status_id
ORDER BY od_st.name
