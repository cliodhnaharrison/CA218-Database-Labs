SELECT F.title, F.release_year, FC.category_id FROM sakila.film F LEFT JOIN sakila.film_category FC ON F.film_id = FC.film_id WHERE F.description LIKE "%Moose%";
