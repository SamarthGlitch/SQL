CREATE TABLE customers1 (
    customer_id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE orders1 (
    order_id INT,
    customer_id INT,
    product_id INT
);

INSERT INTO customers1 VALUES
(1, 'Aman', 'USA'),
(2, 'Rohit', 'India'),
(3, 'Anita', 'UK'),
(4, 'Karan', 'USA'),
(5, 'Arjun', 'India'),
(6, 'Sonia', 'Canada');

INSERT INTO products VALUES
(1, 'Laptop', 80000),
(2, 'Phone', 30000),
(3, 'Tablet', 40000),
(4, 'Headphones', 5000);

INSERT INTO orders VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 2),
(5, 5, 1),
(6, 4, 4);

SELECT *
FROM customers
WHERE name LIKE 'A%';

SELECT *
FROM customers
WHERE name LIKE '%or%';

SELECT DISTINCT country
FROM customers;

SELECT c.name, p.product_name, p.price, c.country
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id;

SELECT c.name, SUM(p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name;

SELECT c.name, SUM(p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
HAVING SUM(p.price) > 50000;

SELECT c.name, p.product_name, p.price, c.country
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE c.name LIKE 'A%' AND c.name LIKE '%or%';