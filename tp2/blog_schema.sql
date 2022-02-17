DROP SCHEMA blog CASCADE;
CREATE SCHEMA blog;
CREATE TABLE blog.statuses(
    status TEXT PRIMARY KEY
);

CREATE TABLE blog.articles(
    article_id SERIAL PRIMARY KEY,
    status TEXT REFERENCES blog.statuses(status)
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    title TEXT NOT NULL,
    body TEXT DEFAULT ''
);