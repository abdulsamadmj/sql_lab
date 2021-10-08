#5)
DROP DATABASE IF EXISTS product;

CREATE DATABASE product;

USE product;

CREATE TABLE product(
	Product_Code varchar(5) PRIMARY KEY,
	Product_Name varchar(20),
	Category varchar(15),
	Quantity int(5),
	Price int(10)
);

DESC product;

INSERT INTO product(Product_Code,Product_Name,Category,Quantity,Price)
	VALUES("P01","santhoor","bath soap",10,45),
	("P02","ujala","washing powder",150,65),
	("P03","colgate","paste","600",25),
	("P04","sunlight","washing powder",200,165),
	("P05","closeup","paste",90,57),
	("P06","harpic","floor cleaner",50,45),
	("P07","nivia","face wash",700,120),
	("P08","pril","dishwash",150,40);

SELECT * FROM product;

#a)
SELECT * FROM product ORDER BY Product_Name DESC;

#b)
SELECT Product_Code,Product_Name FROM product WHERE Price BETWEEN 20 AND 50;

#c)
SELECT * FROM product WHERE Category IN ('bath soap','paste','washing powder');

#d)
SELECT * FROM product WHERE Quantity<100 OR Quantity>500;

#e)
SELECT * FROM product WHERE Product_Name LIKE "s%";

#f)
SELECT * FROM product WHERE Category!='paste';

#g)
SELECT * FROM product WHERE Product_Name LIKE "_u%" AND Category='washing powder';
