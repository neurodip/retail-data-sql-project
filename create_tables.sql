CREATE DATABASE RetailDB;
USE RetailDB;

CREATE TABLE online_retail (
  InvoiceNo VARCHAR(20),
  StockCode VARCHAR(20),
  Description TEXT,
  Quantity INT,
  InvoiceDate DATETIME,
  UnitPrice DECIMAL(10,2),
  CustomerID INT,
  Country VARCHAR(100)
);

LOAD DATA LOCAL INFILE 'E:/Retail_Data_Project/data/online_retail_II.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM online_retail LIMIT 10;

