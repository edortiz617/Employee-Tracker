/**
Must added to disconnect session to this database execempt this one.. 
Note: This script is ONLY for psql
**/

SELECT 'Database rebuild started...';
DROP DATABASE IF EXISTS temp;
CREATE DATABASE temp;

\c temp;

SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'employee_db'
  AND pid <> pg_backend_pid();

/****/


-- Create two new databases --
DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

-- Use employee_db --
\c employee_db;

-- See database in use --
SELECT current_database();

-- Create table for department --
CREATE TABLE department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)
);

-- Create table for role --
CREATE TABLE role (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(10, 2),
    department_id INT
);

-- Create table for employee --
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT
);

-- Add foreign key to role table --
ALTER TABLE role
ADD FOREIGN KEY (department_id)
