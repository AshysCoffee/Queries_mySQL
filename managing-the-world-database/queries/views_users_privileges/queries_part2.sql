CREATE VIEW high_population_cities AS
SELECT name, countrycode, population FROM city WHERE population > 1000000;

CREATE VIEW countries_with_languages AS
SELECT country.name, countrylanguage.language 
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE countrylanguage.language <> 'English';

CREATE USER 'db_user'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON world.city TO 'db_user'@'%';
GRANT SELECT ON world.country TO 'db_user'@'%';
GRANT INSERT, UPDATE ON world.city TO 'db_user'@'%';

CREATE USER 'db_user'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON world.city TO 'db_user'@'%';
GRANT SELECT ON world.country TO 'db_user'@'%';
GRANT INSERT, UPDATE ON world.city TO 'db_user'@'%';

REVOKE INSERT, UPDATE ON world.country FROM 'db_user'@'%';
GRANT ALL PRIVILEGES ON world.high_population_cities TO 'db_user'@'%';
