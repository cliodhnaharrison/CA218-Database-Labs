SELECT
    COUNT(p.productName)
FROM
    (SELECT
        orderNumber,
            productCode,
            SUM(quantityOrdered) AS total_quantity
    FROM
        classicmodels32.orderdetails
    GROUP BY productCode
    HAVING SUM(quantityOrdered) > (SELECT
            SUM(quantityOrdered)
        FROM
            classicmodels32.orderdetails
        WHERE
            productCode = 'S18_3685')) AS atq,
    (SELECT
        COUNT(DISTINCT o.customerNumber) AS TC,
            od.productCode,
            o.orderNumber
    FROM
        classicmodels32.orders o, classicmodels32.orderdetails od
    WHERE
        o.orderNumber = od.orderNumber
    GROUP BY productCode) AS tc_results,
    classicmodels32.products p
WHERE
    tc_results.productCode = atq.productCode
        AND atq.productCode = p.productCode
        AND tc_results.TC > 20
        AND atq.total_quantity > 200
