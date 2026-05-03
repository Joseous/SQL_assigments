-- ============================================
-- Part#3: Date & Time Functions(PostgreSQL) – using: nairobi_academy
-- Name: Joseph Ng'ang'a 
-- Date: 2026-04-18
-- ============================================

-- Q1: Write a query to extract the birth year, birth month, and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.

SELECT 
 	first_name,
 	DATE_PART('YEAR', date_of_birth) AS birth_year,
 	DATE_PART('Month', date_of_birth) AS birth_month,
 	DATE_PART('Day', date_of_birth) AS birth_day
 FROM students;

-- Q2: Write a query to show each student's full name, their date_of_birth, and their age in complete years. Order from oldest to youngest.

SELECT  
	CONCAT(first_name, ' ', last_name) AS full_name,
	date_of_birth,
	EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth)) AS Years
FROM students
ORDER BY Years DESC;

-- Q3: Write a query to display each exam date in this exact format: 'Friday, 15th March 2024'. Call the column formatted_date.

SELECT 
	exam_date,
	TO_CHAR(exam_date, 'Day, DD Month YYYY') AS formatted_date 
FROM exam_results;
