/*
=========================================================
Project: SQL Server Administration Lab
Script: 08_Restore_Database.sql
Author: Joseph McKelvey

Description:
Restores the TechSolutions database from a full backup.
This script restores the database as a new database
named TechSolutions_Restore to avoid overwriting the
original lab database.
=========================================================
*/

USE master;
GO

---------------------------------------------------------
-- Restore TechSolutions Database
---------------------------------------------------------
RESTORE DATABASE TechSolutions_Restore
FROM DISK =
'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\Backup\TechSolutions-Full.bak'
WITH
    MOVE 'TechSolutions' TO
    'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\TechSolutions_Restore.mdf',

    MOVE 'TechSolutions_log' TO
    'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\TechSolutions_Restore_log.ldf',

    REPLACE,
    RECOVERY,
    STATS = 10;
GO

PRINT 'TechSolutions_Restore restored successfully.';
GO

---------------------------------------------------------
-- Verify Restore
---------------------------------------------------------
SELECT
    name AS DatabaseName,
    state_desc AS Status
FROM sys.databases
WHERE name IN ('TechSolutions', 'TechSolutions_Restore');
GO