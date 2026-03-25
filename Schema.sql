CREATE database Testing;

USE Testing;

SHOW tables;

SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Order_Items;

-- 1. Categories Table
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Products Table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    category_id INT REFERENCES Categories(category_id) ON DELETE SET NULL,
    product_name VARCHAR(200) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0)
);

-- 4. Orders Table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES Customers(customer_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Pending' CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled'))
);

-- 5. Order_Items (Bridge Table for Normalization)
CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES Orders(order_id) ON DELETE CASCADE,
    product_id INT NOT NULL REFERENCES Products(product_id),
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10, 2) NOT NULL -- Stored to preserve price history
);