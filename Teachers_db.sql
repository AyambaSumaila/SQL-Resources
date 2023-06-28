 CREATE TABLE teachers_T (
 id INT auto_increment PRIMARY KEY,
 first_name varchar(25),
last_name varchar(50),
school varchar(50),
 hire_date date,
 salary numeric
 );
 
 
 INSERT INTO teachers_T (first_name, last_name, school, hire_date, salary)
 VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

SELECT *FROM teachers_T;
--- first name, last name, salary

--- Distinct school, salary
SELECT DISTINCT school, salary FROM teachers_T
ORDER BY salary DESC;

SELECT first_name, last_name, salary FROM teachers_T;
--- Distinct Schools
SELECT DISTINCT school FROM teachers_T;


SELECT last_name, school, hire_date
FROM teachers_T
ORDER BY school ASC, hire_date DESC;

SELECT last_name, school, hire_date
FROM teachers_T
WHERE school="Myers Middle School";

SELECT first_name, last_name, school
FROM teachers_T
WHERE first_name="Janet";

SELECT school
FROM teachers_T
WHERE school !="F.D. Roosevelt HS";


SELECT first_name, last_name, hire_date
FROM teachers_T
WHERE hire_date <"2000-01-01";

-- find teachers who earn $43,500 or mor
SELECT first_name, last_name, salary
FROM teachers_T
WHERE salary >=43500;

--  find teachers who earn
-- between $40,000 and $65,000

SELECT first_name, last_name
FROM teachers_T
WHERE salary BETWEEN 40000 AND 65000;

SELECT first_name
FROM teachers_T
WHERE first_name LIKE "sam%";
SELECT first_name

FROM teachers_T
WHERE first_name;


-- All teachers in Myers Middle School who earns salary less than 40000

SELECT *
FROM teachers_T
WHERE school="Myers Middle School"
AND salary<40000;

-- All teachers with last name 'Cole', Or last name='Bush'

SELECT *
FROM teachers_T
WHERE last_name='Cole'
OR last_name='Bush';

SELECT *
FROM teachers
WHERE school='F.D Roosevelt HS'
AND (salary <38000 OR salary>40000);

SELECT first_name, last_name, school, hire_date, salary
FROM teachers_T
WHERE school LIKE "%Roos%"
ORDER BY hire_date DESC;

-- The school district superintendent asks for a list of teachers in each school
-- Write a query that lists the schools in alphabetical order along with teachers ordered by last name A–Z

SELECT school,  last_name
FROM teachers_T 
ORDER BY last_name ASC;


-- Write a query that finds the one teacher whose first name starts with the
-- letter S and who earns more than $40,000

SELECT first_name
FROM teachers_T
WHERE first_name LIKE "S%"
AND salary > 40000;


-- Rank teachers hired since January 1, 2010, ordered by highest paid to
-- lowest

SELECT first_name, last_name, salary, hire_date
FROM teachers_T
WHERE hire_date >"2010-01-10"
ORDER BY salary DESC;

