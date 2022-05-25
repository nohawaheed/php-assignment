-- Use the same database that we used in the lecture:

-- 1- from “orderdetails” table. Write a query to get all order numbers (without repetition) that contain any product starting with code S18 and price more than 100.

SELECT DISTINCT orderNumber ,productCode,priceEach FROM `orderdetails` WHERE productCode LIKE 'S18%' and priceEach > 100; 

-- 2- from “payments” table. Write a query to get all payments that were made on day 5 or 6 (whatever month or year).

SELECT * FROM `payments` WHERE paymentDate LIKE '%-%-05' OR paymentDate LIKE '%-%-06'; 

-- 3- from “customers” table. Write a query to get the fifth-highest credit limit of the customers who (live in the USA and their phone number contains 5555).

SELECT * FROM `customers` WHERE country = 'usa' AND phone LIKE '%5555%' ORDER BY creditLimit DESC limit 1 OFFSET 4; 

-- Notice: 
-- 1- save the three queries that you wrote in a SQL file “queries.sql”.
-- 2- put queries.sql into your repo folder.
-- 3- push the repo to Github.

