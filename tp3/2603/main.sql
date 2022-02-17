SELECT customers.name, customers.street AS adresses FROM customers
WHERE customers.city = 'Porto Alegre'; 

SELECT customers.name, (customers.street, customers.city, customers.state) AS adresses FROM customers
WHERE customers.city = 'Porto Alegre'; 