SHOW TABLES;

DESC country;
DESC city;
DESC countrylanguage;

ALTER TABLE city ADD CONSTRAINT chk_population CHECK (population >= 0);
ALTER TABLE country ADD CONSTRAINT unique_code UNIQUE (code);

CREATE INDEX idx_city_name ON city(name);