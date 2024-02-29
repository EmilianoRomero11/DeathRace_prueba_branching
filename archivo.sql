USE sakila;
SELECT * FROM sakila.actor
ORDER BY last_name LIMIT 20;
DESC sakila.country;
SELECT city, country FROM sakila.city
INNER JOIN sakila.country
ON city.country_id = country.country_id
WHERE country.country_id < 10;
SELECT C.title, B.store_id, A.inventory_id
FROM inventory AS A INNER JOIN store AS B USING (store_id)
INNER JOIN film AS C USING (film_id)
WHERE C.title = "Academy Dinosaur";

SELECT DISTINCT A.first_name, A.last_name, C.title AS "nombre pelicula" FROM 
sakila.actor AS A INNER JOIN sakila.film_actor AS B
USING (actor_id)
INNER JOIN sakila.film AS C
USING(film_id)
LIMIT 10;
