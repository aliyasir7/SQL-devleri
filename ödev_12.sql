/*### ÖDEV 12 ###*/

1-
SELECT COUNT(*)
FROM film
WHERE length > (SELECT AVG(length) FROM film)


2-
SELECT COUNT(*)
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film)


3-
SELECT title
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

4-
SELECT DISTINCT first_name,last_name, payment.customer_id 
FROM customer 
INNER JOIN payment ON payment.customer_id = customer.customer_id 
WHERE payment.customer_id=ANY( 
	SELECT customer_id
	FROM payment 
	GROUP BY customer_id 
	ORDER BY COUNT(*) DESC 
	LIMIT 5);




















