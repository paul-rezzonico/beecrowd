SELECT products.name AS name, providers.name AS name FROM products 
INNER JOIN providers on products.id_providers = providers.id
WHERE products.id_categories=6;