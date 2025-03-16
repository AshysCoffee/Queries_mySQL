-- We select the films released after 2005
SELECT * FROM film AS post_2005
WHERE release_year>=2005;

-- We created a table with those results
CREATE TABLE recent_films AS
SELECT * FROM film WHERE release_year>2005;