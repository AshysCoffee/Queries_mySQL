SHOW TABLES;

-- We join the rental table with customer to find the last 30 days rentals.
SELECT * FROM customer
JOIN RENTAL ON customer.customer_id=rental.rental_id
WHERE rental.rental_date >= NOW() - INTERVAL 30 DAY
ORDER BY rental.rental_date DESC;

-- Selecting and join the rental table, allow us looking the most rented films
SELECT * FROM film
JOIN RENTAL ON film.film_id=rental.rental_id
ORDER BY rental_rate DESC;

-- Joining 3 tables, we can get the total sells in each store
SELECT store.store_id, SUM(payment.amount) AS total_sells FROM store
JOIN staff ON store.store_id = staff.store_id
JOIN payment ON staff.staff_id = payment.staff_id
GROUP BY store.store_id
ORDER BY total_sells DESC;
