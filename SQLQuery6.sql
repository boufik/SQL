Advertisement
SHARE
USE [AdventureWorks2012]
 
-- Now date
SELECT GETDATE()
-- 2 days before
SELECT GETDATE()-2
 
-- DATEPART
SELECT DATEPART(yyyy, GETDATE()) AS YearNumber
SELECT DATEPART(mm, GETDATE()) AS MonthNumber
SELECT DATEPART(dd, GETDATE()) AS DayNumber
 
-- DATEADD
SELECT DATEADD(DAY, 4, GETDATE())
SELECT DATEADD(MONTH, 4, GETDATE())
SELECT DATEADD(YEAR, 10, GETDATE())
SELECT DATEADD(YEAR, -10, '12/27/2040')
 
-- The 1st day of the month
SELECT DATEADD(dd, -DATEPART(DAY, GETDATE()-1), GETDATE())
 
-- Simple Date Queries
-- DATEDIFF
SELECT TOP 10 * FROM [Production].[WorkOrder]
SELECT TOP 10 WorkOrderID, ProductID, StartDate, EndDate, DATEDIFF(DAY, startDate, EndDate)
FROM [Production].[WorkOrder]
 
 
