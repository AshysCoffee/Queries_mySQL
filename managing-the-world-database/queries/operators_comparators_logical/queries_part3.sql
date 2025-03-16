SELECT name, population FROM country WHERE population BETWEEN 50000000 AND 200000000;

SELECT name FROM country WHERE population IN (20000000, 30000000, 40000000, 50000000);

SELECT city.name FROM city
JOIN country ON city.countrycode = country.code
WHERE city.population BETWEEN 1000000 AND 10000000
AND country.continent != 'Asia';

SELECT name FROM country WHERE population > 100000000 OR continent = 'Europe';
