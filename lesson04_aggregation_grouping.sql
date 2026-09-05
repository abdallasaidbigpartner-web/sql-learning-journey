-- Lesson 4: Aggregation & Grouping
-- Demonstrates COUNT/AVG/MAX/MIN aggregate functions, GROUP BY for
-- per-category summaries, and HAVING for filtering groups.

SELECT COUNT(*) FROM students;
SELECT AVG(age) FROM students;
SELECT MAX(age) FROM students;
SELECT MIN(age) FROM students;

SELECT grade, COUNT(*) FROM students GROUP BY grade;

SELECT grade, COUNT(*) FROM students GROUP BY grade HAVING COUNT(*) > 1;
