-- ============================================================
				--section2: Customer Analysis
-- ============================================================

-- ============================================================
-- Query 7: Sales, Profit & Quantity by Segment
-- Business Question:
-- Which customer segment contributes the highest sales, profit, and quantity sold?
-- ============================================================
select
    `Segment`,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
from orders
group by `Segment`
order by Total_Sales DESC;


-- ============================================================
-- Query 8: Customer Count by Segment
-- Business Question:
-- Which customer segment has the highest number of unique customers?
-- ============================================================
select 
	`Segment`,
    COUNT(DISTINCT `Customer ID`) as Total_Customers
    
FROM orders
group by `Segment`
order by Total_Customers desc;

-- ============================================================
-- Query 9: Average Order Value by Segment
-- Business Question:
-- Which customer segment has the highest average order value?
-- ============================================================
select 
    `Segment`,
    round(AVG(Sales),2) as Avg_Order_Value
FROM orders
group by `Segment`
order by Avg_Order_Value desc;


-- ============================================================
-- Query 10: Top 10 Customers by Sales
-- Business Question:
-- Which customers generate the highest sales revenue?
-- ============================================================
select 
	`Customer Name`,
    ROUND(SUM(Sales),2) as Total_Sales
    
FROM orders
group by `Customer Name`
order By Total_Sales desc
limit 10;


-- ============================================================
-- Query 11: Top 10 Customers by Profit
-- Business Question:
-- Which customers generate the highest profit?
-- ============================================================
select 
    `Customer Name`,
    ROUND(SUM(Profit), 2) as Total_Profit
FROM orders
group by `Customer Name`
order by Total_Profit desc
limit 10;

-- ============================================================
-- Query 12: Customers with Highest Number of Orders
-- Business Question:
-- Which customers place the highest number of orders?
-- ============================================================
select 
	`Customer Name`,
    count(distinct `Order ID`) as Total_Orders
    
FROM orders
group by `Customer Name`
order by Total_Orders DESC
limit 10;

-- ============================================================
-- Query 13: Top 10 Customers by Quantity Purchased
-- Business Question:
-- Which customers purchase the highest quantity of products?
-- ============================================================
select 
	`Customer Name`,
	sum(Quantity) as Total_Quantity
FROM orders
group by `Customer Name`
order by Total_Quantity DESC
limit 10;
