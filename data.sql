-- data.sql
INSERT INTO Customers (customer_id, customer_name, country) VALUES 
(1, 'Amit', 'India'),
(2, 'Riya', 'India'),
(3, 'John', 'USA');

INSERT INTO Products (product_id, product_name, price) VALUES
(101, 'Laptop', 55000.00),
(102, 'Mobile', 20000.00),
(103, 'Headphones', 1500.00);

INSERT INTO Orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1001, 1, 101, 1, '2023-08-12'),
(1002, 2, 102, 2, '2023-08-13'),
(1003, 3, 103, 3, '2023-08-14');
