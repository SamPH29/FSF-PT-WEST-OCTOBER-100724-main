-- Drops the inventory_db if it exists currently --
DROP DATABASE IF EXISTS inventory_db;

-- Creates the inventory_db database --
CREATE DATABASE inventory_db;

-- Connect to the inventory_db database --
\c inventory_db

-- Create a sample table --
CREATE TABLE produce (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Insert multiple produce items --
INSERT INTO produce (id, name)
VALUES
    ( 1, 'apple'),
    ( 2, 'orange'),
    ( 3, 'banana');
