-- Check for missing values
SELECT COUNT(*) FROM online_retail 
WHERE CustomerID IS NULL;

SELECT COUNT(*) FROM online_retail 
WHERE Description IS NULL;
-- Check for total & distinct rows
SELECT COUNT(*) FROM online_retail;

SELECT COUNT(*) FROM (
    SELECT DISTINCT * FROM online_retail
) AS unique_rows;
-- Check for invalid quantity/price
SELECT COUNT(*) FROM online_retail WHERE Quantity <= 0;

SELECT COUNT(*) FROM online_retail WHERE UnitPrice <= 0;
-- Clean & transform
CREATE TABLE retail_cleaned AS
SELECT DISTINCT * FROM online_retail;

DELETE FROM retail_cleaned WHERE CustomerID IS NULL;

DELETE FROM retail_cleaned
WHERE Quantity <= 0 OR UnitPrice <= 0;

UPDATE retail_cleaned 
SET Description = 'Unknown Product'
WHERE Description IS NULL;

SELECT COUNT(*) FROM retail_cleaned;

