-- Unique customers
SELECT COUNT(DISTINCT CustomerID) FROM retail_cleaned;
-- Top 10 Best-Selling Products
SELECT Description, SUM(Quantity) AS Total_Sold
FROM retail_cleaned
GROUP BY Description
ORDER BY Total_Sold DESC
LIMIT 10;
-- Top Countries by Transactions
SELECT Country, COUNT(*) AS Total_Transactions
FROM retail_cleaned
GROUP BY Country
ORDER BY Total_Transactions DESC;
-- Most Profitable Products
SELECT Description, SUM(Quantity * UnitPrice) AS Total_Revenue
FROM retail_cleaned
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;
-- Monthly Sales Trend
SELECT MONTH(InvoiceDate) AS Month, SUM(Quantity * UnitPrice) AS Total_Sales
FROM retail_cleaned
GROUP BY Month
ORDER BY Month;
-- Count of Unique Customers
SELECT COUNT(DISTINCT CustomerID) AS Unique_Customers FROM retail_cleaned;