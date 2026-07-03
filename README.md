# DataX Labs - Task 4: SQL for Data Analysis

## Objective
Extract, manipulate, and analyze structured ecommerce data utilizing SQL queries to extract key business metrics.

## Tools Used
* SQLite
* Superstore Dataset

## Deliverables & Methodology
This repository contains the dataset, the SQL script, and output screenshots demonstrating proficiency in:
* **Basic Querying:** Extracted top-performing products using `SELECT`, `WHERE`, and `ORDER BY`.
* **Aggregations:** Calculated total revenue and average profit by utilizing `SUM()`, `AVG()`, and `GROUP BY` on regional data.
* **Subqueries:** Filtered for sales transactions exceeding the overall average order value.
* **Views & Indexes:** Created a virtual table (`High_Value_Customers`) using the `HAVING` clause, and optimized the table by indexing the `Region` column.
* **Joins:** Integrated a secondary mock-table of Regional Managers utilizing an `INNER JOIN` to map leadership to regional revenue generation.
