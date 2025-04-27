-- Skrypt tworzy bazę egradebook i tabele
CREATE DATABASE IF NOT EXISTS egradebook;
\c egradebook
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  role VARCHAR(20) NOT NULL
);
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  student_class VARCHAR(20)
);
