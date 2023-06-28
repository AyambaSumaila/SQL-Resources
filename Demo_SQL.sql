CREATE TABLE student_B(
stud_ID INT PRIMARY KEY,
name VARCHAR(30) NOT NULL, 
major VARCHAR(20) UNIQUE
);

INSERT INTO student_B VALUES(
1, 'Jack', 'Biology');
INSERT INTO student_B VALUES(
2, 'Kat', 'Sociology');
INSERT INTO student_B VALUES(
3, 'Claire', 'Chemistry' );
INSERT INTO student_B VALUES(
4, 'Jack', 'Histrory');
INSERT INTO student_B VALUES(
5, 'Mike', 'Computer Science');

SELECT *FROM student_B;

SELECT name FROM student_B 
WHERE stud_ID=4;

UPDATE student_B
SET major='Comp Sci'
WHERE stud_ID=4;


UPDATE student_B
SET major='Biochemistry'
WHERE major='Sociology' OR major='Chemistry';

UPDATE student_B
SET name='Sumaila', major='Sociology'
WHERE stud_ID=1;

DELETE FROM student_B
WHERE stud_ID=3;

SELECT *FROM student_B;

SELECT *FROM student_B;



