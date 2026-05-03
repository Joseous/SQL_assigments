-- ============================================
-- Part#6: SET Operators (using both databases)
-- Name: Joseph Ng'ang'a 
-- Date: 2026-04-18
-- ============================================

-- Q1: Write a UNION query to show a combined list of all unique cities from the students table and the patients table. Order alphabetically.

SELECT city
FROM students
UNION 
SELECT city
FROM city_hospital.patients
ORDER BY city;

-- Q2: Write a UNION ALL query to combine all student first names and all patient full names into one list. Add a second column called source that says 'Student' or 'Patient' so you can tell where each name came from.

SELECT 
	first_name AS name,
	'Student' AS source 
FROM students
UNION ALL 
SELECT 
	full_name,
	'Patient' AS source
FROM city_hospital.patients;

-- Q3: Write an INTERSECT query to find cities that appear in BOTH the students table and the patients table - cities that are home to both students and patients.

SELECT 
	city
FROM students
INTERSECT  
SELECT 
	city 
FROM city_hospital.patients;

-- Q4: Write a query that combines all of the following into one result using UNION ALL - student names (labelled 'Student'), patient full names (labelled 'Patient'), and doctor full names (labelled 'Doctor'). Order the final result by the source label, then by name.

SELECT 
    first_name AS name,
    'Student' AS source
FROM students
UNION ALL
SELECT 
    full_name AS name,
    'patient' AS source
FROM city_hospital.Patients
UNION ALL
SELECT 
    full_name AS name,
    'Doctor' AS source
FROM city_hospital.doctors
ORDER BY source, name;
