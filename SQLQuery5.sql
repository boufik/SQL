USE [AdventureWorks2012]
 
-- *********** TABLES ***********
 
-- Table 1 - Employee
CREATE TABLE MyEmployee(EmployeeID INT, FirstName VARCHAR(30), LastName VARCHAR(30))
SELECT * FROM MyEmployee
 
INSERT INTO MyEmployee
VALUES(1, 'Michael', 'Scott')
INSERT INTO MyEmployee
VALUES(2, 'Pam', 'Beesly')
INSERT INTO MyEmployee
VALUES(3, 'Dwight', 'Schrute')
SELECT * FROM MyEmployee
 
-- Table 2 - Salary
CREATE TABLE MySalary(EmployeeID INT, Salary FLOAT)
SELECT * FROM MySalary
 
INSERT INTO MySalary
VALUES(1, 10000)
INSERT INTO MySalary
VALUES(2, 8000)
INSERT INTO MySalary
VALUES(3, 6000)
SELECT * FROM MySalary
 
SELECT * FROM MyEmployee
SELECT * FROM MySalary
 
-- Table 3 - Phone
CREATE TABLE MyPhone(EmploeeID INT, PhoneNumber VARCHAR(30))
INSERT INTO MyPhone
VALUES(1, '2410-111-000')
INSERT INTO MyPhone
VALUES(2, '2310-555-222')
SELECT * FROM MyPhone
 
-- Table 4 - Parking
CREATE TABLE MyParking(EmployeeID INT, ParkingSpot VARCHAR(30))
INSERT INTO MyParking
VALUES(1, 'A1')
INSERT INTO MyParking
VALUES(2, 'A2')
SELECT * FROM MyParking
 
-- Table 5 - Customer
CREATE TABLE MyCustomer(CustomerID INT, CustomerName VARCHAR(30))
INSERT INTO MyCustomer
VALUES(1, 'Rakesh')
INSERT INTO MyCustomer
VALUES(3, 'Jonh')
SELECT * FROM MyCustomer
 
-- Table 6 - Order
CREATE TABLE MyOrder(OrderNumber INT, OrderName VARCHAR(30), CustomerID INT)
INSERT INTO MyOrder
VALUES(1, 'Order1', 1)
INSERT INTO MyOrder
VALUES(2, 'Order2', 2)
INSERT INTO MyOrder
VALUES(3, 'Order3', 7)
INSERT INTO MyOrder
VALUES(4, 'Order4', 8)
SELECT * FROM MyOrder
 
 
 
-- *********** JOINS ***********
-- 1. Inner Join
SELECT * FROM MyEmployee A
INNER JOIN MySalary B
ON A.EmployeeID = B.EmployeeID
 
SELECT A.FirstName, A.LastName, B.Salary FROM MyEmployee A
INNER JOIN MySalary B
ON A.EmployeeID = B.EmployeeID
 
-- 2. Left outer Join
SELECT * FROM MyEmployee
SELECT * FROM MyPhone
 
SELECT * FROM MyEmployee A
LEFT JOIN MyPhone B
ON A.EmployeeID = B.EmploeeID
 
SELECT A.FirstName, A.LastName, B.PhoneNumber FROM MyEmployee A
LEFT JOIN MyPhone B
ON A.EmployeeID = B.EmploeeID
 
-- 3. Right outer Join
SELECT * FROM MyParking
SELECT * FROM MyEmployee
 
SELECT * FROM MyParking A
RIGHT JOIN MyEmployee B
ON A.EmployeeID = B.EmployeeID
 
SELECT A.ParkingSpot, B.FirstName, B.LastName FROM MyParking A
RIGHT JOIN MyEmployee B
ON A.EmployeeID = B.EmployeeID
 
-- 4. Full outer join
SELECT * FROM MyCustomer
SELECT * FROM MyOrder
 
SELECT * FROM MyCustomer A
FULL OUTER JOIN MyOrder B
ON A.CustomerID = B.CustomerID
 
SELECT A.CustomerID, A.CustomerName, B.OrderName, B.OrderNumber FROM MyCustomer A
FULL OUTER JOIN MyOrder B
ON A.CustomerID = B.CustomerID
 
 
-- 5. Cross join (like cross product)
SELECT * FROM MyCustomer
SELECT * FROM MySalary
 
SELECT * FROM MyCustomer A
CROSS JOIN MySalary B
 
SELECT * FROM MyCustomer, MySalary