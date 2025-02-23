START TRANSACTION;
INSERT INTO city (name, countrycode, district, population) VALUES ('TestCity', 'USA', 'TestDistrict', 500000);
ROLLBACK;

START TRANSACTION;
INSERT INTO city (name, countrycode, district, population) VALUES ('NewCity', 'USA', 'TestDistrict', 700000);
UPDATE country SET population = population + 700000 WHERE code = 'USA';
COMMIT;

START TRANSACTION;
INSERT INTO city (name, countrycode, district, population) VALUES ('City1', 'USA', 'District1', 500000);
SAVEPOINT before_update;
UPDATE country SET population = population + 500000 WHERE code = 'USA';
ROLLBACK TO SAVEPOINT before_update;
COMMIT;