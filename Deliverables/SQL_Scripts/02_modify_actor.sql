SELECT * FROM actor;

-- We used the "INSERT INTO" to insert new data.
INSERT INTO ACTOR (ACTOR_ID, FIRST_NAME, LAST_NAME)
VALUES (202, "Paco", "Caiza");

-- UPDATE for modify information in a specific row.
UPDATE ACTOR
SET LAST_NAME="Suarez"
WHERE ACTOR_ID=202;

-- DELETE to erase every data of the row created
DELETE FROM actor
WHERE actor_id=202;