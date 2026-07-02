/*
===========================================
Create Database and Schemas
===========================================
Scripts Purpose
    This script create a new database named 'Datawarehouse' after checking if it already exists.
	If the database exists,it is dropped and recreated. Additionally, the scripts sets up three schemaa
	within the database: 'bronze', 'silver', and 'gold'.


WARNING:
    Runing this scipts will drop the entire 'Datahouse' database if it exists.
	All data inthe database will be permanently deleted. proceed with caution
	and ensure you have proper backups before running this scripts.
	*/

USE master;
GO

--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases  WHERE name = 'Datawarehouse')
BEGIN 
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDATE;
	  DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datatwarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
