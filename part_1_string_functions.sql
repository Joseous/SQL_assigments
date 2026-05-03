-- ============================================
-- Part#1: String Functions
-- Name: Joseph Ng'ang'a 
-- Date: 2026-04-18
-- ============================================

-- Use the nairobi_academy schema and city_hospital schema

SET search_path TO nairobi_academy;

SHOW search_path;

SELECT * FROM students;

SELECT * FROM subjects;

SELECT * FROM exam_results;

-- Q1: Write a query to display each student's full name in UPPERCASE and their city in lowercase. Name the columns upper_name and lower_city.

SELECT 
	UPPER(CONCAT(first_name, ' ', last_name)) AS upper_name,
	LOWER(city) AS lower_city
FROM students;

-- Q2: Write a query to show each student's first name and the LENGTH of their first name. Order the results from longest to shortest name.

SELECT 
	first_name,
	LENGTH(first_name) 
FROM students
ORDER BY LENGTH(first_name) DESC;

-- Q3: Write a query to show each subject's name and a short version - the first 4 characters of the subject name ... called short_name. Also show the full subject name length.

SELECT 
	subject_name,
	SUBSTRING(subject_name, 1, 4) AS short_name,
	LENGTH(subject_name) AS len_subject
FROM subjects;

-- Q4: Write a query using CONCAT to produce a sentence for each student in this format: 'Amina Wanjiku is in Form 3 and comes from Nairobi'. Call the column student_summary.

SELECT 
	CONCAT(first_name, ' ', last_name, ' ', 'is in ', class ) AS student_summary
FROM students;


-- SELECT * FROM appointments;

-- SELECT * FROM departments;

-- SELECT * FROM city_hospital.doctors;

-- SELECT * FROM city_hospital.patients;

-- SELECT * FROM prescriptions;
 



