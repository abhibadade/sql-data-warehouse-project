
/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse'
    after checking whether it already exists.

    It also creates three schemas:
        1. bronze
        2. silver
        3. gold
*/

-- Step 1: Drop existing database (if required)
-- WARNING: This permanently deletes the database and its data.

DROP DATABASE IF EXISTS "DataWarehouse";

-- Step 2: Create Database

CREATE DATABASE "DataWarehouse";


/*
=============================================================
Create Schemas
=============================================================
*/
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;

-- Verify Created Schemas
SELECT schema_name
FROM information_schema.schemata
WHERE schema_name IN ('bronze', 'silver', 'gold')
ORDER BY schema_name;
