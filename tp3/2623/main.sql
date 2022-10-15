SELECT products.name AS name, categories.name AS name FROM products
JOIN categories
    ON categories.id=products.id_categories
WHERE products.amount >'100' AND (categories.id BETWEEN '1' AND '3' OR categories.id='6' OR categories.id='9')
ORDER BY categories.id;