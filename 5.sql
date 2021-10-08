#5)
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE employee(
	EmpID varchar(5),
	EName varchar(20),
	Salary varchar(10),
	Department varchar(10),
	Age INT(3)
);

DESC employee;

INSERT INTO employee (EmpID,EName,Salary,Department,Age)
	VALUES ("EP001","Vikram Hassan","200000","HR",25),
    	("EP002","Reema Wheatley","250000","IT",28),
    	("EP003","Aurora Blanchard","100000","PLANNING",30),
    	("EP004","Iris Forster","150000","PURCHASE",20),
    	("EP005","Hayleigh Floyd","180000","PURCHASE",23),
   	("EP006","Muhammed Arshad","500000","PLANNING",20),
    	("EP007","Muhammed Ali","500000","SALES",20),
    	("EP008","Midlaj C","100000","MANAGEMENT",19),
    	("EP009","Minha","500000","OPERATION",20),
    	("EP010","Mubashir Ali","500000","PURCHASE",20);

SELECT * FROM employee;

#a)
SELECT COUNT(*) AS NumOfEmp FROM employee;

#b)
SELECT EName,Department,Age FROM employee WHERE (Department,Age) IN (SELECT Department,MAX(Age) FROM employee GROUP BY Department);

#C)
SELECT AVG(Age),Department FROM employee GROUP BY Department;

#d)
SELECT Department,AVG(Salary) FROM employee GROUP BY Department;

#e)
SELECT MIN(Salary) FROM employee;

#f)
SELECT COUNT(*) AS NumOfEmp,Department FROM employee WHERE Department="PURCHASE";

#g)
SELECT MAX(Salary),Department FROM employee WHERE Department="SALES";

#h)
SELECT MAX(Salary)-MIN(Salary) FROM employee;
