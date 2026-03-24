-- Seeding Categories
INSERT INTO Categories (category_name) VALUES ('Electronics'), ('Clothing'), ('Home Decor');

-- Seeding Customers
INSERT INTO Customers (full_name, email) VALUES 
('Customer 1', 'customer1@email.com'),
('Customer 2', 'customer2@email.com');

-- Seeding Products
INSERT INTO Products (category_id, product_name, price, stock_quantity) VALUES 
(1, 'Product A', 500.00, 10),
(1, 'Product B', 1200.00, 5),
(2, 'Product C', 45.00, 50);

-- Seeding Orders
INSERT INTO Orders (customer_id, status) VALUES (1, 'Pending'), (2, 'Shipped');

-- Seeding Order Items
INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES 
(1, 1, 1, 500.00),
(1, 3, 2, 45.00),
(2, 2, 1, 1200.00);