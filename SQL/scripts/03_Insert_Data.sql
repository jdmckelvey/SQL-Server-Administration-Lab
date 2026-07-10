/*
=========================================================
Project: SQL Server Administration Lab
Script: 03_Insert_Data.sql
Author: Joseph McKelvey

Description:
Inserts sample department, employee, and support ticket
records into the TechSolutions database.
=========================================================
*/

USE TechSolutions;
GO

---------------------------------------------------------
-- Insert Departments
---------------------------------------------------------
INSERT INTO Departments
    (DepartmentID, DepartmentName, Manager)
VALUES
    (1, 'IT', 'John Smith'),
    (2, 'HR', 'Sarah Johnson'),
    (3, 'Finance', 'David Lee'),
    (4, 'Marketing', 'Emily Brown'),
    (5, 'Support', 'Michael Garcia');
GO

---------------------------------------------------------
-- Insert Employees
---------------------------------------------------------
INSERT INTO Employees
    (EmployeeID, FirstName, LastName, Department, JobTitle, Email, HireDate, Active)
VALUES
    (1001, 'John', 'Smith', 'IT', 'Help Desk Technician',
     'john.smith@techsolutions.com', '2024-01-15', 1),

    (1002, 'Sarah', 'Johnson', 'HR', 'HR Specialist',
     'sarah.johnson@techsolutions.com', '2023-08-22', 1),

    (1003, 'David', 'Lee', 'Finance', 'Financial Analyst',
     'david.lee@techsolutions.com', '2022-11-03', 1),

    (1004, 'Emily', 'Brown', 'Marketing', 'Marketing Coordinator',
     'emily.brown@techsolutions.com', '2025-02-14', 1),

    (1005, 'Michael', 'Garcia', 'Support', 'Technical Support Specialist',
     'michael.garcia@techsolutions.com', '2024-06-30', 1);
GO

---------------------------------------------------------
-- Insert Support Tickets
---------------------------------------------------------
INSERT INTO SupportTickets
    (TicketID, EmployeeID, IssueTitle, Priority, Status, AssignedTech, DateOpened)
VALUES
    (10001, 1001, 'Cannot connect to VPN', 'High', 'Open',
     'Joseph McKelvey', '2026-07-10'),

    (10002, 1002, 'Password reset', 'Low', 'Closed',
     'Joseph McKelvey', '2026-07-09'),

    (10003, 1003, 'Printer offline', 'Medium', 'Open',
     'Joseph McKelvey', '2026-07-10'),

    (10004, 1004, 'Email not syncing', 'High', 'In Progress',
     'Joseph McKelvey', '2026-07-10'),

    (10005, 1005, 'Computer running slow', 'Medium', 'Open',
     'Joseph McKelvey', '2026-07-08');
GO

PRINT 'Sample data inserted successfully.';
GO