-- Index on foreign keys to speed up JOIN operations
CREATE INDEX idx_products_category ON Products(category_id);
CREATE INDEX idx_orders_customer ON Orders(customer_id);

-- Index on Order items to speed up lookups for a specific order
CREATE INDEX idx_order_items_order_id ON Order_Items(order_id);

-- Index on email for faster login/lookup
CREATE INDEX idx_customers_email ON Customers(email);