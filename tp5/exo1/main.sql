CREATE TABLE competitors(
    competiror_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL,
    score INTEGER
)