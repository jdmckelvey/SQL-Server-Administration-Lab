/*
=========================================================
Project: SQL Server Administration Lab
Script: 07_Backup.sql
Author: Joseph McKelvey

Description:
Creates a full backup of the TechSolutions database.
Update the backup path if your SQL Server installation
uses a different folder.
=========================================================
*/

USE master;
GO

---------------------------------------------------------
-- Create Full Database Backup
---------------------------------------------------------
BACKUP DATABASE TechSolutions
TO DISK =
'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\Backup\TechSolutions-Full.bak'
WITH
    INIT,
    FORMAT,
    NAME = 'TechSolutions Full Database Backup',
    DESCRIPTION = 'Full backup for the SQL Server Administration Lab',
    STATS = 10;
GO

PRINT 'TechSolutions backup completed successfully.';
GO

---------------------------------------------------------
-- Verify Backup Information
---------------------------------------------------------
RESTORE HEADERONLY
FROM DISK =
'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\Backup\TechSolutions-Full.bak';
GO