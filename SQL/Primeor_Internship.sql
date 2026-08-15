CREATE DATABASE Primeor_Internship
USE Primeor_Internship
GO

--Write SQL queries for:--
SELECT * from sales_data
-- Top 10 profitable products
SELECT TOP 10
	product_name,
	sum(sales) AS Total_Sales
FROM sales_data
GROUP BY product_name
ORDER BY Total_Sales DESC;


-- Top 10 customers by sales
SELECT TOP 10
	customer_name,
	sum(sales) AS Total_Sales
FROM sales_data
GROUP BY customer_name
ORDER BY Total_Sales DESC;

-- Region-wise total sales
SELECT 
	region,
	sum(sales) AS Total_Sales
FROM sales_data
GROUP BY region
ORDER BY Total_Sales DESC;

-- Category-wise average profit
SELECT 
	category,
	avg(profit) AS Average_profits
FROM sales_data
GROUP BY category
ORDER BY Average_profits DESC;

-- Highest discount category
SELECT TOP 1
	category,
	avg(discount) AS Highest_Discount
FROM sales_data
GROUP BY category
ORDER BY Highest_Discount DESC;

-- Orders with negative profit
SELECT 
	product_id,
	product_name
FROM sales_data
WHERE profit < 0;

-- Monthly sales trend
SELECT 
	YEAR(order_date) AS Sales_Year,
	MONTH(order_date) AS Sales_Month,
	SUM(sales) AS Total_Sales
FROM sales_data
GROUP BY YEAR(order_date),MONTH(order_date)
ORDER BY Sales_Year,Sales_Month;

-- Market-wise revenue analysis
SELECT
	market,
	SUM(sales) AS Total_Revenue
FROM sales_data
GROUP BY market
ORDER BY Total_Revenue;

-- Top-performing sub-categories
SELECT 
	sub_category,
	SUM(sales) AS Total_Sales
FROM sales_data
GROUP BY sub_category
ORDER BY Total_Sales DESC;

-- Ship mode usage analysis
SELECT 
	ship_mode,
	COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY ship_mode
ORDER BY Total_Orders DESC;

 
 --Which market generates highest revenue? 
 SELECT TOP(1)
	market,
	SUM(sales) AS Total_Revenue
FROM sales_data
GROUP BY market
ORDER BY Total_Revenue;
 --Which categories are least profitable?
 SELECT TOP(1)
	sub_category,
	SUM(sales) AS Total_Sales
FROM sales_data
GROUP BY sub_category
ORDER BY Total_Sales;

 --Which shipping mode is most commonly used?
 SELECT TOP(1)
	ship_mode,
	COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY ship_mode
ORDER BY Total_Orders DESC;
