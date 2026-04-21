CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    fraud_flag VARCHAR(10)
);

INSERT INTO employees VALUES (1, 'Tarun', 'IT', 50000, 'No');
INSERT INTO employees VALUES (2, 'Amit', 'Finance', 60000, 'Yes');
INSERT INTO employees VALUES (3, 'Riya', 'HR', 45000, 'No');
INSERT INTO employees VALUES (4, 'Neha', 'Finance', 70000, 'Yes');
INSERT INTO employees VALUES (5, 'Raj', 'IT', 55000, 'No');

SELECT * FROM employees;

SELECT * FROM employees
WHERE fraud_flag = 'Yes';