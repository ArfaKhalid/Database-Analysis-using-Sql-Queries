-- Schema for Student Database Mangement in SQL
-- Create database
CREATE DATABASE studentdb;
-- Connect to the database
\c studentdb;
-- Create the table to store student information
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  major VARCHAR(100)
);
-- Insert data into the table
INSERT INTO students (name, age, major) VALUES
  ('John Doe', 20, 'Computer Science'),
  ('Jane Smith', 22, 'Mathematics'),
  ('Mark Johnson', 21, 'Physics');
-- Retrieve all records from the table
SELECT * FROM students;
-- Retrieve specific columns from the table
SELECT name, major FROM students;
-- Filter records using a WHERE clause
SELECT * FROM students WHERE age > 20;
-- Update a record
UPDATE students SET major = 'Engineering' WHERE id = 1;
-- Delete a record
DELETE FROM students WHERE id = 3;
-- Perform aggregation and grouping
SELECT major, COUNT(*) AS count FROM students GROUP BY major;
-- Create the table with primary key constraint
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  major VARCHAR(100)
);
-- Create another table for courses
CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);
-- Add a foreign key constraint to the students table
ALTER TABLE students
ADD COLUMN course_id INTEGER,
ADD FOREIGN KEY (course_id) REFERENCES courses(id);
-- Insert data into the courses table
INSERT INTO courses (name) VALUES
  ('Computer Science'),
  ('Mathematics'),
  ('Physics');
-- Insert data into the students table with the corresponding course_id
INSERT INTO students (name, age, major, course_id) VALUES
  ('John Doe', 20, 'Computer Science', 1),
  ('Jane Smith', 22, 'Mathematics', 2),
  ('Mark Johnson', 21, 'Physics', 3);

