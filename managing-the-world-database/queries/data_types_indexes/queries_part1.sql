SHOW TABLES;

DESC country;
DESC city;
DESC countrylanguage;

ALTER TABLE city ADD COLUMN is_population_large BOOLEAN GENERATED ALWAYS AS (population > 1000000) STORED;
ALTER TABLE country ADD COLUMN region_code CHAR(3) DEFAULT 'NA';


ALTER TABLE city ADD CONSTRAINT chk_population CHECK (population >= 0);
ALTER TABLE country ADD CONSTRAINT unique_code UNIQUE (code);

CREATE INDEX index_city_name ON city(name);
