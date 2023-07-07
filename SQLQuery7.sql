USE [AdventureWorks2012]
 
-- Aggregate Functions
SELECT * FROM MySalary
 
SELECT AVG(Salary) AS average FROM MySalary
SELECT COUNT(Salary) AS _counter_ FROM MySalary
SELECT COUNT(*) FROM MySalary
SELECT SUM(Salary) AS _sum_ FROM MySalary
SELECT MIN(Salary) FROM MySalary
SELECT MAX(Salary) FROM MySalary
 
-- ******** String Functions ********
-- Concatenate
SELECT * FROM MyOrder
 
PRINT CONCAT('String 1', ' - String 2')
PRINT RAND() + RAND()
 
SELECT OrderNumber, OrderName, CONCAT(OrderNumber, ' ----> ', OrderName)
AS Concatenated
FROM MyOrder
 
SELECT OrderNumber, OrderName, CONCAT(OrderNumber, ' ----> ', OrderNumber*RAND())
AS Concatenated
FROM MyOrder
 
-- Left Function
SELECT OrderNumber, OrderName, LEFT(OrderName, 5)
FROM MyOrder
 
SELECT OrderNumber, OrderName, RIGHT(OrderName, 2)
FROM MyOrder
 
-- Substring
SELECT OrderNumber, OrderName, SUBSTRING(OrderName, 2, 1), 
SUBSTRING(OrderName, 2, 2), SUBSTRING(OrderName, 2, 3), SUBSTRING(OrderName, 2, 10)
FROM MyOrder
 
-- Lowercase and uppercase
SELECT OrderNumber, OrderName, LOWER(OrderName), UPPER(OrderName)
FROM MyOrder
 
-- Length
SELECT OrderNumber, OrderName, LEN(OrderName)
AS _Length_
FROM MyOrder
 
SELECT OrderNumber, OrderName,
LOWER(LEFT(OrderName, 2)) AS Str1, 
UPPER(RIGHT(OrderName, LEN(OrderName)-2)) AS Str2
FROM MyOrder
 
-- Trim
SELECT '   Trim       '
SELECT LTRIM('   Trim       ')
SELECT RTRIM('   Trim       ')
SELECT LTRIM(RTRIM('   Trim       '))