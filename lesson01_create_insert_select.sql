-- Lesson 1: Creating Tables & Inserting Data
-- Demonstrates CREATE TABLE with a primary key and typed columns,
-- INSERT INTO for adding rows, and SELECT * for retrieving all data.

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(2)
);

INSERT INTO students (name, age, grade) VALUES ('Abdalla', 20, 'A');
INSERT INTO students (name, age, grade) VALUES ('Sara', 19, 'B');
INSERT INTO students (name, age, grade) VALUES ('Cawad', 40, 'C');

SELECT * FROM students;
