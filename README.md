<p align="center">
  <img src="assets/banner/sql-server-banner.png" alt="SQL Server Administration Lab Banner">
</p>

# SQL Server Administration Lab

<p align="center">

![Windows Server](https://img.shields.io/badge/Windows_Server-2022-0078D4?style=for-the-badge&logo=windows&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL_Server-2022-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![SSMS](https://img.shields.io/badge/SSMS-Management_Studio-0078D4?style=for-the-badge)
![T-SQL](https://img.shields.io/badge/T--SQL-T_SQL-336791?style=for-the-badge)
![VirtualBox](https://img.shields.io/badge/Oracle_VirtualBox-Lab-183A61?style=for-the-badge&logo=virtualbox&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?style=for-the-badge&logo=github)

</p>

---

## Project Overview

This project demonstrates the deployment and administration of Microsoft SQL Server 2022 in a Windows Server 2022 virtual environment. A relational database named **TechSolutions** was created to simulate an enterprise IT environment used to manage employees, departments, and internal help desk support tickets.

The lab includes database design, SQL development, security configuration, reporting, and backup procedures while documenting each stage of the implementation.

---

# Architecture

<p align="center">
<img src="assets/architecture/database-schema.png" width="900">
</p>

---

# Environment

| Component | Technology |
|-----------|------------|
| Operating System | Windows Server 2022 |
| Database Engine | Microsoft SQL Server 2022 |
| Management Tool | SQL Server Management Studio |
| Language | T-SQL |
| Virtualization | Oracle VirtualBox |
| Version Control | Git & GitHub |

---

# Technologies

- Windows Server 2022
- Microsoft SQL Server 2022
- SQL Server Management Studio (SSMS)
- T-SQL
- Oracle VirtualBox
- Git
- GitHub

---

# Project Objectives

- Install Microsoft SQL Server 2022
- Configure SQL Server Management Studio
- Create the TechSolutions database
- Design relational database tables
- Configure primary and foreign keys
- Insert sample data
- Develop SQL queries
- Generate reports
- Configure SQL Server security
- Create SQL logins and database users
- Perform database backup and restore

---

# Database Tables

## Employees

- EmployeeID
- FirstName
- LastName
- Department
- JobTitle
- Email
- HireDate
- Active

## Departments

- DepartmentID
- DepartmentName
- Manager

## SupportTickets

- TicketID
- EmployeeID
- IssueTitle
- Priority
- Status
- AssignedTech
- DateOpened

---

# SQL Scripts

| Script | Description |
|---------|-------------|
| 01_Create_Database.sql | Create database |
| 02_Create_Tables.sql | Create tables |
| 03_Insert_Data.sql | Populate sample data |
| 04_Basic_Queries.sql | Basic SQL queries |
| 05_Joins.sql | JOIN queries |
| 06_Security.sql | SQL logins and permissions |
| 07_Backup.sql | Database backup |
| 08_Restore_Database.sql | Database restore |

---

# Project Walkthrough

## SQL Server Installation

<img src="assets/screenshots/01-SQL-Server-Installed.png" width="900">

---

## SQL Server Management Studio

<img src="assets/screenshots/02-SSMS-Installed.png" width="900">

---

## SQL Server Connection

<img src="assets/screenshots/03-Connected-to-SQL.png" width="900">

---

## Database Creation

<img src="assets/screenshots/04-TechSolutions-Database.png" width="900">

---

## Employees Table

<img src="assets/screenshots/05-Employees-Table.png" width="900">

---

## Employee Data

<img src="assets/screenshots/06-Employee-Data.png" width="900">

---

## Select All Employees

<img src="assets/screenshots/07-Select-All-Employees.png" width="900">

---

## IT Employees

<img src="assets/screenshots/08-IT-Employees.png" width="900">

---

## Sorted Employees

<img src="assets/screenshots/09-Sorted-Employees.png" width="900">

---

## Employee Count

<img src="assets/screenshots/10-Employee-Count.png" width="900">

---

## Active Employees

<img src="assets/screenshots/11-Active-Employees.png" width="900">

---

## Departments Table

<img src="assets/screenshots/12-Departments-Table.png" width="900">

---

## Department Data

<img src="assets/screenshots/13-Department-Data.png" width="900">

---

## Department Results

<img src="assets/screenshots/14-Departments-Results.png" width="900">

---

## Employee Department JOIN

<img src="assets/screenshots/15-Employee-Department-Join.png" width="900">

---

## Support Tickets

<img src="assets/screenshots/16-Support-Tickets.png" width="900">

---

## Tickets With Employees

<img src="assets/screenshots/17-Tickets-With-Employees.png" width="900">

---

## Open Tickets

<img src="assets/screenshots/18-Open-Tickets.png" width="900">

---

## High Priority Tickets

<img src="assets/screenshots/19-High-Priority-Tickets.png" width="900">

---

## Tickets by Status

<img src="assets/screenshots/20-Tickets-By-Status.png" width="900">

---

## Tickets by Department

<img src="assets/screenshots/21-Tickets-By-Department.png" width="900">

---

## Full Help Desk Report

<img src="assets/screenshots/22-Full-Help-Desk-Report.png" width="900">

---

## SQL User Created

<img src="assets/screenshots/23-SQL-User-Created.png" width="900">

---

## Delete Permission Denied

<img src="assets/screenshots/24-Delete-Permission-Denied.png" width="900">

---

## Foreign Key Relationship

<img src="assets/screenshots/25-Foreign-Key-Relationship.png" width="900">

---

## Database Backup Success

<img src="assets/screenshots/26-Database-Backup-Success.png" width="900">

---

## Backup File

<img src="assets/screenshots/27-TechSolutions-Backup-File.png" width="900">

---

# Repository Structure

```text
SQL-Server-Administration-Lab
│
├── README.md
├── LICENSE
│
├── assets
│   ├── architecture
│   ├── banner
│   ├── diagrams
│   ├── icons
│   └── screenshots
│
├── documentation
│
└── SQL
    ├── backups
    ├── sample-data
    └── scripts
        ├── 01_Create_Database.sql
        ├── 02_Create_Tables.sql
        ├── 03_Insert_Data.sql
        ├── 04_Basic_Queries.sql
        ├── 05_Joins.sql
        ├── 06_Security.sql
        ├── 07_Backup.sql
        └── 08_Restore_Database.sql
```

---

# Skills Demonstrated

- SQL Server Administration
- Microsoft SQL Server 2022
- SQL Server Management Studio
- T-SQL
- Relational Database Design
- Primary Keys
- Foreign Keys
- INNER JOIN Operations
- SQL Reporting
- Database Security
- SQL Authentication
- Backup and Recovery
- Windows Server Administration
- Technical Documentation

---

# Learning Outcomes

This lab provided practical experience installing, configuring, and administering Microsoft SQL Server 2022 while demonstrating relational database design, SQL development, security configuration, reporting, and backup procedures in a Windows Server environment.

---

# Author

**Joseph McKelvey**

GitHub Portfolio Project • 2026
