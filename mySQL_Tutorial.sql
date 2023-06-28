SHOW databases;
use world;
show tables;
select *from city;
describe city;
create database sql_Intro;
show databases;
Create table emp_details(Name varchar(25), Age int, Sex char(1),
doj date, City varchar(15), Salary float);
describe emp_details;
insert into emp_details
values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);
select * from emp_details;
select distinct City from emp_details;
select count(Name) as count_Name from emp_details;
select sum(Salary) from emp_details;
select avg(Salary) from emp_details;

select Name, Age, City from emp_details;
select *from emp_details where Age > 30;

select Name, Sex, City from emp_details where Sex ="F";
select *from emp_details where
City in ("Chicago","Austin");  

select *from emp_details where
doj between "2000-01-01" and "2010-12-31";

select *from emp_details where
Age >30 and Sex="M";

select Sex, sum(Salary) as total_salary from emp_details
group by Sex;

select *from emp_details order by Salary desc;
select (10 + 20) as addition;
select (10 - 30) as subtraction;
select length('Ghana') total_len;
select repeat('@', 20);

select upper("ghana");

select lower("GHANA");
select curdate;

select day(curdate());
select now();

#String Function
select upper("welcome") as upper_case;

select ucase("ghana");

select stu_name, character_length(stu_name) as total_len
from students;

select concat("Ghana", " is", " in Africa");
select reverse("GHANA");
select reverse(Name) from emp_details;

select replace("Orange is a vegetable", "vegetable", "fruit");

select ltrim("      GHANA    ");
select length(ltrim("      GHANA      "));
select length(trim("      GHANA      "));

select position("fruit" in "Orange is a fruit") as name;

select ascii('a');
select ascii('4');






  