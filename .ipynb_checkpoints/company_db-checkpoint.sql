
DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_name) VALUES
('Sales'),
('Engineering'),
('HR'),
('Marketing');

INSERT INTO employees (emp_name, salary, dept_id) VALUES
('Alice', 50000, 1),
('Bob', 60000, 2),
('Charlie', 55000, 1),
('David', 70000, 2),
('Eve', 65000, 3),
('Frank', 48000, 4),
('David', 61246, 4),
('Brandi', 40910, 4),
('Rebecca', 41408, 2),
('Felicia', 43663, 1),
('Elizabeth', 50861, 1),
('Bobby', 68084, 2),
('Patricia', 76841, 2),
('Ronald', 44232, 2),
('John', 59499, 3),
('Glenn', 75920, 4),
('Matthew', 74279, 1),
('Brianna', 70610, 2),
('Lynn', 48060, 2),
('Margaret', 46595, 1),
('Adam', 79374, 3),
('Michelle', 48851, 1),
('John', 55374, 1),
('David', 79026, 3),
('Ricky', 64737, 1),
('Danielle', 78212, 4),
('Anthony', 67592, 2),
('Kathy', 73169, 4),
('Ronald', 74014, 1),
('Robert', 61250, 4);



/*
Solved during the webinar

📊 Subqueries

🧮 1. Scalar Subquery Example
Question: Find the employees whose salary is greater than the average salary of all employees.

🧾 2. Table Subquery Example
Question: List all employees who work in the same department as 'Alice'.

🔁 3. Correlated Subquery Example
Question: Find the employees who earn more than the average salary in their department.

🧱 CTEs (Common Table Expressions)

🧱 1. Simple CTE Example
Question: Find the average salary per department, and then list the employees who earn more than the average in their department.

🧱 2. CTE with Multiple CTEs
Question: Get the highest-paid employee in each department, and also get the department’s average salary.

🪟 Views Overview

🪟 1. Basic View Example
Question: Create a view that shows the employee names, their salaries, and their department names.

🪟 2. View with Aggregation
Question: Create a view to show the total salary expenses by department.

🛡️ 3. Using Views for Security
Question: Create a view that excludes salary information for HR department employees, for restricted access.
*/




/*
🧠 Practice Exercises: Subqueries, CTEs, and Views

Use the `employees` and `departments` tables to write SQL queries that solve the following problems. Try to apply subqueries, CTEs, and views as appropriate.

---

🔍 Subqueries Practice Exercises

1. Find all employees whose salary is greater than the average salary of the entire company.
2. List the employees who earn more than the average salary in their department.
3. Find the employees who work in the same department as 'Bob'.
4. Get the employees who have a higher salary than the second-highest salary in the company.
5. List all departments that have more than 3 employees.
6. Find employees who are in a department that has at least one employee earning more than $70,000.
7. List the employees who earn less than the highest salary in the 'Engineering' department.
8. Get the names of employees who have a salary greater than the average salary of their department, but only for employees in the 'Marketing' department.

---

🧱 CTEs Practice Exercises

1. Create a CTE that calculates the average salary per department and use it to list employees whose salary is higher than their department’s average.
2. Create a recursive CTE to find the manager-subordinate hierarchy starting with the highest-paid employee.
3. Using a CTE, find the employees who have the highest salary in their department, and show their names and the department's average salary.
4. Create a CTE that calculates the total salary by department and use it to find departments with a total salary expense greater than 500,000 Dollars.
5. Write a CTE that calculates the number of employees in each department and use it to list departments with more than 5 employees.
6. Use a CTE to find employees who earn more than $80,000 and have been with the company for more than 5 years.
7. Write a CTE to find the average salary for each department and the difference between each employee's salary and the department's average.
8. Create a CTE that ranks employees by salary within their department and show the top 3 highest-paid employees from each department.

---

🪟 Views Practice Exercises

1. Create a view to display all employees' names, their salary, and their department names.
2. Create a view that shows the total salary expenses per department.
3. Create a view that shows only employees who earn more than 60,000 Dollars and are in the 'Engineering' department.
4. Create a view to list employees who have been with the company for more than 5 years, excluding the salary column.
5. Create a view to show the departments and the average salary for each department.
6. Create a view that provides a summary of the employees in each department, showing the number of employees and the total salary for each department.
7. Create a view to show only employees in the 'Sales' department with salaries greater than $50,000.
8. Create a view to list the employees who are making the highest salary in their respective departments.
9. Create a view that shows the names of employees who earn more than the average salary in the company and display their department names.
10. Create a view that shows employees and their salary differences from the department's average salary.
*/
