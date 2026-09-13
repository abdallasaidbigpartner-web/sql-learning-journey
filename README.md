# SQL Learning Journey

![CI](https://github.com/abdallasaidbigpartner-web/sql-learning-journey/actions/workflows/ci.yml/badge.svg) ![License](https://img.shields.io/badge/license-MIT-blue.svg)

Structured SQL and PostgreSQL engineering progression covering relational data modeling, queries, transactions, database design, performance, and backend data engineering.

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
- [ai-study-assistant](https://github.com/abdallasaidbigpartner-web/ai-study-assistant) - capstone AI system using PostgreSQL for RAG and auth
- [study-assistant-frontend](https://github.com/abdallasaidbigpartner-web/study-assistant-frontend) - React frontend for the AI Study Assistant
- [task-manager-api](https://github.com/abdallasaidbigpartner-web/task-manager-api) - TypeScript backend capstone
- [ecommerce-database](https://github.com/abdallasaidbigpartner-web/ecommerce-database) - SQL capstone built on these fundamentals (triggers, views, defense-in-depth constraints)
- [url-shortener-go](https://github.com/abdallasaidbigpartner-web/url-shortener-go) - Go capstone
