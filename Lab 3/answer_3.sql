SELECT F.film_id, F.title, F.release_year FROM sakila.film F LEFT JOIN sakila.film_actor FA ON F.film_id = FA.film_id WHERE FA.film_id IS NULL;
