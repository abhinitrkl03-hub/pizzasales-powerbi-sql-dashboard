-- Create the 'Pizza_DB' database
CREATE DATABASE Pizza_DB;
GO

USE Pizza_DB;
GO

SELECT * FROM pizza_sales;

-- A. KPIs
-- 1. Total Revenue
SELECT SUM(total_price) AS Total_Revenue 
FROM pizza_sales;

-- 2. Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value 
FROM pizza_sales;

-- 3. Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold 
FROM pizza_sales; 

-- 4. Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales;

-- 5. Average Pizzas Per Order 
SELECT CAST(
		     CAST(SUM(quantity) AS DECIMAL(10,2)) / 
	         CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
			 AS DECIMAL(10,2)) AS Average_Pizzas_Per_Order 
FROM pizza_sales;

-- B. Daily Trend for Total Orders
SELECT DATENAME(WEEKDAY, order_date) AS Day_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date)
ORDER BY Total_Orders DESC;

-- C. Monthly Trend for Total Orders
SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC;

-- D. Percentage of Sales by Pizza Category
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, CAST(SUM(total_price) * 100 / 
(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category
ORDER BY PCT DESC;

/*
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, CAST(SUM(total_price) * 100 / 
(SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date) = 1) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category
ORDER BY PCT DESC;
*/

-- E. Percentage of Sales by Pizza Size
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, CAST(SUM(total_price) * 100 /
(SELECT SUM(total_price) FROM pizza_sales) AS decimal(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY PCT DESC;

/*
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, CAST(SUM(total_price) * 100 /
(SELECT SUM(total_price) FROM pizza_sales WHERE DATEPART(QUARTER, order_date) = 1) AS decimal(10,2)) AS PCT
FROM pizza_sales
WHERE DATEPART(QUARTER, order_date) = 1
GROUP BY pizza_size
ORDER BY PCT DESC;
*/

-- F. Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

/*
SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 5
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;
*/

-- G. Top 5 Pizzas by Revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;

-- H. Bottom 5 Pizzas by Revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;

-- I. Top 5 Pizzas by Total Quantity
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity 
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC;

-- J. Bottom 5 Pizzas by Total Quantity
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity 
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC;

-- K. Top 5 Pizzas by Total Orders
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;

-- L. Bottom 5 Pizzas by Total Orders
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC;

/*
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders ASC;
*/
