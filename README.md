# SQL Aggregate Function and GROUP BY Clause Error

This repository demonstrates a common error in SQL queries involving the incorrect usage of aggregate functions (like `SUM`, `AVG`, `COUNT`, etc.) in conjunction with the `GROUP BY` clause.

The error arises when non-aggregated columns are included in the `SELECT` statement without being included in the `GROUP BY` clause.  SQL requires that all non-aggregated columns be listed in the `GROUP BY` clause.

The `bug.sql` file contains the erroneous query, while `bugSolution.sql` provides the correct version.

This example uses a simple `orders` table, but the principle applies to any SQL query that employs aggregate functions and grouping.

Please refer to the individual SQL files for the code samples. 