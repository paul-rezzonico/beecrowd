SELECT customers.name AS name, orders.id AS id FROM customers
JOIN orders
    ON orders.id_customers=customers.id
WHERE orders.orders_date BETWEEN '01/01/2016' AND '06/30/2016';