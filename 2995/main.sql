SELECT records.temperature AS temperature, COUNT(records.temperature) AS number_of_records
FROM records
GROUP BY records.temperature, mark
ORDER BY mark