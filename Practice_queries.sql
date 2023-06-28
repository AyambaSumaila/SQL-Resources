
SELECT *
FROM
employee_C;

SELECT *
FROM
client_C;

SELECT *
FROM
branch_C;

SELECT *
FROM
works_with_C;


SELECT *
FROM employee_C
ORDER BY salary DESC;

SELECT 
DISTINCT emp_id
FROM employee_C;

-- SQL Functions Demostration
SELECT COUNT(emp_id)
FROM employee_C;

SELECT COUNT(super_id)
FROM employee_C;

-- Find the number of female employees born a
-- after 1970

SELECT COUNT(emp_id)
FROM employee_C
WHERE sex='F' AND birth_day >"1970-01-01";

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee_C;

-- For Female average salary
SELECT AVG(salary)
FROM employee_C
WHERE sex="F";

-- For Male average salary
SELECT AVG(salary)
FROM employee_C
WHERE sex="M";

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee_C;

-- SQL aggregations

-- Find out how many males and females there are
-- Female count
SELECT COUNT(sex), sex
FROM employee_C
WHERE sex="F" OR sex="M";

-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with_C
GROUP BY emp_id;

 
SELECT SUM(total_sales), client_id
FROM works_with_C
GROUP BY client_id;

-- %, =, #,  Wildcards in SQL
-- Find any client's who are in LLc

 SELECT *
 FROM client_C
 WHERE client_name LIKE "%LLC";
 
 DELETE FROM 
 
 -- Find any branch supplier who are 
 -- in label business
 
 SELECT * 
 FROM branch_supplier_C
 
 WHERE supplier_name LIKE "%Labels";
  SELECT *
 FROM client_C
 WHERE client_name LIKE "%";
 


SELECT COUNT(sex), sex
FROM employee_C
GROUP BY sex;



Find any employee born in October
SELECT first_name, last_name, birth_day
FROM employee_C
WHERE birth_day LIKE "____-10%";

Find any employee born in October
SELECT first_name, last_name, birth_day
FROM employee_C
WHERE birth_day LIKE "____-02%";

-- Find any client who are schools
SELECT *
FROM client_C
WHERE client_name LIKE "%school%";

-- Find a list of employees and branch names
SELECT first_name AS company_name
FROM employee_C
UNION
SELECT branch_name
FROM branch_C;
-- Find a list of all clients& branch 
-- supplier's names

SELECT client_name, branch_id
FROM client_C
UNION
SELECT supplier_name, branch_id
FROM branch_supplier_C;

-- Find a list of all money spent by th
-- company
SELECT salary
FROM employee_C
UNION 
SELECT total_sales
FROM works_with_C;

-- SQL Joins
INSERT INTO branch_C VALUES(4, "Buffalo", NULL, NULL);

SELECT *
FROM branch_C;

-- Find all branches and the
-- names of their managers
SELECT employee_C.emp_id, employee_C.first_name,
branch_C.branch_name
FROM employee_C
JOIN branch_C
ON employee_C.emp_id=branch_C.mgr_id;

-- LEFT JOIN
SELECT employee_C.emp_id, employee_C.first_name,
branch_C.branch_name
FROM employee_C
LEFT JOIN branch_C
ON employee_C.emp_id=branch_C.mgr_id;

-- RIGHT JOIN
SELECT employee_C.emp_id, employee_C.first_name,
branch_C.branch_name
FROM employee_C
RIGHT JOIN branch_C
ON employee_C.emp_id=branch_C.mgr_id;

-- FULL OUTER JOIN=LEFT JOIN + RIGHT JOIN
-- NOT SUPPORTED BY SQL

-- SQL NESTED QUERIES
-- 

DESCRIBE employee_C;

SELECT LPAD(STRING, PAD_CHAR, LENGTH);


SELECT CONCAT(first_name, last_name) FROM employee_C;

CREATE TABLE student_S(stud_ID INT PRIMARY KEY, stud_Name VARCHAR(20), major VARCHAR(20));

INSERT INTO student_S VALUES(1, "SUMALAI", "Bsc IT");

INSERT INTO student_S VALUES(2, "ABDULA", "Economics");

INSERT INTO student_S VALUES(3, "SULE", "Comp Science");

INSERT INTO student_S VALUES(4, "SUMALAI", "Bsc IT");

