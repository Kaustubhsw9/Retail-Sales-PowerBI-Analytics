-- ============================================================
		-- SECTION 5: TIME ANALYSIS
-- ============================================================

-- ============================================================
-- Query 39: Year-wise Sales
-- Business Question:
-- How has sales revenue changed over the years?
-- ============================================================
select
	year(`Order Date`) as Order_Year,
    round(sum(Sales),2) as Total_Sales
from orders
group by Year(`Order Date`)
order by Order_Year;



-- ============================================================
-- Query 40: Year-wise Profit
-- Business Question:
-- How has business profit changed over the years?
-- ============================================================
select
	year(`Order Date`) as Order_Year,
    round(sum(Profit),2) as Total_Profit
from orders
group by Year(`Order Date`)
order by Order_Year;



-- ============================================================
-- Query 41: Month-wise Sales
-- Business Question:
-- Which months generate the highest sales revenue?
-- ============================================================
select
	month(`Order Date`) as Order_month,
    round(sum(Sales),2) as Total_Sales
from orders
group by month(`Order Date`)
order by Order_month;


-- ============================================================
-- Query 42: Month-wise Profit
-- Business Question:
-- Which months generate the highest profit?
-- ============================================================
select
	month(`Order Date`) as Order_month,
    round(sum(Profit),2) as Total_Sales
from orders
group by month(`Order Date`)
order by Order_month;


-- ============================================================
-- Query 43: Quarter-wise Sales
-- Business Question:
-- Which quarter generates the highest sales revenue?
-- ============================================================
select
	quarter(`Order Date`) as Order_quarter,
    round(sum(Sales),2) as Total_Sales
from orders
group by quarter(`Order Date`)
order by Order_quarter;

-- ============================================================
-- Query 44: Quarter-wise Profit
-- Business Question:
-- Which quarter generates the highest profit?
-- ============================================================
select
	quarter(`Order Date`) as Order_quarter,
    round(sum(Profit),2) as Total_Sales
from orders
group by quarter(`Order Date`)
order by Order_quarter;


-- ============================================================
-- Query 45: Day of Week Analysis
-- Business Question:
-- On which day of the week are the highest sales generated?
-- ============================================================
select 
	dayname(`Order Date`) as Day_of_Week,
    round(sum(Sales),2) as Total_Sales
    
from orders
group by dayname(`Order Date`)
order by Total_Sales;

-- ============================================================
-- Query 46: Monthly Order Trend
-- Business Question:
-- How does the number of customer orders vary by month?
-- ============================================================
select 
	monthname(`Order Date`) as Order_Month,
    count(distinct `Order ID`) as Customer_Orders
from orders
group by month(`Order Date`),monthname(`Order Date`)
order by month(`Order Date`);

