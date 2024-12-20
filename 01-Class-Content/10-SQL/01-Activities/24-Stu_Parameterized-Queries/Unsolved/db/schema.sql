DROP DATABASE IF EXISTS books_db;
CREATE DATABASE books_db;

USE books_db;

CREATE TABLE favorite_books (
  id SERIAL PRIMARY KEY,
  book_name VARCHAR(30) NOT NULL
);
