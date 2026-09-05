-- Lesson 3: JOINs
-- Demonstrates linking two related tables via a foreign key, and
-- combining their data with INNER JOIN and LEFT JOIN.

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    course_name VARCHAR(50)
);

INSERT INTO courses (student_id, course_name) VALUES (1, 'Python Basics');
INSERT INTO courses (student_id, course_name) VALUES (1, 'SQL Fundamentals');
INSERT INTO courses (student_id, course_name) VALUES (2, 'TypeScript Intro');

SELECT students.name, courses.course_name
FROM students
INNER JOIN courses ON students.id = courses.student_id;

SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses ON students.id = courses.student_id;
