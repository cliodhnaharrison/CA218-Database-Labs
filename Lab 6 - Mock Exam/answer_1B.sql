SELECT f.title, c.name
FROM sakila.film f, sakila.film_category fc, sakila.category c
WHERE f.film_id = fc.film_id AND fc.category_id = c.category_id AND f.title LIKE "A%"
ORDER BY title;
