-- Drop the database if it exists to start fresh
DROP DATABASE IF EXISTS customers_db;

-- Create the database
CREATE DATABASE customers_db;

-- Connect to the newly created database
\c customers_db;

-- Create the `customers` table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL
);

-- Create the `orders` table (not `customer_id`, for clarity)
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    order_details TEXT,
    FOREIGN KEY (customer_id)
        REFERENCES customers(id)
        ON DELETE SET NULL
);

-- Insert data into `customers` table (corrected syntax)
INSERT INTO customers (first_name, last_name)
VALUES
('John', 'Doe'),
('Jane', 'Smith'),
('Alice', 'Johnson');
