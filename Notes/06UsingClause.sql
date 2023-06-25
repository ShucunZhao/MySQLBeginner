USE sql_invoicing;
SELECT  pay.date,
		cli.name AS client,
        pay.amount,
        pay_m.name
FROM payments pay
JOIN clients cli
	Using(client_id)
JOIN invoices inv
	Using(invoice_id)
JOIN payment_methods pay_m
	ON pay_m.payment_method_id = pay.payment_method