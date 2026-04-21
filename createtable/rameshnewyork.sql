CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    grade INT
);

INSERT INTO customers VALUES
(1, 'Ramesh', 'New York', 120),
(2, 'Suresh', 'Los Angeles', 90),
(3, 'Anita', 'New York', 80),
(4, 'John', 'Chicago', 110),
(5, 'Priya', 'New York', 150),
(6, 'David', 'Boston', 70);

SELECT * 
FROM customers
WHERE city = 'New York' OR grade > 100;

SELECT * 
FROM customers
WHERE city = 'New York' AND grade > 100;