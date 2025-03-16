USE sakila;

START TRANSACTION;

-- We try to insert a new rental
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, return_date)
VALUES (NOW(), 4000, 99, 1, NULL);

-- rollback :sprakles:
ROLLBACK;


-- I'm sorry i didnt understand the querie and ChatGPT didn't solve me the doubt (╥﹏╥) :(