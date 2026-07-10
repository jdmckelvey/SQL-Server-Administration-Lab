/*
=========================================================
Project: SQL Server Administration Lab
Script: 05_Joins.sql
Author: Joseph McKelvey

Description:
Demonstrates INNER JOINs and multi-table reporting
using the Employees, Departments, and SupportTickets
tables.
=========================================================
*/

USE TechSolutions;
GO

---------------------------------------------------------
-- Employees and Their Department Managers
---------------------------------------------------------
SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.Department,
    d.Manager
FROM Employees e
INNER JOIN Departments d
    ON e.Department = d.DepartmentName;
GO

---------------------------------------------------------
-- Support Tickets with Employee Information
---------------------------------------------------------
SELECT
    t.TicketID,
    e.FirstName,
    e.LastName,
    t.IssueTitle,
    t.Priority,
    t.Status,
    t.AssignedTech,
    t.DateOpened
FROM SupportTickets t
INNER JOIN Employees e
    ON t.EmployeeID = e.EmployeeID;
GO

---------------------------------------------------------
-- Count Tickets by Department
---------------------------------------------------------
SELECT
    d.DepartmentName,
    COUNT(t.TicketID) AS TicketCount
FROM Departments d
INNER JOIN Employees e
    ON d.DepartmentName = e.Department
LEFT JOIN SupportTickets t
    ON e.EmployeeID = t.EmployeeID
GROUP BY d.DepartmentName
ORDER BY TicketCount DESC;
GO

---------------------------------------------------------
-- Full Help Desk Report
---------------------------------------------------------
SELECT
    t.TicketID,
    e.FirstName + ' ' + e.LastName AS EmployeeName,
    d.DepartmentName,
    t.IssueTitle,
    t.Priority,
    t.Status,
    t.AssignedTech,
    t.DateOpened
FROM SupportTickets t
INNER JOIN Employees e
    ON t.EmployeeID = e.EmployeeID
INNER JOIN Departments d
    ON e.Department = d.DepartmentName
ORDER BY
    CASE t.Priority
        WHEN 'High' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Low' THEN 3
        ELSE 4
    END,
    t.DateOpened;
GO

PRINT 'JOIN queries completed successfully.';
GO