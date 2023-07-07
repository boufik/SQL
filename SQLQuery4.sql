USE [AdventureWorks2012]
 
SELECT * FROM [Production].[Product]
SELECT Name, ListPrice FROM [Production].[Product]
 
-- Calculated columns
SELECT Name, ListPrice, ListPrice + 10
AS AdjustedListPrice
FROM [Production].[Product]
 
-- I want it to be stored in a different table
SELECT Name, ListPrice, ListPrice + 10
AS AdjustedListPrice
INTO [Production].[Product2]
FROM [Production].[Product]
 
SELECT * FROM [Production].[Product2]
 
-- Temporary table only for me, this table will vanish after I close the window
-- Even a new session-query file can not "see" it
SELECT Name, ListPrice, ListPrice + 10
AS AdjustedListPrice
INTO #TempTable
FROM [Production].[Product]
 
SELECT * FROM #TempTable
 
-- Delete data from table
DELETE FROM [Production].[Product2]
WHERE Name LIKE 'Bearing Ball'
 
SELECT * FROM [Production].[Product2]
 
-- Update statement
UPDATE [Production].[Product2]
SET Name = 'Blade_new'
WHERE Name LIKE 'BLADE'
 
SELECT * FROM [Production].[Product2]