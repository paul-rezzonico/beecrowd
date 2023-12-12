WITH counttable(nb,lenombre)
    AS
    (SELECT COUNT(value_table.amount), value_table.amount FROM value_table
    GROUP BY amount
    ORDER BY amount)

SELECT lenombre FROM counttable
LIMIT 1;