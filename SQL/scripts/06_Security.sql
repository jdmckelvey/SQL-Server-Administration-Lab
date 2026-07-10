/*
=========================================================
Project: SQL Server Administration Lab
Script: 06_Security.sql
Author: Joseph McKelvey

Description:
Creates a SQL Server login and database user, then assigns
read-only access to the TechSolutions database.
=========================================================
*/

---------------------------------------------------------
-- Create SQL Server Login
---------------------------------------------------------
USE master;
GO

IF NOT EXISTS
(
    SELECT 1
    FROM sys.server_principals
    WHERE name = 'HelpDeskUser'
)
BEGIN
    CREATE LOGIN HelpDeskUser
    WITH PASSWORD = 'HelpDesk123!';
    
    PRINT 'HelpDeskUser login created successfully.';
END
ELSE
BEGIN
    PRINT 'HelpDeskUser login already exists.';
END
GO

---------------------------------------------------------
-- Create Database User
---------------------------------------------------------
USE TechSolutions;
GO

IF NOT EXISTS
(
    SELECT 1
    FROM sys.database_principals
    WHERE name = 'HelpDeskUser'
)
BEGIN
    CREATE USER HelpDeskUser
    FOR LOGIN HelpDeskUser;

    PRINT 'HelpDeskUser database user created successfully.';
END
ELSE
BEGIN
    PRINT 'HelpDeskUser database user already exists.';
END
GO

---------------------------------------------------------
-- Assign Read-Only Permissions
---------------------------------------------------------
IF IS_ROLEMEMBER('db_datareader', 'HelpDeskUser') <> 1
BEGIN
    ALTER ROLE db_datareader
    ADD MEMBER HelpDeskUser;

    PRINT 'HelpDeskUser added to db_datareader.';
END
ELSE
BEGIN
    PRINT 'HelpDeskUser is already a member of db_datareader.';
END
GO

---------------------------------------------------------
-- Verify User and Role Membership
---------------------------------------------------------
SELECT
    dp.name AS DatabaseUser,
    rp.name AS DatabaseRole
FROM sys.database_role_members drm
INNER JOIN sys.database_principals rp
    ON drm.role_principal_id = rp.principal_id
INNER JOIN sys.database_principals dp
    ON drm.member_principal_id = dp.principal_id
WHERE dp.name = 'HelpDeskUser';
GO

/*
Permission testing should be completed by signing in as
HelpDeskUser and running:

SELECT * FROM Employees;

A write operation such as INSERT, UPDATE, or DELETE should
be denied because the user only belongs to db_datareader.
*/