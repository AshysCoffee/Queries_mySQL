SELECT countrycode FROM city WHERE population > 1000000 GROUP BY countrycode HAVING COUNT(*) > 5;

SELECT countrycode FROM countrylanguage WHERE isofficial = 'T' GROUP BY countrycode HAVING COUNT(*) > 3;

SELECT city.name 
FROM city
JOIN countrylanguage 
ON city.countrycode = countrylanguage.countrycode
WHERE countrylanguage.isofficial = 'T' AND countrylanguage.language <> 'English';

SELECT countrycode, SUM(population) AS total_population
FROM city 
GROUP BY countrycode;

