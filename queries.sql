-- queries.sql
-- 1. Total sales
SELECT SUM(p.price * o.quantity) AS total_sales
FROM Orders o
JOIN Products p ON o.product_id = p.product_id;

-- 2. Top-selling products
SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- 3. Customer purchase summary
SELECT c.customer_name, SUM(p.price * o.quantity) AS amount_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
GROUP BY c.customer_name;

-- 4. Monthly revenue (example)
SELECT STRFTIME('%Y-%m', order_date) AS month, SUM(p.price * o.quantity) AS monthly_revenue
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 5. Products never sold
SELECT p.product_name
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;
