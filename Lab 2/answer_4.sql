SELECT productName FROM classicmodels32.products WHERE quantityInStock > (SELECT AVG(quantityInStock) FROM classicmodels32.products);
