/*
=========================================================
Project: SQL Server Administration Lab
Script: 01_Create_Database.sql
Author: Joseph McKelvey
Description:
Creates the TechSolutions sample database used
throughout this SQL Server Administration Lab.
=========================================================
*/

-- Check if the database already exists
IF DB_ID('TechSolutions') IS NULL
BEGIN
    CREATE DATABASE TechSolutions;
    PRINT 'TechSolutions database created successfully.';
END
ELSE
BEGIN
    PRINT 'TechSolutions database already exists.';
END
GO

-- Switch to the new database
USE TechSolutions;
GO

PRINT 'Connected to TechSolutions database.';
GO