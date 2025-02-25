-- Insert sample data into Customers
INSERT INTO Customers (customer_id, first_name, last_name, email) VALUES
(1, 'Alice', 'Smith', 'alice.smith@email.com'),
(2, 'Bob', 'Johnson', 'bob.j@email.com'),
(3, 'Clara', 'Lee', 'clara.lee@email.com'),
(4, 'David', 'Brown', 'david.b@email.com'),
(5, 'Emma', 'Davis', 'emma.d@email.com'),
(6, 'Frank', 'Wilson', 'frank.w@email.com'),
(7, 'Grace', 'Taylor', 'grace.t@email.com'),
(8, 'Henry', 'Moore', 'henry.m@email.com'),
(9, 'Isabel', 'Clark', 'isabel.c@email.com'),
(10, 'James', 'Adams', 'james.a@email.com');

-- Insert sample data into Products
INSERT INTO Products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 599.99),
(3, 'Headphones', 'Electronics', 79.99),
(4, 'T-shirt', 'Clothing', 19.99),
(5, 'Jeans', 'Clothing', 49.99),
(6, 'Sneakers', 'Clothing', 89.99),
(7, 'Coffee Maker', 'Appliances', 129.99),
(8, 'Blender', 'Appliances', 59.99),
(9, 'Book: SQL Basics', 'Books', 29.99),
(10, 'Book: Data Science', 'Books', 39.99);

-- Insert sample data into Orders
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2025-01-15', 999.99),
(2, 2, '2025-01-20', 679.98),
(3, 3, '2025-01-25', 49.99),
(4, 4, '2025-02-01', 189.98),
(5, 5, '2025-02-05', 599.99),
(6, 6, '2025-02-10', 109.98),
(7, 7, '2025-02-12', 129.99),
(8, 8, '2025-02-15', 1599.98),
(9, 9, '2025-02-18', 29.99),
(10, 10, '2025-02-20', 89.99),
(11, 1, '2025-02-21', 79.99),
(12, 2, '2025-02-22', 49.99),
(13, 3, '2025-02-23', 1199.97),
(14, 4, '2025-02-24', 19.99),
(15, 5, '2025-02-24', 39.99);

-- Insert sample data into Order_Items
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),    -- Alice: Laptop
(2, 2, 2, 1),    -- Bob: Smartphone
(3, 2, 3, 1),    -- Bob: Headphones
(4, 3, 5, 1),    -- Clara: Jeans
(5, 4, 7, 1),    -- David: Coffee Maker
(6, 4, 4, 1),    -- David: T-shirt
(7, 5, 2, 1),    -- Emma: Smartphone
(8, 6, 6, 1),    -- Frank: Sneakers
(9, 6, 4, 1),    -- Frank: T-shirt
(10, 7, 7, 1),   -- Grace: Coffee Maker
(11, 8, 1, 1),   -- Henry: Laptop
(12, 8, 2, 1),   -- Henry: Smartphone
(13, 9, 9, 1),   -- Isabel: Book: SQL Basics
(14, 10, 6, 1),  -- James: Sneakers
(15, 11, 3, 1),  -- Alice: Headphones
(16, 12, 5, 1),  -- Bob: Jeans
(17, 13, 1, 1),  -- Clara: Laptop
(18, 13, 3, 1),  -- Clara: Headphones
(19, 14, 4, 1),  -- David: T-shirt
(20, 15, 10, 1); -- Emma: Book: Data Science
