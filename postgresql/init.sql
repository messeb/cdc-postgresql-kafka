-- Enable logical replication
ALTER SYSTEM SET wal_level = logical;

-- Create database
CREATE DATABASE shop;

-- Connect to database
\c shop;

-- Create table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

-- Insert data
INSERT INTO products (name, price) VALUES
    ('Product A', 10.99),
    ('Product B', 19.99),
    ('Product C', 5.99),
    ('Product D', 1.99),
    ('Product E', 7.99);
