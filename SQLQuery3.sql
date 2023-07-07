USE [AdventureWorks2012]
 
SELECT * FROM [HumanResources].[Department]
 
-- 1. QUERIES
 
-- 1a. Show me all the department names (2nd column)
SELECT Name FROM [HumanResources].[Department]
-- 1b. Show me all the department group names (3rd column)
SELECT GroupName FROM [HumanResources].[Department]
-- 1c. Give me the distinct values of  group names
SELECT DISTINCT GroupName FROM [HumanResources].[Department]
 
 
-- 2. FILTERS
 
-- 2a. Show me all the department names which are part of manufacturing
SELECT Name,GroupName FROM [HumanResources].[Department]
WHERE GroupName LIKE 'MANUFACTURING'
-- Change table (Employee not Department)
-- 2b. Give me a list level of employees of org. level = 2
SELECT  * FROM [HumanResources].[Employee]
WHERE [OrganizationLevel] = 2
-- 2c. Give me a list level of employees of org. level = 2 or 3
SELECT  * FROM [HumanResources].[Employee]
WHERE [OrganizationLevel] IN (2, 3)
-- 2d. Give me a list of employees who have a title as facilities manager (not case-sensitive)
SELECT  * FROM [HumanResources].[Employee]
WHERE [JobTitle] LIKE 'FaCIlities MANager'
-- 2e. Give me a list of employees who have the word 'Manager' in the job title as the last word of the title
-- '%' means searching before 'Manager'. If I had put it after 'Manager', it would search
-- also after 'Manager'
SELECT  * FROM [HumanResources].[Employee]
WHERE [JobTitle] LIKE '%Manager'
-- 2f. Give me a list of employees who have the word 'control' in the job title
SELECT  * FROM [HumanResources].[Employee]
WHERE [JobTitle] LIKE '%control%'
-- 2g. Give me all employees who were born after January 1 1980
SELECT  * FROM [HumanResources].[Employee]
WHERE [BirthDate] > '1/1/1980'
-- 2h. Give me all employees who were born between Jan 1, 1970 and Jan 1, 1980
SELECT  * FROM [HumanResources].[Employee]
WHERE [BirthDate] > '1/1/1970' AND [BirthDate] < '1/1/1980'
 
SELECT  * FROM [HumanResources].[Employee]
WHERE [BirthDate] BETWEEN '1/1/1970' AND '1/1/1980'