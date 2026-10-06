
/*

=========================================================
Create Database and Schemas
=========================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
	within the database: 'bronze','silver','gold'.

	Warning:
	Running this scrip will drop the entire databse if it exists.
	All data in the database will be permanently deleted. Proceed with caution and ensure you have a proper
	backups before running this script

*/

USE master;


-- Drop and create the 'DatawareHouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse');
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
CREATE DATABASE datawarehouse;

USE datawarehouse;


CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;






