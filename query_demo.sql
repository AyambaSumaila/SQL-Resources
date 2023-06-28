-- Retrieve only first name and country
-- of all customers

SELECT 
	first_name,
	country
FROM customers;

-- Distinct
-- List all countries of all customers
-- without duplicates

SELECT DISTINCT
country
FROM customers;

-- order by clause
-- Retrieve all customers where the 
-- result is sorted by score(smallest first)
SELECT *
FROM customers;

SELECT *
FROM customers
ORDER BY score ASC;

SELECT *
FROM customers;

SELECT *
FROM customers
ORDER BY score DESC;

-- Retrieve all customers, sorting the result
-- by country and then by score highst
SELECT *
FROM customers
ORDER BY country, score DESC;

SELECT *
FROM customers
ORDER BY 4, score DESC;

-- List only German customers
SELECT *
FROM customers
WHERE country = 'Germany';

-- Find all customers whose score is higher than 500
SELECT *
FROM customers
WHERE score > 500;

SELECT *
FROM customers
WHERE score <=500;

SELECT *
FROM customers
WHERE score >=500;

SELECT *
FROM customers
WHERE country <>'Germany';

SELECT *
FROM customers
WHERE customer_id IN (1, 2, 5);

SELECT *
FROM customers
WHERE first_name LIKE 'M%';
-- Name ends with 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n';

SELECT *
FROM customers
WHERE first_name LIKE '%r%';


SELECT *
FROM customers
WHERE first_name LIKE '__r%';