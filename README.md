# Online Retail Data Cleaning & Analysis Project

A complete data quality and analysis project using a real-world e-commerce dataset. The goal was to clean messy transactional data and generate analysis-ready output to help businesses make informed decisions.

---
##  Project Objective
- Load raw retail transaction data from CSV.
- Clean and structure the dataset using SQL.
- Remove missing, duplicate, and invalid entries.
- Perform SQL-based business analysis (top-selling products, revenue trends, etc.)
---
##  Tools & Technologies Used
- **Database**: MySQL 8+ (Workbench + CLI)
- **Language**: SQL (DML, Aggregates, GROUP BY, Joins)
- **Data Source**: Kaggle - Online Retail II Dataset
- **Others**: Excel/Notepad (for pre-checking), UTF-8 compatible file

---

##  Dataset Overview

| Attribute              | Description                             |
|------------------------|-----------------------------------------|
| InvoiceNo              | Invoice number (includes returns)       |
| StockCode              | Product code                            |
| Description            | Product name                            |
| Quantity               | Number of products sold                 |
| InvoiceDate            | Date and time of purchase               |
| UnitPrice              | Price per item                          |
| CustomerID             | ID of the customer                      |
| Country                | Country of purchase                     |

- File Used: online_retail_II.csv
- Original Rows: ~1,067,000
- Final Cleaned Rows: ~910,000

---
##  Data Cleaning Summary

| Step                            | Description |
|---------------------------------|-------------|
| Duplicate Removal	              |Removed all exact duplicate rows|
| NULL Removal (CustomerID)	      |Deleted rows without Customer ID|
| Invalid Values Removed	      |Deleted rows with Quantity ≤ 0 or UnitPrice ≤ 0|
| NULL Descriptions Replaced	  |Replaced NULL descriptions with 'Unknown Product'|
| Created Clean Table	          |Stored all cleaned data in retail_cleaned table|

---
##  Key Analysis Performed

- Unique customer count
- Top 10 products by quantity sold
- Top 10 products by total revenue
- Top countries by number of transactions
- Monthly sales trends

---

##  Insights Highlights

- **Most sold product** WORLD WAR 2 GLIDERS
- **Highest revenue product**: Manual
- **Top country**: United Kingdom
- **Peak sales period**: November & December
- **Data quality issue**: Over 135K rows had missing CustomerID, ~10K duplicate rows found

  ---
## Project Structure
<pre> ``` Retail_SQL_Project/ ├── README.md → Project Documentation ├── data/ │ └── online_retail_II.csv → Raw Dataset (zipped due to GitHub 25MB+ limit) ├── sql/ │ ├── create_tables.sql → SQL script to create base tables │ ├── cleaning_steps.sql → Data cleaning queries │ └── analysis_queries.sql → Business analysis queries ├── report/ │ └── retail_data_report.pdf → Final Project Report ``` </pre>
 
## Conclusion

This project showcases real-world SQL skills — from raw data cleaning to meaningful business analysis.  
The approach can be replicated for similar transactional datasets in retail, finance, and e-commerce domains.
