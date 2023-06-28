

CREATE TABLE employee_G(emp_ID INT PRIMARY KEY, emp_name VARCHAR(20),
street_name VARCHAR(20), city_namr VARCHAR(20));
 
 
 CREATE TABLE company_G(comp_name VARCHAR(20) PRIMARY KEY, city_NAME varchar(20));
 
 
 CREATE TABLE works(emp_ID VARCHAR(20)
 REFERENCES employee_G(emp_ID), comp_name VARCHAR(20)
 REFERENCES company_G(comp_name),

 CONSTRAINT works_pk PRIMARY KEY(emp_ID, comp_name));
 
 
 
 INSERT INTO works VALUES(102, "Michael");
 INSERT INTO works VALUES(104, "Baba");
 INSERT INTO works VALUES(103, "Dane");
 INSERT INTO works VALUES(106, "Wadud");
 INSERT INTO works VALUES(101, "Queen");
 INSERT INTO works VALUES(105, "Franck");
 
 SELECT *FROM works;
 SHOW DATABASES ;
 

 
 INSERT INTO employee_G VALUES(100, "Sumaila", "Agama", "Accra");
 
  INSERT INTO employee_G VALUES(101, "Queen", "Yoyo 123", "Sunyani");
   INSERT INTO employee_G VALUES(102, "Michael", "Agama", "Bolga");
    INSERT INTO employee_G VALUES(103, "Dane", "Agama", "Zebila");
     INSERT INTO employee_G VALUES(104, "Baba", "Yiyiwa 19", "Tamale");
      INSERT INTO employee_G VALUES(105, "Frank", "Saflo 22", "Kumasi");
       INSERT INTO employee_G VALUES(106, "Wadud", "West Hill 200", "Takorandi");
  USE employee_G;
  
  SELECT *FROM employee_G;
  
   CREATE TABLE company_G(comp_name VARCHAR(20) PRIMARY KEY, city_NAME varchar(20));
  INSERT INTO company_G VALUES("Amazon", "Nanko");
    INSERT INTO company_G VALUES("Google", "QueenPark");
      INSERT INTO company_G VALUES("Facebook", "Westwood");
        INSERT INTO company_G VALUES("Tweeter", "Dundee");
          INSERT INTO company_G VALUES("Netflix", "Leeds");
            INSERT INTO company_G VALUES("Instragram", "NewYork");
  
 SELECT *FROM company_G;
 
 SELECT  city_name
 FROM company_G
 LIMIT 3;
 
 UPDATE comp_name
 set city_NAME="Amazon"
 WHERE comp_name="You Tube";
 