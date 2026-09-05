-- Lesson 2: Filtering, Updating & Deleting Data
-- Demonstrates WHERE for filtering, UPDATE for modifying rows,
-- DELETE for removing rows, and ORDER BY/LIMIT for sorting results.

SELECT * FROM students WHERE age > 19;

UPDATE students SET grade = 'A' WHERE name = 'Sara';

SELECT * FROM students ORDER BY age DESC;

DELETE FROM students WHERE name = 'Cawad';

SELECT * FROM students;
