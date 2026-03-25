-- Seeding Categories
INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Home Decor'),
('Sports'),
('Books'),
('Beauty'),
('Toys'),
('Groceries'),
('Automotive'),
('Furniture');

-- Seeding Customers
INSERT INTO Customers (full_name, email, phone) VALUES
('John Doe', 'john1@mail.com', '1111111111'),
('Emma Smith', 'emma2@mail.com', '2222222222'),
('Liam Johnson', 'liam3@mail.com', '3333333333'),
('Olivia Brown', 'olivia4@mail.com', '4444444444'),
('Noah Davis', 'noah5@mail.com', '5555555555'),
('Ava Wilson', 'ava6@mail.com', '6666666666'),
('James Miller', 'james7@mail.com', '7777777777'),
('Sophia Taylor', 'sophia8@mail.com', '8888888888'),
('Benjamin Moore', 'ben9@mail.com', '9999999999'),
('Mia Anderson', 'mia10@mail.com', '1010101010');

-- Seeding Products
INSERT INTO Products (category_id, product_name, price, stock_quantity) VALUES
(1, 'Smartphone X', 699.99, 25),
(1, 'Laptop Pro', 1299.00, 15),
(2, 'Winter Jacket', 89.99, 40),
(3, 'Wall Clock', 25.50, 60),
(4, 'Football', 19.99, 80),
(5, 'Novel Book', 12.99, 100),
(6, 'Face Cream', 15.49, 50),
(7, 'Toy Car', 9.99, 120),
(8, 'Organic Rice', 4.99, 200),
(9, 'Car Wax', 14.99, 30);

-- Seeding Orders
INSERT INTO Orders (customer_id, status) VALUES
(1, 'Pending'),
(2, 'Shipped'),
(3, 'Delivered'),
(4, 'Pending'),
(5, 'Cancelled'),
(6, 'Delivered'),
(7, 'Pending'),
(8, 'Shipped'),
(9, 'Delivered'),
(10, 'Pending');

-- Seeding Order Items
INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 699.99),
(1, 3, 2, 89.99),
(2, 2, 1, 1299.00),
(3, 4, 1, 25.50),
(4, 5, 3, 19.99),
(5, 6, 1, 12.99),
(6, 7, 2, 15.49),
(7, 8, 5, 9.99),
(8, 9, 1, 4.99),
(9, 10, 1, 14.99);