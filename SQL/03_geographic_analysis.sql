-- =============================================================
				-- section 3: Geographic  Analysis
-- =============================================================

-- ================================================================
-- Query 14:  country-wise Sales & Profit
-- Business Question:
--Which Country generates the highest sales and profit?
-- ================================================================	
select 
    `Country`,
    ROUND(sum(Sales),2) as Total_Sales,
    ROUND(sum(Profit),2) as Total_Profit
FROM orders
group by `Country` 
order by Total_Sales desc;


-- ================================================================
-- Query 15:  State-wise Sales
-- Business Question:
-- Which states generate the highest sales revenue?
-- ================================================================	
select 
    `State`,
    ROUND(sum(sales),2) as Total_sales
FROM orders
group by `State`
order by Total_Sales desc;

-- =============================================================
-- Query 16: State-wise Profit
-- Business Question:
-- Which states generate the highest profit?
-- =============================================================
select 
    `state`,
    ROUND(sum(Profit),2) as Total_Profit
FROM orders
group by `State`
order by Total_Profit desc;

-- =============================================================
-- Query 17: Top 10 Cities by Sales
-- Business Question:
-- Which cities generate the highest sales revenue?
-- =============================================================
select 
    `City`,
    ROUND(sum(Sales),2) as Total_Sales

FROM orders
group by `City`
order by Total_Sales desc
limit 10;

-- ==============================================================
-- Query 18: Top 10 Cities by Profit
-- Business Question:
-- which cities generate the highest profit?
-- ==============================================================
select
	`City`,
	ROUND(SUM(Profit),2) as Total_Profit
FROM orders
group by `City`
order by Total_Profit desc
limit 10;

--===============================================================
	-- Quesry 19: Total Orders by State
	-- Business Question:
	-- Which states have the highest number of orders?
--================================================================
select 
	`State`,
	COUNT(DISTINCT `Order ID`) as Total_Orders
FROM orders
group by `State`
order by Total_Orders desc;
