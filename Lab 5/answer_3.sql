SELECT results.PL AS productLine, SUM(income) AS total_income
FROM
(SELECT p.productLine AS PL, ((od.priceEach - p.buyPrice) * od.quantityOrdered) AS income
FROM classicmodels32.orderdetails od, classicmodels32.products p
WHERE od.productCode = p.productCode) AS results
GROUP BY productLine
ORDER BY total_income DESC LIMIT 1;
