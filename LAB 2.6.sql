USE sakila;

## 1. 

SELECT *, COUNT(last_name) AS repetition
FROM sakila.actor
GROUP BY last_name
HAVING repetition = 1;

## 2. 

SELECT last_name, COUNT(last_name) AS repetition
FROM sakila.actor
GROUP BY last_name
HAVING repetition > 1;

## 3. 

SELECT staff_id, COUNT(rental_id) AS number_of_movies_rented
FROM sakila.rental
GROUP BY staff_id;

## 4. 

SELECT release_year, COUNT(film_id) AS films_per_year
FROM sakila.film
GROUP BY release_year;

## 5. 

SELECT rating, COUNT(film_id) films_per_rating
FROM sakila.film
GROUP BY rating;

## 6. 

SELECT rating, ROUND(AVG(length), 2) AS average_lenght_per_rating
FROM sakila.film
GROUP BY rating;

## 7. 

SELECT rating, ROUND(AVG(length), 2) AS average_lenght_per_rating
FROM sakila.film
GROUP BY rating
HAVING average_lenght_per_rating > 120;

## 8. 

SELECT title, length, RANK() OVER(ORDER BY length DESC) AS 'Rank'
FROM sakila.film
WHERE length IS NOT NULL AND length !=0;


