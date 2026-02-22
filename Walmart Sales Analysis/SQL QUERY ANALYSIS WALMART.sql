CREATE DATABASE walmart_db;
USE walmart_db;

CREATE TABLE walmart(
store INT,
date DATE,
weekly_sales FLOAT,
holiday_flag INT,
temperature FLOAT,
fuel_price FLOAT,
cpi FLOAT,
unemployment FLOAT
);

#Confirm Data Imported
SELECT COUNT(*) FROM walmart;

SELECT * FROM walmart LIMIT 5;

#SQL Analysis
#1 Total Sales
SELECT SUM(weekly_sales) AS total_sales
FROM walmart;

#Total revenue generated during the period is 6737218988.42.

#2️ Best & Worst Store
SELECT store, SUM(weekly_sales) AS total_sales
FROM walmart
GROUP BY store
ORDER BY total_sales DESC;

#3️ Holiday vs Normal Sales
SELECT holiday_flag, SUM(weekly_sales) AS total_sales
FROM walmart
GROUP BY holiday_flag;

#4 Monthly Sales Trend
SELECT MONTH(date) AS month,
       SUM(weekly_sales) AS total_sales
FROM walmart
GROUP BY MONTH(date)
ORDER BY month;

#5️ Yearly Sales
SELECT YEAR(date) AS year,
       SUM(weekly_sales) AS total_sales
FROM walmart
GROUP BY YEAR(date);





