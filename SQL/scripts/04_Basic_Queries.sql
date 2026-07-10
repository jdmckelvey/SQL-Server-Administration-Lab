/*
=========================================================
Project: SQL Server Administration Lab
Script: 04_Basic_Queries.sql
Author: Joseph McKelvey

Description:
Runs basic SELECT, filtering, sorting, and aggregate
queries against the Employees and SupportTickets tables.
=========================================================
*/

USE TechSolutions;
GO

---------------------------------------------------------
-- View All Employees
---------------------------------------------------------
SELECT *
FROM Employees;
GO

---------------------------------------------------------
-- View Employees in the IT Department
---------------------------------------------------------
SELECT *
FROM Employees
WHERE Department = 'IT';
GO

---------------------------------------------------------
-- Sort Employees by Last Name
---------------------------------------------------------
SELECT *
FROM Employees
ORDER BY LastName ASC;
GO

---------------------------------------------------------
-- Count Total Employees
---------------------------------------------------------
SELECT COUNT(*) AS TotalEmployees
FROM Employees;
GO

---------------------------------------------------------
-- View Active Employees
---------------------------------------------------------
SELECT *
FROM Employees
WHERE Active = 1;
GO

---------------------------------------------------------
-- View Open Support Tickets
---------------------------------------------------------
SELECT
    TicketID,
    IssueTitle,
    Priority,
    Status,
    AssignedTech,
    DateOpened
FROM SupportTickets
WHERE Status = 'Open';
GO

---------------------------------------------------------
-- View High-Priority Support Tickets
---------------------------------------------------------
SELECT
    TicketID,
    IssueTitle,
    Status,
    AssignedTech,
    DateOpened
FROM SupportTickets
WHERE Priority = 'High';
GO

---------------------------------------------------------
-- Count Tickets by Status
---------------------------------------------------------
SELECT
    Status,
    COUNT(*) AS TicketCount
FROM SupportTickets
GROUP BY Status
ORDER BY TicketCount DESC;
GO

PRINT 'Basic queries completed successfully.';
GO