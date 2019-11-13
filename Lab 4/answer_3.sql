SELECT c.first_name, c.last_name
FROM sakila.payment p, sakila.customer c
WHERE c.first_name != "MARY" AND p.amount > (SELECT MAX(p.amount)
FROM sakila.customer c, sakila.payment p
WHERE c.customer_id = p.customer_id AND c.first_name = "MARY");
