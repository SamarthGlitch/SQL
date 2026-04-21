CREATE TABLE employeess (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employeess VALUES
(1, 'Rita', 'HR', 50000),
(2, 'Amit', 'IT', 70000),
(3, 'John', 'Finance', 60000),
(4, 'Sara', 'IT', 80000),
(5, 'Priya', 'HR', 55000),
(6, 'David', 'Finance', 65000);

SELECT SUM(salary) AS total_salary
FROM employeess;

SELECT AVG(salary) AS average_salary
FROM employeess;

SELECT COUNT(*) AS total_employees
FROM employeess;

SELECT MIN(salary) AS min_salary
FROM employeess;

SELECT MAX(salary) AS max_salary
FROM employeess;