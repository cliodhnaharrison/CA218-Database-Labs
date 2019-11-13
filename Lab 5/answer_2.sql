SELECT results.PL AS productLine, results.TD AS textDescription, SUM(results.total_quantity) AS total_quantity
FROM
(SELECT pl.productLine AS PL, pl.textDescription AS TD, SUM(o.quantityOrdered) AS total_quantity
FROM classicmodels32.orderdetails o, classicmodels32.products p, classicmodels32.productlines pl
WHERE o.productCode = p.productCode AND p.productLine = pl.productLine
GROUP BY o.productCode, pl.productLine) AS results
GROUP BY productLine
ORDER BY total_quantity DESC LIMIT 3;
