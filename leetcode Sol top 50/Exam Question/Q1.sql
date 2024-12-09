-- Q1- create a table name"employee " having attribute E_name Varchar,E_Age Int, E_address Varchar,E_date of joining date,E_salary int,E_contactNo Number.
-- 1. Write a command to display the details of employee  table .

-- 2. insert 6 rows in employee table
-- 3.change table name to employee 
-- 4. Display e salary , ename of employee having salary more that 50000
-- 5. calculate the sum of all salaries in the employee table

-- Create employee table
CREATE TABLE employee (
    E_name VARCHAR(50),
    E_Age INT,
    E_address VARCHAR(100),
    E_date_of_joining DATE,
    E_salary INT,
    E_contactNo BIGINT
);

-- 1. Display table details
DESC employee;

-- 2. Insert 6 rows
INSERT INTO employee VALUES ('John Smith', 30, '123 Main St', '2020-01-15', 60000, 1234567890);
INSERT INTO employee VALUES ('Mary Johnson', 35, '456 Oak Ave', '2019-03-20', 55000, 2345678901); 
INSERT INTO employee VALUES ('Bob Wilson', 42, '789 Pine Rd', '2018-06-10', 75000, 3456789012);
INSERT INTO employee VALUES ('Sarah Davis', 28, '321 Elm St', '2021-02-01', 45000, 4567890123);
INSERT INTO employee VALUES ('Mike Brown', 38, '654 Maple Dr', '2017-09-15', 80000, 5678901234);
INSERT INTO employee VALUES ('Lisa Anderson', 33, '987 Cedar Ln', '2019-11-30', 52000, 6789012345);

-- 3. Rename table 
ALTER TABLE employee RENAME TO employe;

-- 4. Display employees
SELECT E_name, E_salary 
FROM employe
WHERE E_salary > 50000;

-- 5. Calculate sum of all salaries
SELECT SUM(E_salary) as Total_Salary
FROM employee;