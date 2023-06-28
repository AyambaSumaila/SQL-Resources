
create	table emp_loyees (Emp_Id int primary key, Emp_name  varchar(25),
Age int, Gender char(1), Doj date, Dept varchar(20), City varchar(15), Salary float);
describe emp_loyees;


insert into emp_loyees values
(101, "Jimmy", 35, "M", "2005-05-30", "Sales", "Chicago", 70000),
(102, "Shane", 30, "M", "1999-06-25", "Marketing", "Seattle", 55000),
(103, "Marry", 28, "F", "2009-03-10", "Product", "Boston", 62000),
(104, "Dwayne", 37, "M", "2011-07-12", "Tech", "Austin", 57000),
(105, "Sara", 32, "F", "2017-10-27", "Sales", "New York", 72000),
(106, "Ammy", 35, "F", "2014-12-20", "IT", "Seattle", 80000),
(107, "Jack", 40, "M", "2012-07-14", "Finance","Houston", 10000),
(108, "Angela", 36, "F", "2007-02-04", "Tech", "Seattle", 80000),
(109, "Marcus", 25, "M", "2010-07-18", "HR", "Boston", 90000),
(110, "David", 34, "M", "2009-08-25", "Product", "Miami", 75000),
(111, "Rose", 28, "F", "2011-02-27", "Tech", "Chicago", 60000),
(112, "Sophia", 33, "F", "2013-09-21", "HR", "Huston", 65000),
(113, "Amelia", 30, "F", "2018-10-15", "Finance", "Austin", 550000),
(114, "Robert", 40, "M", "2015-12-18", "Sales", "Detroit", 95000),
(115, "William", 36, "M", "2016-04-20", "IT", "Chicago", 83000),
(116, "John", 32, "M", "2004-08-09", "Marketing", "Miami", 67000),
(117, "Bella", 29, "F", "2002-06-11", "Tech", "Detroit", 72000),
(118, "Maya", 25, "F", "2018-10-15", "IT", "Huston", 48000),
(119, "Alice", 37, "F", "2019-05-28", "Product", "Seattle", 76000),
(120, "Joseph", 45, "M", "2016-11-23", "Sales", "Chicago", 11500);

select *from emp_loyees;
select distinct dept from emp_loyees ;
select avg(Age) from emp_loyees;

#Aveg in each department
select dept, round(avg(Age), 1) as average_age from emp_loyees group by dept;

select dept, sum(Salary) as total_salary from emp_loyees group by dept;

select count(Emp_Id), City from emp_loyess
group by City
order by count(Emp_Id) desc;
#Find the number of employees who join the company each year
select year(doj) as year, count(Emp_Id)
from emp_loyees
group by year(doj);

create table sales (product_id int, sell_price float, quantity int, state varchar(25));

insert into sales values
(121, 320.0, 3, "California"),
(121, 320.0, 6, "Texas"),
(121, 320.0, 4, "Alaska"),
(123, 290.0, 2, "Texas"),
(123, 290.0, 7, "California"),
(123, 290.0, 4, "Washington"),
(121, 320.0, 7, "Ohio"),
(121, 320.0, 2, "Arizola"),
(121, 290.0, 8, "Colorado");
select *from sales;
select product_id, sum(sell_price * quantity) as revenue
from sales group by product_id;

create table cos_prod(product_id int, cost_price float);
insert into cos_product
values(121, 270.0),
(123, 250.0);

select c.product_id, sum(s.sell_price - c.cost_price) * s.quantity as profit
from sales as s inner join c_product as c
where s.product_id=c.product_id
group by c.product_id;

 select	*from emp_loyees;
 select dept, avg(Salary) as avg_salary
 from emp_loyees
 group by dept
 having avg(Salary) > 75000;
 #Find the city where total_salary > 200000
 
 select City, sum(Salary) as total
 from emp_loyees
 group by City
 having sum(Salary) > 200000;
 
 #Find department employees>2
 select dept, count(*) as emp_count
 from emp_loyees
 group by dept
 having count(*) > 2;
 
 select City, count(*) as emp_count
 from emp_loyees
 where City !="Houston"
 group by city
 having count(*) >2;
 
 select dept, count(*) as emp_count
 from emp_loyees
 group by dept
 having avg(Salary) > 75000