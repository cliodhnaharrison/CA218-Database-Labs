SELECT DISTINCT s.first_name
FROM sakila.customer s, classicmodels32.customers c
WHERE s.first_name = c.contactFirstName;
