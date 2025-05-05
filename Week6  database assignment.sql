-- Question 1: INNER JOIN
-- This query retrieves the firstName, lastName, email, and officeCode of all employees who have a corresponding officeCode.
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: LEFT JOIN
-- This query retrieves the productName, productVendor, and productLine from the products table, even if a productLine entry does not exist in the productlines table.
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;


-- Question 3: RIGHT JOIN
-- Hypothetical scenario to use RIGHT JOIN, assuming we want to see orders that might not have a matching customer.
-- In real-world scenarios, orders usually have customers, but for practice:
SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM orders o
RIGHT JOIN customers c ON o.customerNumber = c.customerNumber
ORDER BY o.orderDate DESC LIMIT 10;