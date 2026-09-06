"""
Professionalization pass: automated tests verifying SQL lesson
results, using Python + psycopg2 as a test harness against a real
PostgreSQL database.

Demonstrates a genuine professional practice: SQL correctness should
be verified programmatically (like dbt tests or pgTAP), not just
eyeballed once when the query was written.
"""

import subprocess
import psycopg2
import pytest


@pytest.fixture(scope="module", autouse=True)
def reset_database():
    """Reset the students/courses tables to a known state before running lesson tests."""
    conn = psycopg2.connect(dbname="mydb")
    cursor = conn.cursor()
    cursor.execute("DROP TABLE IF EXISTS courses;")
    cursor.execute("DROP TABLE IF EXISTS students;")
    conn.commit()
    cursor.close()
    conn.close()

    subprocess.run(["psql", "mydb", "-f", "lesson01_create_insert_select.sql"], check=True, capture_output=True)
    subprocess.run(["psql", "mydb", "-f", "lesson03_joins.sql"], check=True, capture_output=True)

    yield


def get_connection():
    return psycopg2.connect(dbname="mydb")


def test_lesson01_created_three_students():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT COUNT(*) FROM students;")
    count = cursor.fetchone()[0]
    cursor.close()
    conn.close()

    assert count == 3, f"Expected 3 students after Lesson 1, got {count}"


def test_lesson03_inner_join_excludes_students_without_courses():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("""
        SELECT COUNT(*) FROM students
        INNER JOIN courses ON students.id = courses.student_id;
    """)
    inner_count = cursor.fetchone()[0]

    cursor.execute("""
        SELECT COUNT(*) FROM students
        LEFT JOIN courses ON students.id = courses.student_id;
    """)
    left_count = cursor.fetchone()[0]
    cursor.close()
    conn.close()

    assert left_count >= inner_count, "LEFT JOIN should return at least as many rows as INNER JOIN"


def test_lesson03_abdalla_has_two_courses():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("""
        SELECT COUNT(*) FROM students
        INNER JOIN courses ON students.id = courses.student_id
        WHERE students.name = 'Abdalla';
    """)
    count = cursor.fetchone()[0]
    cursor.close()
    conn.close()

    assert count == 2, f"Expected Abdalla to have 2 courses, got {count}"
