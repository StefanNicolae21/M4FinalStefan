DROP DATABASE greetingdb;

CREATE DATABASE greetingdb;
USE greetingdb;

CREATE TABLE Greeting(
GreetingID INT PRIMARY KEY,
`Description` VARCHAR(255),
Price DOUBLE,
TypeID INT,
CategoryID INT
);

CREATE TABLE `Type`(
TypeID INT PRIMARY KEY,
TypeName VARCHAR(255)
);

CREATE TABLE Category(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(255)
);

INSERT INTO `Type` (TypeID, TypeName) VALUES(1, 'Fizica');
INSERT INTO `Type` (TypeID, TypeName) VALUES(2, 'Electronica');

INSERT INTO Category(CategoryID, CategoryName) VALUES(1, 'Aniversare');
INSERT INTO Category(CategoryID, CategoryName) VALUES(2, 'Craciun');
INSERT INTO Category(CategoryID, CategoryName) VALUES(3, 'Paste');
INSERT INTO Category(CategoryID, CategoryName) VALUES(4, 'Ziua mamei');
INSERT INTO Category(CategoryID, CategoryName) VALUES(5, 'Absolvire');


INSERT INTO Greeting(GreetingID, `Description`, Price, TypeID, CategoryID) VALUES(1,'La multi ani, Stefan !!',2.99,1,1);
INSERT INTO Greeting(GreetingID, `Description`, Price, TypeID, CategoryID) VALUES(2,'Craciun Fericit !!',3.50,2,2);
INSERT INTO Greeting(GreetingID, `Description`, Price, TypeID, CategoryID) VALUES(3,'Paste Fericit !!',4.10,1,3);
INSERT INTO Greeting(GreetingID, `Description`, Price, TypeID, CategoryID) VALUES(4,'La multi ani, mama!!',5.99,2,4);
INSERT INTO Greeting(GreetingID, `Description`, Price, TypeID, CategoryID) VALUES(5,'Felicitari !!',2.50,2,5);
INSERT INTO Greeting(GreetingID, `Description`, Price, TypeID, CategoryID) VALUES(6,'La multi ani, Mihai !!',2.90,1,1);


SELECT * FROM Greeting;

SET GLOBAL time_zone = '+3:00';

SELECT * FROM Category;



SELECT * FROM `Type`;

