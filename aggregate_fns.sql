SELECT count(*) AS product_count FROM products;

SELECT productLine, sum(quantityInStock) AS product_sum FROM products group by productLine;

SELECT productLine, format(avg(buyPrice), 2) AS avg_buyPrice FROM products group by productLine;

SELECT max(buyprice) from products;

SELECT productName, buyprice 
FROM classicmodels.products 
WHERE buyprice = (SELECT MAX(buyprice) FROM classicmodels.products);



