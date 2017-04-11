-- number one
SELECT customer_id, COUNT(rental_id)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(rental_id) DESC;
-- retrieves cumulative totals of customers, top two are customer_id 148 && 526
SELECT * FROM customer WHERE customer_id = 148;
-- result is store 1
SELECT * FROM customer WHERE customer_id = 526;
-- result is store 2, answer is Karl Seal
-- also ran the same code but with `SUM(payment)` and same result is achieved

--number two
SELECT film_id, title FROM film WHERE title LIKE 'Image%';
SELECT * FROM inventory WHERE film_id = 453;
SELECT * FROM inventory WHERE inventory_id = 2092; --first inventory_id with store_id of 2
-- this shows that the film is available to rent at that time

-- number three
SELECT DISTINCT customer.customer_id, customer.first_name, rental.rental_id, rental.rental_date
FROM rental
INNER JOIN customer ON customer.customer_id = rental.customer_id
WHERE rental_date BETWEEN '05-01-2005'  AND '05-31-2005'
ORDER BY customer_id;




-- improvements, I would combine rental and inventory. You could have inventory
-- status be a bool and then have additional details, it makes for less queries
-- film, film_category, and film seem as if they could all be in the same table.
-- Joining them with a foreign key seems unnecessarily excessive and makes for
-- more difficult queries than are necessart
