/*
====================================================
CREATE DATABASE AND SCHEMAS
====================================================

This script creates a new database named 'HealthcareAnalytics' after checking if it already exists.
Also this script sets up three schemas within the database: bronze, silver, gold.

*/

USE master;
GO

--DROP and RECREATE the 'HealthcareAnalytics' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'HealthcareAnalytics')
BEGIN
	ALTER DATABASE HealthcareAnalytics SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE HealthcareAnalytics;
END;
GO

--CREATE 'DataWarehouse'

CREATE DATABASE HealthcareAnalytics;

GO

--CREATE SCHEMAS: bronze, silver, gold

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO


