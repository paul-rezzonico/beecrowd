SELECT people.name AS name, ROUND(salary/10, 2) AS tax FROM people
WHERE people.salary >3000;
