-- Create student_grades database in SQLite
-- This script sets up the tables and inserts your student data

-- Create the students table
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    student_name TEXT,
    grade_level INTEGER,
    gpa REAL,
    school_lunch TEXT,
    birthday TEXT,
    email TEXT
);

-- Create the student_grades table
CREATE TABLE IF NOT EXISTS student_grades (
    semester_id TEXT,
    class_id INTEGER,
    department TEXT,
    class_name TEXT,
    student_id INTEGER,
    final_grade INTEGER,
    PRIMARY KEY (semester_id, class_id, student_id)
);

-- Insert students data
INSERT INTO students (id, student_name, grade_level, gpa, school_lunch, birthday, email) VALUES
(1, 'Abby Johnson', 10, 3.1, 'Yes', '2008-05-14', 'abby.johnson@mavenhighschool.com'),
(2, 'Bob Smith', 11, 3.1, 'No', '2007-09-30', 'bob.smith@mavenhighschool.com'),
(3, 'Catherine Davis', 12, 3.6, 'Yes', '2006-11-21', 'catherine.davis@mavenhighschool.com'),
(4, 'Daniel Brown', 9, 3.5, 'Yes', '2009-03-10', 'daniel.brown@mavenhighschool.com'),
(5, 'Eva Martinez', 10, 2.7, 'No', '2008-02-05', 'eva.martinez@mavenhighschool.com'),
(6, 'Frank Wilson', 11, 3.2, 'No', '2007-07-17', 'frank.wilson@mavenhighschool.com'),
(7, 'Grace Lee', 12, 3.0, 'Yes', '2006-12-02', 'grace.lee@mavenhighschool.com'),
(8, 'Henry Taylor', 9, 3.0, 'Yes', '2009-06-08', 'henry.taylor@mavenhighschool.com'),
(9, 'Isabella Moore', 10, 2.8, 'Yes', '2008-01-19', 'isabella.moore@mavenhighschool.com'),
(10, 'Jack Anderson', 11, 3.4, 'No', '2007-04-25', 'jack.anderson@mavenhighschool.com'),
(11, 'Kate Thompson', 12, 3.3, 'Yes', '2006-08-11', 'kate.thompson@mavenhighschool.com'),
(12, 'Leo Harris', 9, 2.9, 'No', '2009-10-07', 'leo.harris@mavenhighschool.com');

-- Insert sample grades data
INSERT INTO student_grades (semester_id, class_id, department, class_name, student_id, final_grade) VALUES
('Fall2023', 101, 'Math', 'Algebra I', 1, 85),
('Fall2023', 101, 'Math', 'Algebra I', 2, 92),
('Fall2023', 101, 'Math', 'Algebra I', 3, 88),
('Fall2023', 102, 'English', 'English 10', 1, 90),
('Fall2023', 102, 'English', 'English 10', 2, 87),
('Fall2023', 102, 'English', 'English 10', 3, 95),
('Fall2023', 103, 'Science', 'Biology', 1, 82),
('Fall2023', 103, 'Science', 'Biology', 2, 89),
('Fall2023', 103, 'Science', 'Biology', 3, 91),
('Spring2024', 101, 'Math', 'Algebra I', 1, 88),
('Spring2024', 101, 'Math', 'Algebra I', 2, 94),
('Spring2024', 102, 'English', 'English 10', 1, 92),
('Spring2024', 102, 'English', 'English 10', 2, 89);