INSERT INTO student_S VALUES(5, "AWAL", "LAB TECH");

INSERT INTO student_S VALUES(6, "MUNIRAS", "Matrhs");

INSERT INTO student_S VALUES(7, "KOFI", "CHEMISTRY");


DESCRIBE student_S;

SELECT *
FROM student_S;







INSERT INTO student_S VALUES(1, "SUMALAI", "Bsc IT");


SELECT stud_name
FROM student_S
WHERE major="Bsc IT";


SELECT COUNT(stud_ID) 
FROM student_S;



SELECT *
FROM employee_C;

-- Find all Clients

SELECT *
FROM client_C;

-- Find all emplyees ordered by sex then name

SELECT *
FROM employee_C
LIMIT 5;


-- Find the first and last names of all employees 
SELECT first_name, last_name
FROM 
employee_C;


-- Find the forename and surnames of all employees
SELECT first_name AS forename, last_name AS surname
FROM
employee_C;

-- Find out all the different gender
SELECT   DISTINCT sex
FROM 
employee_C;

-- Find out all the different branch_id
SELECT DISTINCT branch_id
FROM employee_C;

-- Find out the sum of salary average
SELECT (avg(salary))
FROM 
employee_C;


-- Find out the number of employees
SELECT COUNT(emp_id)
FROM 
employee_C;

-- Find out the number of female employee born after 1970

SELECT COUNT(emp_id) AS born_after
FROM
employee_C
WHERE sex='F' AND birth_day>"1970-01-01";

-- Find out the average salary of all 
-- employee

SELECT  AVG(salary)
FROM 
employee_C
WHERE sex='M';
-- Find the sum of all employees
-- salary
SELECT SUM(salary)
FROM employee_C
WHERE sex='M';
SELECT SUM(salary)
FROM employee_C
WHERE sex='M';

SELECT SUM(salary)
FROM employee_C
WHERE sex='M';

-- Find out how many males and females there
-- are
SELECT  COUNT(sex), sex
FROM 
employee_C
GROUP BY sex;

-- Find the total sales of each salemans

SELECT SUM(total_sales), emp_id
FROM works_with_C
GROUP BY emp_id;

-- Find the total sales of each client

SELECT SUM(total_sales), client_id
FROM works_with_C
GROUP BY client_id;

-- Wild cards
-- % = any charatrer
-- One charater format
-- Find any client's who are in LLC
SELECT *
FROM
client_C
WHERE client_name LIKE "%LLC";

-- Find any branch supplier who are in the
-- in label business
SELECT *
FROM 
branch_supplier_C
WHERE supplier_name LIKE "%LABEL%";

-- Find any employee born in October

SELECT *
FROM 
employee_C
WHERE birth_date LIKE"___-10";

-- Find out any client who are Schoo;
SELECT *
FROM client_C
WHERE client_name LIKE "%school%";


SELECT MAX(emp_id)
FROM employee_C;


-- The Union Operator
-- Find a list of employee and branch names

SELECT first_name
FROM employee_C
UNION
SELECT branch_name
FROM branch_C;

-- Find list of all clients & branch 
-- suppliers' names;

SELECT client_name, branch_id
FROM client_C
UNION
SELECT supplier_name, branch_id
FROM branch_supplier_C;

-- Find a list of all money spent or
-- earned by the company

SELECT salary
FROM employee_C
UNION
SELECT total_sales
FROM works_with_C;

-- Joins In SQL

INSERT INTO branch_C VALUES(4, "Buffalo", NULL, NULL);

-- Find all the branches and the name
-- of their managers

SELECT employee_C;
-- Find out names of all employees who have
-- sold over 30000 to a client
-- Find names opf all employees who have 
-- sold over 30000 to a single client

SELECT works_with__C.emp_id
FROM works_with_C
WHERE works_with_C.total_sales>30000;

-- Find all clients who are handler--
-- by the branch that Michael Scott manages
-- Assume you know Michael's ID

SELECT branch_C.branch_id
FROM branch_C
WHERE branch_C.mrg_id=102;

SELECT*
FROM employee_C;
CREATE USER 'John123'@'%' IDENTIFIED BY 'OpenSesame';
CREATE USER 'John456'@'%' IDENTIFIED BY 'somePassword';

SELECT user,host,password from mysql.user where user in ('John123','John456');

HEX('fööbar');

