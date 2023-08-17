use classicmodels;
/* Question: List out the top 5 city where payment is highest in last 6 month  */

SELECT c.city, SUM(p.amount) AS total_amount
FROM customers c
LEFT JOIN payments p 
ON c.customerNumber = p.customerNumber
WHERE p.paymentDate >= DATE_ADD((SELECT MAX(paymentDate) FROM payments), INTERVAL -6 MONTH)
GROUP BY c.city
ORDER BY total_amount DESC
LIMIT 5;




