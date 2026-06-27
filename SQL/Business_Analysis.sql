/*
-- =========================================================
Project Name : Retail Sales Analytics
Dataset      : Sample Superstore
Author       : Kaustubh Waghmare
Description  : SQL Exploratory Data Analysis (EDA)
-- =========================================================
*/

USE retail_sales_analysis;

-- =========================================================
-- Section 1: Business KPIs
-- =========================================================

-- Query 1: Total Sales
select round(sum(Sales),2) as Total_Sales
from orders;

-- Query 2:  Total Profit 
select round(sum(profit),2) as Total_Profit
from orders;

-- Query 3:  Total Quality Sold 
select sum(Quantity) as Total_Quantity
from orders;

-- Query 4:  Total Orders
select COUNT(DISTINCT `Order ID`) as Total_Orders
from orders;

-- Query 5:  Total Customers
select COUNT(DISTINCT `Customer ID`) as Total_Customers
from orders;

-- Query 6:  Total Products 
select count(distinct `Product ID`) as Total_Products
from orders;

-- ============================================================
--section2: Customer Analysis
-- ============================================================

-- Query 1:  Sales, Profit & Quantity by Segment

SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Query 2: Customer Count by Segment

SELECT 
	Segment,
    COUNT(DISTINCT `Customer ID`) as Total_Customers
    
FROM orders
Group by Segment
Order by Total_Customers desc;

-- Query 3: Average Order Value by Segment

SELECT 
    Segment,
    round(AVG(Sales),2) as Avg_Order_Value
FROM orders
Group by Segment
Order by Avg_Order_Value desc;

-- Query 4: Top 10 Customer by Sales

SELECT 
	`Customer Name`,
    ROUND(SUM(Sales),2) as Total_Sales
    
FROM orders
Group by `Customer Name`
Order By Total_Sales desc
LIMIT 10;


-- Query 5:Top 10 Customers by Profit

SELECT 
    `Customer Name`,
    ROUND(SUM(Profit), 2) as Total_Profit
FROM orders
group by `Customer Name`
Order by Total_Profit desc
LIMIT 10;

-- Query 6: Customer with Highest Number of Orders

SELECT 
	`Customer Name`,
    count(distinct `Order ID`) as Total_Orders
    
FROM orders
group by `Customer Name`
order by Total_Orders DESC
LIMIT 10;

-- Query 7: Top 10 Customers By Quantity Purchase
select 
	`Customer Name`,
	sum(Quantity) as Total_Quantity
FROM orders
group by `Customer Name`
order by Total_Quantity DESC
LIMIT 10;


-- =============================================================
				-- section 3: Geographic  Analysis
-- =============================================================


================================================================
-- Query 8:  country-wise Sales & Profit
-- Business Question:
--Which Country generates the highest sales and profit?
================================================================	
SELECT 
    Country,
    ROUND(sum(Sales),2) as Total_Sales,
    ROUND(sum(Profit),2) as Total_Profit
FROM orders
group by Country 
order by Total_Sales desc;


================================================================
-- Query 9:  State-wise Sales
-- Business Question:
-- Which states generate the highest sales revenue?
================================================================	
SELECT 
    State,
    ROUND(sum(sales),2) as Total_sales
FROM orders
group by State
order by Total_Sales desc;


-- =============================================================
-- Query 10: State-wise Profit
-- Business Question:
-- Which states generate the highest profit?
-- =============================================================
SELECT 
    state,
    ROUND(sum(Profit),2) as Total_Profit
FROM orders
group by State
order by Total_Profit desc;

-- =============================================================
-- Query 11: Top 10 Cities by Sales
-- Business Question:
-- Which cities generate the highest sales revenue?
-- =============================================================
SELECT 
    City,
    ROUND(sum(Sales),2) as Total_Sales

FROM orders
group by City
order by Total_Sales desc
LIMIT 10;

==============================================================
-- Query 12: Top 10 Cities by Profit
-- Business Question:
-- which cities generate the highest profit?
==============================================================
select
	City,
	ROUND(SUM(Profit),2) as Total_Profit
FROM orders
group by City
order by Total_Profit desc
LIMIT 10;


================================================================
	-- Quesry 13: Total Orders by State
	-- Buiness Question:
	-- Which states have the highest number of orders?
================================================================
SELECT 
	State,
	COUNT(DISTINCT `Order ID`) as Total_Orders
FROM orders
group by State
order by Total_Orders desc;
