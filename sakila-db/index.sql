--! descanding filter Z to A
SELECT * FROM actor ORDER BY first_name DESC last_name DESC

--! filter huruf awal C dan ambil 10 data teratas
SELECT actor_id, first_name, last_name, last_update  FROM actor WHERE first_name LIKE 'C%' LIMIT 10;


--! Dapatkan data title, rental_rate dan rating dari tabel film, yang memiliki ratingG atau R. Serta mempunyai rental_rate antara 2 sampai 5.
SELECT title, rental_rate, rating  FROM film  WHERE rating LIKE 'G%' || rating LIKE 'R%'  AND rental_rate  BETWEEN 2  AND 5;

--! Dapatkan rating dan rata-rata nilai rental_duration dari tabel film. Kemudian kelompokkan berdasar rating
SELECT rating, AVG(rental_duration) AS 'AVG(rental_duration)' FROM film GROUP BY rating;

--! INNER JOIN film dan film_actor
SELECT film.title, film_actor.actor_id, film_actor.film_id FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
WHERE film_actor.actor_id = 15;
