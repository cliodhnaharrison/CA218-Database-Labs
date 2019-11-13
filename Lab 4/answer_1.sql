SELECT F.title, F.release_year, FC.category_id, F.description
FROM sakila.film F
LEFT JOIN sakila.film_category FC ON F.film_id = FC.film_id
WHERE F.rating = "G";
