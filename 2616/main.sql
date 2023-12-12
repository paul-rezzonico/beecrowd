SELECT customers.id AS id, customers.name AS name FROM customers
LEFT JOIN locations 
ON customers.id=locations.id_customers
WHERE locations.id IS NULL
ORDER BY id;