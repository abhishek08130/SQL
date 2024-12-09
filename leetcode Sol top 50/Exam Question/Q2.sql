-- you are the managing a database of an e-commerce website. the customer table has the following attributes: c_id,C_name,_c_age,C_address,C_amount. write a sql query
-- 1. Retrive the info of all customers
-- 2. find the customer who has the minimum amount
-- 3. calculate the average amount
-- 4 drop the table customer
-- 5 display the customer details whose name starts and ends with "s"

-- Create customer table
CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    C_name VARCHAR(50),
    c_age INT,
    C_address VARCHAR(100),
    C_amount DECIMAL(10,2)
);

-- 1. Retrieve all customer information
SELECT * FROM customer;

-- 2. Find customer with minimum amount
SELECT *
FROM customer 
WHERE C_amount = (SELECT MIN(C_amount) FROM customer);

-- 3. Calculate average amount
SELECT AVG(C_amount) as Average_Amount
FROM customer;

-- 4. Drop customer table
DROP TABLE customer;

-- 5. Display customers whose name starts and ends with 's'
SELECT *
FROM customer
WHERE C_name LIKE 's%s';
