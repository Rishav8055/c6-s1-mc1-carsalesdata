CREATE DATABASE CarSales;
USE CarSales;
CREATE TABLE SalesPerson(
sale_id INT PRIMARY KEY,
 firstName varchar(10),
 City varchar(20),
 Comission_rate varchar(20));
INSERT INTO SalesPerson VALUES(1001,'john','London','12');
INSERT INTO SalesPerson VALUES(1002,'BOB','San_josh','13');
INSERT INTO SalesPerson VALUES(1004,'judith','London','11');
INSERT INTO SalesPerson VALUES(1007,'Robin','Barcelona','15');
INSERT INTO SalesPerson VALUES(1003,'Harry','NewYork','10');
INSERT INTO SalesPerson VALUES(1005,'James','London','26');
INSERT INTO SalesPerson VALUES(1008,'Charlesh','Florida','0');
DESCRIBE salesperson;
SELECT * FROM SalesPerson;
-- TASK 1
CREATE TABLE Costumers(CostumerId INT PRIMARY KEY,FirstName varchar(20),LastName varchar(20),City varchar(20),Rating varchar(20),sale_id int not null, 
 FOREIGN KEY(sale_id) REFERENCES SalesPerson (sale_id));
INSERT INTO Costumers VALUES(2001,'HOFFMAN','ANNY','LONDON',100,1001);
INSERT INTO Costumers VALUES(2002,'GIOVANNI','JENNY','ROME',200,1003);
INSERT INTO Costumers VALUES(2003,'LIU','WILLIUM','SANJOSE',100,1002);
INSERT INTO Costumers VALUES(2004,'HARRY','GRASS','BERLIN',300,1002);
INSERT INTO Costumers VALUES(2005,'CLEMENS','JOHN','LONDON',200,1001);
INSERT INTO Costumers VALUES(2006,'FANNY','JOHN','SANJOSE',200,1005);
INSERT INTO Costumers VALUES(2008,'JONATHAN','BOB','ROME',300,1004);
SELECT * FROM Costumers;
-- TASK 2
CREATE TABLE Orders(OrderId INT PRIMARY KEY,Amount INT, OrderDate varchar(10), CostumerId int not null, 
FOREIGN KEY (CostumerId) REFERENCES Costumers (CostumerId));
INSERT INTO  Orders    VALUES(3001,123,'1-2-2020',2001);
INSERT INTO  Orders    VALUES(3003,187,'2-10-2020',2007);
INSERT INTO  Orders    VALUES(3002,100,'30-07-2000',2003);
INSERT INTO  Orders    VALUES(3005,201,'9-10-2011',2007);
INSERT INTO  Orders    VALUES(3009,145,'10-10-2012',2002);
INSERT INTO  Orders    VALUES(3007,167,'02-04-2021',2002);
INSERT INTO  Orders    VALUES(3008,189,'02-03-1999',2006);
INSERT INTO  Orders    VALUES(3010,100,'18-09-2000',2004);
SELECT* FROM Orders;
-- TASK 3
DELETE FROM SalesPerson WHERE  Comission_rate=0;
USE  CarSales; 
DELETE FROM Orders;
-- TASK 4
DELETE FROM Orders WHERE OrderId=3008;
UPDATE CarSales.Orders SET Amount = 200 WHERE Amount=100;
UPDATE CarSaleS.Costumers SET Rating= 150 WHERE Rating=100;
UPDATE  CarSales.SalesPerson SET   Comission_rate=  28 WHERE   Comission_rate= 26;
-- TASK 5
SELECT * FROM Costumers;
SELECT * FROM Orders;



