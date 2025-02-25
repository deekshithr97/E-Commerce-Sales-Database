-- 1. Total sales revenue since January 2025
SELECT SUM(total_amount) AS total_revenue
FROM Orders
WHERE order_date >= '2025-01-01';

-- 2. Top 5 best-selling products by quantity
SELECT p.product_name, p.category, SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name, p.category
ORDER BY total_quantity DESC
LIMIT 5;

-- 3. Top 3 customers by total spending
SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 3;

-- 4. Sales by category
SELECT p.category, SUM(oi.quantity * p.price) AS category_revenue
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
JOIN Orders o ON oi.order_id = o.order_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- 5. Orders placed in February 2025
SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2025-02-01' AND '2025-02-28'
ORDER BY o.order_date;
