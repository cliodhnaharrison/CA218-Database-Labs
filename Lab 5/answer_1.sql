(SELECT CONCAT(c.first_name, " ", c.last_name, "_sakila") AS customer_name, SUM(p.amount) AS amount
FROM sakila.customer c, sakila.payment p
WHERE c.customer_id = p.customer_id
GROUP BY c.customer_id)

UNION

(SELECT CONCAT(c.contactFirstName, " ", c.contactLastName, "_classic") AS customer_name, SUM(p.amount) AS amount
FROM classicmodels32.payments p, classicmodels32.customers c
WHERE p.customerNumber = c.customerNumber
GROUP BY p.customerNumber);
