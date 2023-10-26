# SQL Student Database
## Overview
The SQL Student Database project provides a script to insert data from two CSV files, courses.csv and students.csv, into a PostgreSQL database named "students." The script automates the process of populating the database with course and student information, including majors and student records.

## Project Structure
**courses.csv:** Contains course data, including the course name and the associated major.

**students.csv:** Contains student data, including first name, last name, major, and GPA.

**insert_data.sh:** The Bash script is responsible for inserting data from the CSV files into the PostgreSQL database.

## Database Schema
The script assumes a specific database schema for storing student data:

**1. students table:**
student_id (Primary Key)
first_name
last_name
major_id (Foreign Key referencing the majors table)
gpa

**2. majors table:**
major_id (Primary Key)
major

**3. courses table:**
course_id (Primary Key)
course

**4. majors_courses table:**
major_id (Foreign Key referencing the majors table)
course_id (Foreign Key referencing the courses table)
## Usage
To use the insert_data.sh script, follow these steps:
1. Make sure you have a PostgreSQL server running, and you have the necessary credentials to access it.
2. Open the insert_data.sh script in a text editor.
3. Update the PostgreSQL connection settings and database name in the script:
PSQL="psql -X --username=your_username --dbname=students --no-align --tuples-only -c"
Ensure that you replace your_username with your PostgreSQL username and students with the desired database name.
4. Execute the script in your terminal: The script will truncate the existing data in the students, majors, courses, and majors_courses tables and insert the data from the CSV files into the database.
   
