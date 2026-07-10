/*
=========================================================
Project: SQL Server Administration Lab
Script: 02_Create_Tables.sql
Author: Joseph McKelvey

Description:
Creates the Employees, Departments, and SupportTickets
tables for the TechSolutions database.
=========================================================
*/

USE TechSolutions;
GO

---------------------------------------------------------
-- Employees Table
---------------------------------------------------------
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Email VARCHAR(100),
    HireDate DATE,
    Active BIT
);
GO

---------------------------------------------------------
-- Departments Table
---------------------------------------------------------
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    Manager VARCHAR(100)
);
GO

---------------------------------------------------------
-- SupportTickets Table
---------------------------------------------------------
CREATE TABLE SupportTickets
(
    TicketID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    IssueTitle VARCHAR(100) NOT NULL,
    Priority VARCHAR(20),
    Status VARCHAR(20),
    AssignedTech VARCHAR(100),
    DateOpened DATE,

    CONSTRAINT FK_SupportTickets_Employees
        FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
);
GO

PRINT 'All tables created successfully.';
GO