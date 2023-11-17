-- Project Title: Computer Science Students Database Advanced Queries for Descriptive Statistics in PostgreSQL

-- Details and Steps:
-- This project involves executing multiple SQL queries on a students database to retrieve specific information about computer science students. The script is written in Bash.

-- Displaying Students with a 4.0 GPA:
SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0
-- Finding Course Names before 'D' in Alphabetical Order:
SELECT course FROM courses WHERE course < 'D'
-- Retrieving Students with Specific GPA and Last Name:
SELECT first_name, last_name, gpa FROM students WHERE last_name >= 'R' AND (gpa > 3.8 OR gpa < 2.0)
-- Filtering Students based on Last Name Patterns:
SELECT last_name FROM students WHERE last_name ILIKE '%sa%' OR last_name ILIKE '%r_'
-- Identifying Students with No Major and Specific Conditions:
SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL AND (first_name LIKE 'D%' OR gpa > 3.0)
-- Retrieving Specific Courses based on Patterns and Order:
SELECT course FROM courses WHERE course LIKE '_e%' OR course LIKE '%s' ORDER BY course DESC LIMIT 5
-- Calculating the Average GPA of all Students:
SELECT ROUND(AVG(gpa), 2) FROM students

-- Counting Number of Students who have taken a Course:
-- Analyzing Major Statistics:
SELECT major_id, COUNT() AS number_of_students, ROUND(AVG(gpa), 2) AS average_gpa FROM students GROUP BY major_id HAVING COUNT() > 1
-- Listing Majors based on Conditions and Order:
SELECT major FROM students FULL JOIN majors ON students.major_id = majors.major_id WHERE major IS NOT NULL AND (student_id IS NULL OR first_name ILIKE '%ma%') ORDER BY major
-- Finding Unique Courses not taken by Specific Students:
SELECT DISTINCT(course) FROM students RIGHT JOIN majors USING(major_id) INNER JOIN majors_courses USING(major_id) INNER JOIN courses USING(course_id) WHERE (first_name ='Obie' AND last_name='Hilpert') OR student_id IS NULL ORDER BY course DESC
-- Listing Courses with Only One Student Enrolled:
SELECT course FROM students INNER JOIN majors_courses USING(major_id) INNER JOIN courses USING(course_id) GROUP BY course HAVING COUNT(student_id) = 1 ORDER BY course
-- Conclusion:
-- This Bash script demonstrates the usage of SQL queries to extract specific information from a students database related to computer science students. The project covers a range of query types, including filtering, pattern matching, aggregating, and sorting the results. By executing these queries, it provides valuable insights into the students' data, allowing for further analysis and decision-making.
