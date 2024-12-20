-- Drops the sample_db if it exists currently --
DROP DATABASE IF EXISTS sample_db;

-- Creates the sample_db database --
CREATE DATABASE sample_db;

-- Connect to the sample_db database --
\c sample_db

-- Create a sample table --
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Insert sample data into the users table --
INSERT INTO users (name, email) VALUES ('John Doe', 'john.doe@example.com');
INSERT INTO users (name, email) VALUES ('Jane Smith', 'jane.smith@example.com');
