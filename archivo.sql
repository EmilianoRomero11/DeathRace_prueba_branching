	USE sakila;
    SELECT DATABASE();
    SHOW TABLES;
    SHOW COLUMNS FROM actor;
    DESC actor;
    SELECT * FROM sakila.actor;
	SELECT first_name, last_name FROM sakila.actor;
    
    SELECT city FROM sakila.city;
    
    SELECT name FROM sakila.language;
    SELECT * FROM sakila.language WHERE name = 'English';
    
    DESC sakila.country;
    SELECT country FROM sakila.country WHERE country_id = 15;
    SELECT city FROM sakila.city WHERE city NOT LIKE "A%A";
    
    SELECT sakila.language WHERE language_id != 2;
    
    SELECT first_name FROM sakila.actor WHERE first_name <= 'C';
    
    SELECT title FROM sakila.film WHERE title LIKE '%family%';
    SELECT title, actor FROM sakila.film_list WHERE actors LIKE 'NAT_%';
    SELECT address,district FROM address ORDER BY district ASC, address DESC;
    
    
    USE sakila;
    DESC customer;
    SELECT first_name, last_name FROM sakila.customer WHERE store_id = 2;
    
    
    DESC address;
    SELECT address FROM sakila.address WHERE city_id = 300;
    
    
    
    
    
    SELECT * FROM sakila.payment WHERE customer_id = 44;
    
    
    
    SELECT customer_id, amount FROM sakila.payment WHERE amount > 3 ORDER BY amount asc;
    
    
    
    DESC film;
    SELECT title, release_year, rental_rate FROM sakila.film WHERE rental_rate < 3 ORDER BY rental_rate desc;
    
    
    
    DESC sales_by_store;
    SELECT manager, total_sales FROM sakila.sales_by_store WHERE total_sales > 33000.00 ORDER BY total_sales desc;
    
    
    
    DESC city;
    SELECT country_id, COUNT(*) AS "Frecuencia" FROM sakila.city GROUP BY country_id ORDER BY FRECUENCIA desc;
    
    
    
    DESC film;
    SELECT rating, COUNT(*) AS "Frecuencia" FROM sakila.film WHERE length > 90 GROUP BY rating ORDER BY FRECUENCIA DESC;
    
    
    DESC film_category;
    SELECT category_id, COUNT(*) AS "Frecuencia" FROM sakila.film_category WHERE film_id < 50 GROUP BY category_id ORDER BY FRECUENCIA DESC;
    
    
    
    SELECT title, rating, name FROM sakila.film INNER JOIN language USING (language_id);
    
    
    
    SELECT DISTINCT first_name, amount FROM sakila.customer INNER JOIN payment USING (customer_id);
    
    
    
    DESC film_actor;
    SELECT first_name, last_name, title, rental_rate, rental_duration FROM sakila.film_actor INNER JOIN film USING (film_id) INNER JOIN actor USING (actor_id);