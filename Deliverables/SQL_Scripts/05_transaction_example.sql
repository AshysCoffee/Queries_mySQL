USE sakila;

-- Start the transaction
START TRANSACTION;

-- Insert new rental
INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id)
VALUES (NOW(), 1000, 44, NOW(), 1);

-- Update the inventory, with a NOW()
UPDATE inventory 
SET last_update = NOW() 
WHERE inventory_id = 1000;

COMMIT;
