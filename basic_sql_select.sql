CREATE DATABASE sql_basics;
USE sql_basics;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(50)
);
SHOW TABLES;
INSERT INTO employees
(employee_id, name, department, salary, age, city)
VALUES
(1, 'Anu', 'IT', 45000, 23, 'Trivandrum'),
(2, 'Rahul', 'HR', 38000, 25, 'Kochi'),
(3, 'Meera', 'IT', 52000, 28, 'Kollam'),
(4, 'Arjun', 'Finance', 48000, 30, 'Kochi'),
(5, 'Diya', 'Marketing', 42000, 24, 'Trivandrum'),
(6, 'Vishnu', 'IT', 60000, 32, 'Calicut'),
(7, 'Sneha', 'HR', 40000, 27, 'Kollam'),
(8, 'Adithya', 'Finance', 55000, 29, 'Trivandrum'),
(9, 'Neha', 'Marketing', 47000, 26, 'Kochi'),
(10, 'Nikhil', 'IT', 65000, 35, 'Calicut');
SELECT * FROM employees;
SELECT name, department
FROM employees;
SELECT * FROM employees WHERE department = 'IT';
SELECT name, salary
FROM employees
WHERE salary > 50000;
SELECT name, department, city FROM employees WHERE city = 'Kochi';
SELECT name, age FROM employees WHERE age < 28;
SELECT name, salary FROM employees ORDER BY salary ASC;
SELECT name, salary FROM employees ORDER BY salary DESC;
SELECT name, salary FROM employees WHERE department = 'IT' ORDER BY salary DESC;
SELECT name, age, department FROM employees ORDER BY age DESC;