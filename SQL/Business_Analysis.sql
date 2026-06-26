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

-- Total Sales
select round(sum(Sales),2) as Total_Sales
from orders;

-- Total Profit 
select round(sum(profit),2) as Total_Profit
from orders;

-- Total Quality Sold 
select sum(Quantity) as Total_Profit
from orders;

-- Total Orders
select COUNT(DISTINCT `Order ID`) as Total_Orders
from orders;

-- Total Customers
select COUNT(DISTINCT `Customer ID`) as Total_Customers
from orders;

-- Total Products 
select count(distinct `Product ID`) as Total_Products
from orders;

-- ============================================================
--section2: Customer Analysis
-- ============================================================

-- Sales, Profit & Quantity by Segment
SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- =============================================================
-- section 3: Geographic  Analysis
-- =============================================================

-- country-wise Sales & Profit


select 
Country,
round(sum(Sales),2) as Total_Sales,
round(sum(Profit),2) as Total_Profit

from orders
group by Country 
order by Total_Sales desc;

-- State-wise Sales

select 
State,
round(sum(sales),2) as Total_sales

from orders
group by State
order by Total_Sales desc;

-- State-wise Profit
use retail_sales_analysis;
select 
state,
round(sum(Profit),2) as Total_Profit

from orders
group by State
order by Total_Profit desc;

-- Top 10 Cities By Sales 


select 
City,
round(sum(Sales),2) as Total_Sales

from orders

group by City
order by Total_Sales desc
limit 10;



