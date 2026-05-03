-- ============================================
-- Part#2: Number Functions  (using: Nairobi_academy)
-- Name: Joseph Ng'ang'a 
-- Date: 2026-04-18
-- ============================================

-- Q1: Write a query to show each exam result alongside the mark rounded to 1 decimal place, the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR.

SELECT 
	marks,
	ROUND(marks/10.0, 1) AS marks_round,
	CEIL(marks/10.0) AS marks_ceil,
	FLOOR(marks/10.0) AS marks_floor
FROM exam_results;

-- Q2: Write a query to calculate the following summary statistics for exam_results in one query: total number of results (COUNT), average mark (AVG rounded to 2 decimal places), highest mark (MAX), lowest mark (MIN), and total marks added together (SUM).

SELECT 
	COUNT(*) AS total_results,
	ROUND(AVG(marks), 2) AS avg_marks,
	MAX(marks) AS highest_marks,
	MIN(marks) AS lowest_marks,
	SUM(marks)
FROM exam_results;

-- Q3: The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, the original marks, and the new boosted_mark rounded to the nearest whole number.
	
SELECT 
	result_id,
	marks AS original_marks,
	ROUND(marks + 10/100) AS boosted_marks
FROM exam_results;
