# SQL Learning Journey

SQL and PostgreSQL fundamentals through applied exercises, building toward backend/database engineering. Each lesson runs against a real PostgreSQL database, not just illustrative snippets.

## Tech Stack

- **PostgreSQL** (via Termux's native package, running locally)
- Lessons are plain `.sql` files, executed with `psql`

## Progress

| Lesson | Topic | Key Concepts |
|--------|-------|--------------|
| 1 | Table Creation & Data Insertion | `CREATE TABLE`, `INSERT INTO`, `SELECT *` |
| 2 | Filtering, Updating & Deleting | `WHERE`, `UPDATE`, `DELETE`, `ORDER BY`, `LIMIT` |
| 3 | JOINs | Foreign keys, `INNER JOIN`, `LEFT JOIN` |
| 4 | Aggregation & Grouping | `COUNT`, `AVG`, `MAX`, `MIN`, `GROUP BY`, `HAVING` |
| 5 | Transactions & Indexes | `BEGIN`/`COMMIT`, `CREATE INDEX`, query performance |

## Running the Lessons

Each lesson is a standalone SQL script, run against a local database:

    psql mydb -f lesson01_create_insert_select.sql

## Notes

This repository is part of a structured learning path that also includes:
- [python-learning-journey](https://github.com/abdallasaidbigpartner-web/python-learning-journey) - Python fundamentals through backend engineering, ML/DL, and Generative AI
- [typescript-learning-journey](https://github.com/abdallasaidbigpartner-web/typescript-learning-journey) - TypeScript fundamentals through classes, async/await, and testing
