-- Lesson 5: Transactions & Indexes
-- Demonstrates grouping operations into an all-or-nothing transaction
-- (BEGIN/COMMIT/ROLLBACK), and creating an index to speed up lookups
-- on a specific column.

BEGIN;

UPDATE students SET grade = 'A' WHERE name = 'Sara';
UPDATE students SET grade = 'B' WHERE name = 'Abdalla';

COMMIT;

SELECT * FROM students;

CREATE INDEX idx_students_name ON students(name);

SELECT indexname FROM pg_indexes WHERE tablename = 'students';
