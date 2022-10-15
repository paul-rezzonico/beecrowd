WITH maxi(number_max)
    AS 
    (SELECT MAX(customers_number) FROM lawyers
    ),

    mini(number_min)
    AS
    (SELECT MIN(customers_number) FROM lawyers),

    moyenne(nb_moyenne)
    AS
    (SELECT ROUND(AVG(customers_number)) FROM lawyers)


SELECT name, maxi.number_max FROM lawyers, maxi
WHERE lawyers.customers_number=maxi.number_max
UNION ALL
SELECT name, mini.number_min FROM lawyers, mini
WHERE lawyers.customers_number=mini.number_min
UNION ALL
SELECT 'Average', moyenne.nb_moyenne FROM moyenne