CREATE DATABASE sql_project_p1;
DROP TABLE IF EXISTS Retail_sales;
CREATE TABLE Retail_sales(
transactions_id	INT PRIMARY KEY,
sale_date	DATE,
sale_time	TIME,
customer_id INT,
	gender VARCHAR(15),
    age	INT,
    category VARCHAR(15),
    quantiy	INT,
    price_per_unit	FLOAT,
    cogs	FLOAT,
    total_sale FLOAT
);
SELECT *FROM Retail_sales;
SELECT
COUNT(*)
FROM Retail_sales
SELECT *FROM Retail_sales  
WHERE category = 'Clothing' 
  AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11';
  SELECT
  category,
  SUM(total_sale)AS net_sales,
  COUNT(*)AS total_orders
   FROM Retail_sales
GROUP BY category;
SELECT 
AVG(age)
FROM Retail_sales
WHERE category='Beauty'
SELECT FROM Retail_sales
WHERE total_sale >1000
SELECT 
category,
gender,
COUNT(*) AS total_sale
FROM Retail_sales
GROUP BY 
category,
gender
SELECT
EXTRACT(YEAR FROM sale_date) AS year,
EXTRACT(MONTH FROM sale_date) AS month,
AVG (total_sale) as avg_sale,
RANK()OVER (PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale)DESC)
FROM Retail_sales
GROUP BY 1,2
ORDER BY year DESC, month DESC;
SELECT 
customer_id,
SUM(total_sale)AS total_sales
FROM Retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
SELECT 
category,
COUNT(customer_id)
FROM Retail_sales
GROUP BY category


