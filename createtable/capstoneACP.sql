CREATE TABLE employees1 (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees1 VALUES
(1, 'Harsh', 'IT', 70000, 'New York'),
(2, 'Riya', 'HR', 50000, 'Chicago'),
(3, 'Aman', 'Finance', 60000, 'New York'),
(4, 'Neha', 'IT', 80000, 'Boston'),
(5, 'Karan', 'HR', 55000, 'Chicago'),
(6, 'Simran', 'Finance', 65000, 'New York');

SELECT * FROM employees;

SELECT * 
FROM employees
WHERE salary > 60000;

SELECT * 
FROM employees
WHERE city = 'New York';

SELECT * 
FROM employees
ORDER BY salary DESC;

SELECT * 
FROM employees
ORDER BY name ASC;

SELECT SUM(salary) AS total_salary FROM employees;

SELECT AVG(salary) AS avg_salary FROM employees;

SELECT MIN(salary), MAX(salary) FROM employees;

SELECT 
    department,
    SUM(salary) AS total_salary,
    AVG(salary) AS avg_salary,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT *
FROM employees
WHERE city = 'New York' AND salary > 60000
ORDER BY salary DESC;