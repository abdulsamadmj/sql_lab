#3 QUE)
DROP DATABASE IF EXISTS hospital;

CREATE DATABASE hospital;

USE hospital;

CREATE TABLE hospital(
	doctorid VARCHAR(5) PRIMARY KEY,
	doctorname VARCHAR(20) NOT NULL,
	department VARCHAR(15),
	qualification VARCHAR(10),
	experience INT(2)
);

DESC hospital;

#a)
INSERT INTO hospital(doctorid,doctorname,department,qualification,experience)
	 VALUES("D001","Eden Sadler","Skin","MD",6),
    	("D002","Kristina Randolph","Heart","SD",7),
    	("D003","Arla Lugo","Stomach","MD",4),
    	("D004","Sheridan Aguilar","Skin","SD",8),
    	("D005","Elvis Person","Skin","SD",8);

#b)
SELECT * FROM hospital;

#c)
SELECT * FROM hospital WHERE qualification="MD";

#d)
SELECT * FROM hospital WHERE qualification!="MD" AND experience>5;

#e)
SELECT * FROM hospital WHERE department="Skin";

#f)
UPDATE hospital SET experience=5 WHERE doctorid="D003";

SELECT * FROM hospital WHERE doctorid="D003";

#g)
DELETE FROM hospital WHERE doctorid="D005";

SELECT * FROM hospital;
