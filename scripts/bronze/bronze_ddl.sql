/*
=====================================================================
This is a DDL script (Create Bronze Tables)
=====================================================================
This script creates tables in the 'bronze' schema, dropping existing tables if they are present

*/

IF OBJECT_ID ('bronze.appointments', 'u') IS NOT NULL
	DROP TABLE bronze.appointments;
GO

CREATE TABLE bronze.appointments(
	appointment_id VARCHAR(50),
	patient_id VARCHAR(50),
	doctor_id VARCHAR(50),
	dept_id VARCHAR(50),
	appointment_date VARCHAR(50),
	appointment_time VARCHAR(50),
	reason VARCHAR(100),
	followup_flag VARCHAR(50),
	appointment_status VARCHAR(50)
)
GO

IF OBJECT_ID ('bronze.billing','u') IS NOT NULL
	DROP TABLE bronze.billing
GO

CREATE TABLE bronze.billing(
	bill_id VARCHAR(50),
	patient_id VARCHAR(50),
	appointment_id VARCHAR(50),
	bill_date VARCHAR(50),
	total_amount VARCHAR(50),
	discount_amount VARCHAR(50),
	net_amount VARCHAR(50),
	payment_mode VARCHAR(50),
	bill_status VARCHAR(50)
)
GO

IF OBJECT_ID ('bronze.departments','u') IS NOT NULL
	DROP TABLE bronze.departments
GO

CREATE TABLE bronze.departments(
dept_id VARCHAR(50),
dept_name VARCHAR(50),
floor_number INT
)

IF OBJECT_ID (' bronze.doctors','u') IS NOT NULL
	DROP TABLE  bronze.doctors
GO

CREATE TABLE bronze.doctors(
	doctor_id VARCHAR(50),
	doctor_name VARCHAR(50),
	specialization VARCHAR(50),
	dept_id VARCHAR(50),
	experience_years INT,
	joining_date VARCHAR(50),
	consultation_fee INT
)

IF OBJECT_ID (' bronze.feedback','u') IS NOT NULL
	DROP TABLE  bronze.feedback
GO

CREATE TABLE bronze.feedback(
	feedback_id VARCHAR(50),
	appointment_id VARCHAR(50),
	patient_id VARCHAR(50),
	doctor_id VARCHAR(50),
	rating INT,
	comments VARCHAR(100),
	feedback_date VARCHAR(50)
)

IF OBJECT_ID (' bronze.inventory','u') IS NOT NULL
	DROP TABLE  bronze.inventory
GO

CREATE TABLE bronze.inventory(
	item_id VARCHAR(50),
	item_name VARCHAR(50),
	category VARCHAR(50),
	unit_price VARCHAR(50),
	stock_qty INT,
	reorder_level INT,
	supplier_id VARCHAR(50),
	expiration_date DATE
)

IF OBJECT_ID ('bronze.patients','u') IS NOT NULL
	DROP TABLE bronze.patients
GO

CREATE TABLE bronze.patients(
	patient_id VARCHAR(50),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(50),
	date_of_birth VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50),
	city VARCHAR(50),
	registration_date VARCHAR(50)
)

IF OBJECT_ID ('bronze.purchases','u') IS NOT NULL
	DROP TABLE bronze.purchases
GO

CREATE TABLE bronze.purchases(
	purchase_id VARCHAR(50),
	item_id VARCHAR(50),
	supplier_id	VARCHAR(50),
	purchase_date VARCHAR(50),
	quantity INT,
	total_cost VARCHAR(50)
)

IF OBJECT_ID ('bronze.suppliers','u') IS NOT NULL
	DROP TABLE bronze.suppliers
GO

CREATE TABLE bronze.suppliers(
	supplier_id VARCHAR(50),
	supplier_name VARCHAR(50),
	contact_number VARCHAR(50),
	email VARCHAR(50),
	city VARCHAR(50),
	country VARCHAR(50)
)

IF OBJECT_ID ('bronze.transactions','u') IS NOT NULL
	DROP TABLE bronze.transactions
GO

CREATE TABLE bronze.transactions(
	transaction_id VARCHAR(50),
	bill_id VARCHAR(50),
	payment_method VARCHAR(50),
	amount_paid	VARCHAR(50),
	transaction_date VARCHAR(50),
	payment_status VARCHAR(50)
)
