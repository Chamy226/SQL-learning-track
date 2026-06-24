-- SQL Practice Queries for Student Grades Database
-- Run these queries to practice and learn SQL

-- BASIC SELECT QUERIES
-- =====================

-- 1. Select all students
SELECT * FROM students;

-- 2. Select student names and emails only
SELECT student_name, email FROM students;

-- 3. Select students with GPA above 3.0
SELECT student_name, gpa FROM students WHERE gpa > 3.0;

-- 4. Select all grades from Fall2023 semester
SELECT * FROM student_grades WHERE semester_id = 'Fall2023';


-- FILTERING & SORTING
-- ===================

-- 5. Find all seniors (grade_level = 12)
SELECT student_name, grade_level FROM students WHERE grade_level = 12;

-- 6. List students who don't eat school lunch, sorted by GPA
SELECT student_name, gpa FROM students WHERE school_lunch = 'No' ORDER BY gpa DESC;

-- 7. Find grades 90 or above
SELECT * FROM student_grades WHERE final_grade >= 90 ORDER BY final_grade DESC;


-- AGGREGATION (COUNT, SUM, AVG, etc)
-- ===================================

-- 8. Count total number of students
SELECT COUNT(*) as total_students FROM students;

-- 9. Get average GPA of all students
SELECT AVG(gpa) as average_gpa FROM students;

-- 10. Count students by grade level
SELECT grade_level, COUNT(*) as student_count FROM students GROUP BY grade_level;

-- 11. Average grade by department
SELECT department, AVG(final_grade) as avg_grade FROM student_grades GROUP BY department;


-- JOINS
-- =====

-- 12. Get student names with their grades (JOIN)
SELECT s.student_name, sg.class_name, sg.final_grade 
FROM students s 
JOIN student_grades sg ON s.id = sg.student_id;

-- 13. Show students and their grades, ordered by student name
SELECT s.student_name, sg.semester_id, sg.class_name, sg.final_grade
FROM students s
JOIN student_grades sg ON s.id = sg.student_id
ORDER BY s.student_name, sg.semester_id;


-- ADVANCED QUERIES
-- ================

-- 14. Students with grades below 85
SELECT DISTINCT s.student_name, sg.class_name, sg.final_grade
FROM students s
JOIN student_grades sg ON s.id = sg.student_id
WHERE sg.final_grade < 85
ORDER BY sg.final_grade;

-- 15. Average grade per student
SELECT s.student_name, AVG(sg.final_grade) as avg_grade
FROM students s
JOIN student_grades sg ON s.id = sg.student_id
GROUP BY s.student_name
ORDER BY avg_grade DESC;

-- 16. Count how many classes each student is taking
SELECT s.student_name, COUNT(sg.class_id) as classes_enrolled
FROM students s
LEFT JOIN student_grades sg ON s.id = sg.student_id
GROUP BY s.student_name;


-- TRY YOUR OWN QUERIES BELOW!
-- ===========================
-- Write your practice queries here:

