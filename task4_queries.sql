-- 1. Basic Clauses (SELECT, WHERE, ORDER BY, LIMIT)
-- Find the top 5 most profitable individual sales
SELECT "Order ID", "Product Name", Sales, Profit
FROM SampleSuperstore
WHERE Profit > 0
ORDER BY Profit DESC
LIMIT 5;

-- 2. Aggregate Functions (SUM, AVG) & GROUP BY
-- Calculate total revenue and average profit by region
SELECT Region, SUM(Sales) AS Total_Sales, AVG(Profit) AS Avg_Profit
FROM SampleSuperstore
GROUP BY Region;

-- 3. Subqueries
-- Find products that have a sales value higher than the overall average sale
SELECT "Product Name", Sales
FROM SampleSuperstore
WHERE Sales > (SELECT AVG(Sales) FROM SampleSuperstore)
ORDER BY Sales DESC
LIMIT 5;

-- 4. Create a View for Analysis
-- Create a virtual table of high-value customers
CREATE VIEW High_Value_Customers AS
SELECT "Customer ID", "Customer Name", SUM(Sales) AS Total_Spent
FROM SampleSuperstore
GROUP BY "Customer ID", "Customer Name"
HAVING SUM(Sales) > 5000;

-- 5. Optimize with Indexes
-- Speed up future queries that filter by Region
CREATE INDEX idx_region ON SampleSuperstore(Region);

-- 6. JOINS (INNER JOIN)
-- Creating a temporary manager table to demonstrate a JOIN on the Region column
CREATE TABLE Region_Managers (Region TEXT, Manager_Name TEXT);
INSERT INTO Region_Managers VALUES ('West', 'Anna'), ('East', 'Chuck'), ('Central', 'Kelly'), ('South', 'Cassandra');

SELECT s.Region, m.Manager_Name, SUM(s.Sales) AS Total_Revenue
FROM SampleSuperstore s
INNER JOIN Region_Managers m ON s.Region = m.Region
GROUP BY s.Region, m.Manager_Name;