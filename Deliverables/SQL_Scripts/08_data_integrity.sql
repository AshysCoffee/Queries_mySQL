USE sakila;

-- We created a constraint in the rental table.
ALTER TABLE rental 
ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE;

-- Created a TRIGGER 
DELIMITER //
CREATE TRIGGER before_rental_insert
BEFORE INSERT ON rental
FOR EACH ROW
BEGIN
	INSERT INTO log_rental (rental_id, mensaje)
    VALUES (NEW.rental_id, 'Nuevo alquiler registrado.');
END;
//
DELIMITER ;
