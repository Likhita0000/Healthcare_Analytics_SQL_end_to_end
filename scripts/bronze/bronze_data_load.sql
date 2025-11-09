/*
=============================================
	Stored procedure: Load Bronze Layer
=============================================

This script procedure loads data into the bronze schema from external CSV files.
It does the following tasks:
	-Truncates the bronze tables before loading data.
	-Uses the 'bulk Insert' to load data from CSV files.

Usage example:
	EXEC bronze.load_bronze;
*/


CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN

    --declaring variables helps to understand when we started loading the table and when we ended.
	DECLARE @start_time DATETIME, @end_time DATETIME

    --if an error occurs in this TRY part then CATCH will be executed
    BEGIN TRY
        --PRINT statements helps to identify bottlenecks, optimize performance, monitor trends and detect issues
        PRINT '========================================';
        PRINT 'LOADING BRONZE LAYER';
        PRINT '========================================';
	
        PRINT'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';
        PRINT 'LOADING TABLES';
        PRINT'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~';

        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.appointments';
        TRUNCATE TABLE bronze.appointments;

        PRINT 'Inserting Table: bronze.appointments';
        BULK INSERT bronze.appointments
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\appointments.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.billing';
        TRUNCATE TABLE bronze.billing;

        PRINT 'Inserting Table: bronze.billing';
        BULK INSERT bronze.billing
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\billing.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.departments';
        TRUNCATE TABLE bronze.departments;

        PRINT 'Inserting Table: bronze.departments';
        BULK INSERT bronze.departments
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\departments.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.doctors';
        TRUNCATE TABLE bronze.doctors;

        PRINT 'Inserting Table: bronze.doctors';
        BULK INSERT bronze.doctors
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\doctors.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.feedback';
        TRUNCATE TABLE bronze.feedback;

        PRINT 'Inserting Table: bronze.feedback';
        BULK INSERT bronze.feedback
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\feedback.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.inventory';
        TRUNCATE TABLE bronze.inventory;

        PRINT 'Inserting Table: bronze.inventory';
        BULK INSERT bronze.inventory
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\inventory.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.patients';
        TRUNCATE TABLE bronze.patients;

        PRINT 'Inserting Table: bronze.patients';
        BULK INSERT bronze.patients
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\patients.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.purchases';
        TRUNCATE TABLE bronze.purchases;

        PRINT 'Inserting Table: bronze.purchases';
        BULK INSERT bronze.purchases
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\purchases.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.suppliers';
        TRUNCATE TABLE bronze.suppliers;

        PRINT 'Inserting Table: bronze.suppliers';
        BULK INSERT bronze.suppliers
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\suppliers.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
        PRINT'----------------------------------------';
        SET @start_time = GETDATE();
        PRINT 'Truncating Table: bronze.transactions';
        TRUNCATE TABLE bronze.transactions;

        PRINT 'Inserting Table: bronze.transactions';
        BULK INSERT bronze.transactions
        FROM 'C:\Users\kadiy\Downloads\Healthcare_Analytics_project\datasets\transactions.csv'
        WITH (
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '0x0a',
            FIRSTROW = 2,
            TABLOCK,
            CODEPAGE = '65001'
        );
        SET @end_time = GETDATE();
        PRINT '>> LOAD DURATION: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + 'seconds';
        --================================================================================================
    END TRY

    -- CATCH tells what to execute if TRY sql statements fail due to some error
    BEGIN CATCH
    PRINT '===============================================';
		PRINT 'ERROR OCCURED WHILE LOADING BRONZE LAYER';
        PRINT 'Error Message: ' + ERROR_MESSAGE();
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS NVARCHAR(10));
		PRINT '===============================================';
    END CATCH

END


EXEC bronze.load_bronze;
