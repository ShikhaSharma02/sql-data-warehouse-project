/*
==========================================================
Create Database and Schemas
==========================================================
Scripts Purpose:
     This script creates a new database named 'DataWarehouse' after checking if it already exits.
     If the database exits, it is dropped and recreated. Additionally, the script sets up three schemas within
     the database: 'bronze', 'silver' and 'gold'.

WARNING:
     Running this scripts will drop the entire 'DataWarehouse' database if it exists.
     All data in the database will ne premanetnly deleted. Proceed with caution
     and ensure you have proper backups before running this script.
*/
  
USE master;
GO

--Drop and recreate the 'DataWarehouse' datahouse
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
  BEGIN
        ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATAWarehouse;
END;
GO


-- Create the 'DataWarehouse' database 
CREATE DATABASE dataWarehouse;


USE DataWarehouse;

CREATE SCHEMA Bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
