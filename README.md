# Learning SQL — Progress Log

My hands-on practice working through *Getting Started with SQL* (Thomas Nield, O'Reilly) — **completed June 2026**.
Each query I write is saved here as a runnable `.sql` file, organized by topic, so I can
track what I've learned and demonstrate it.

## What's here

| Folder / file | Purpose |
|---|---|
| `queries/` | My SQL queries, organized by topic. This is my own work. |
| `*.db` | The book's SQLite databases (see *Databases* below). Included so every query runs. |
| `extra_practice_examples/` | Reference output from the book's extra exercises. |

## Databases

| Database | Contents |
|---|---|
| `rexon_metals.db` | Main book example — a metals company: `PRODUCT`, `CUSTOMER`, `CUSTOMER_ORDER`. |
| `weather_stations.db` | Larger dataset for filtering & aggregation practice. |
| `surgetech_conference.db` | Conference data (attendees, sessions). |
| `extra_practice_database.db` | Music/sales database for extra exercises. |

## How to run a query

With [SQLite](https://www.sqlite.org/) installed:

```bash
sqlite3 rexon_metals.db < queries/01-select/all-products.sql
```

Or open a database interactively:

```bash
sqlite3 rexon_metals.db
sqlite> .tables
sqlite> SELECT * FROM PRODUCT;
```

## Progress

| Date | Topic | What I practiced |
|---|---|---|
| 2026-06-21 | SELECT *(complete)* | Retrieving data with `SELECT *` and specific columns; calculated/expression columns (e.g. taxed price); column aliases with `AS`; `round()` for formatting numbers; and string concatenation with `\|\|` to build composite fields (location, full shipping address). |
| 2026-06-22 | WHERE *(complete)* | Filtering rows with comparison operators (`=`, `!=`, `<>`, `>`, `<`, `>=`, `<=`); `BETWEEN` (inclusive); `AND` / `OR` / `NOT`; `IN` and `NOT IN` for value lists; modulo (`%`) for pattern-based filtering; `LIKE` with `%` and `_` wildcards; `IS NULL` for missing values; `COALESCE` to substitute a default for NULLs; and `AND`/`OR` operator precedence with explicit parentheses. |
| 2026-06-22 | GROUP BY and ORDER BY *(complete)* | Aggregate functions (`COUNT(*)`, `COUNT(column)`, `SUM`, `AVG`, `MAX`); grouping by one and multiple columns; positional `GROUP BY`; `ORDER BY` with `ASC`/`DESC` and mixed directions; `HAVING` to filter on aggregated values; and `DISTINCT` for unique values across one or more columns. |
| 2026-06-22 | CASE Statements *(complete)* | `CASE`/`WHEN`/`THEN`/`ELSE`/`END` for conditional logic; simplified CASE branches using top-to-bottom evaluation; CASE inside `GROUP BY` to group by derived categories; conditional aggregation with `SUM`, `MAX`, and `AVG` using `CASE` to pivot row data into columns; and `NULL` vs `0` as the `ELSE` value depending on the aggregate function used. |
| 2026-06-22 | JOIN *(complete)* | `INNER JOIN` to combine matching rows across tables; `LEFT JOIN` to keep all rows from the left table including unmatched ones; chaining multiple joins across three tables; calculated columns across joined tables (e.g. revenue = qty × price); finding records with no match using `LEFT JOIN` + `IS NULL`; `COALESCE` to replace NULL aggregates with zero; and the importance of which table appears in `FROM` when using `LEFT JOIN`. |
| 2026-06-23 | Database Design *(complete)* | Conceptual chapter covering normalisation, primary and foreign keys, table relationships (one-to-many, many-to-many), and principles for structuring a relational database. |

---

*Database files are from [Thomas Nield's *Getting Started with SQL*](https://github.com/thomasnield/oreilly_getting_started_with_sql) and are included here for learning purposes. The queries in `queries/` are my own.*
