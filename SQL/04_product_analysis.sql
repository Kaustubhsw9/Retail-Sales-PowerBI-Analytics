-- ============================================================
				-- section 4: Product  Analysis
-- =============================================================

--===============================================================
	-- Quesry 20: Category-wise Sales
	-- Business Question:
	-- Which product category generates the highest sales revenue?
--================================================================
select  
`Category`,
ROUND(sum(sales),2) as Total_Sales

from orders
group by `Category`
order by Total_Sales desc;

-- ===============================================================
	-- Quesry 21: Category-wise Profit
	-- Business Question:
	-- Which product category generates the highest profit?
-- ================================================================
select 	
	`Category`,
    round(sum(Profit),2) as Total_Profit
    
FROM orders
group by `Category`
order by Total_profit desc;

-- ===============================================================
	-- Quesry 22: Sub-Category-wise Sales
	-- Business Question:
	-- Which product sub-category genrates the highest sales revenue?
-- ================================================================
select  
	`Sub-Category`,
	ROUND(sum(Sales),2) as Total_Sales

from orders
group by `Sub-Category`
order by Total_Sales desc;

-- ===============================================================
	-- Quesry 23: Sub-Category-wise Profit
	-- Business Question:
	-- Which product sub-category genrates the highest Profit?
-- ================================================================
select 	
	`Sub-Category`,
    round(sum(Profit),2) as Total_Profit
    
FROM orders
group by `Sub-Category`
order by Total_profit desc;

-- ===============================================================
	-- Quesry 24: Top 10 Products by Sales
	-- Business Question:
	-- Which product generate the highest sales revenue?
-- ================================================================
select
`Product Name`,
round(sum(Sales),2) as Total_Sales

FROM orders
group by `Product Name`
order by Total_Sales desc
limit 10;


-- ===============================================================
	-- Quesry 25: Top 10 Products by Profit
	-- Business Question:
	-- Which product generate the highest profit?
-- ================================================================
select
`Product Name`,
round(sum(Profit),2) as Total_Profit

FROM orders
group by `Product Name`
order by Total_Profit desc
limit 10;

-- ===============================================================
	-- Quesry 26: Top 10 Loss-Making Products
	-- Business Question:
	-- Which product generate the highest losses?
-- ================================================================
select 
	`Product Name`,
    round(sum(Profit),2) as Total_Loss
from orders
group by `Product Name`
Having sum(Profit)<0
order by Total_Loss ASC
limit 10;

-- ===============================================================
	-- Quesry 27: Category-wise Quantity Sold
	-- Business Question:
	-- Which product category has the highest quantity sold?
-- ================================================================
select 
	`Category`,
    sum(Quantity) as Total_Quantity
    
from orders
group by `Category`
order by Total_Quantity desc

-- ===============================================================
	-- Quesry 28: Sub-Category-wise Quantity Sold
	-- Business Question:
	-- Which product sub-category has the highest quantity sold?
-- ===============================================================
select 
	`Sub-Category`,
    sum(Quantity) as Total_Quantity
    
from orders
group by `Sub-Category`
order by Total_Quantity desc

-- =================================================================
	-- Quesry 29: Average Disocunt by category
	-- Business Question:
	-- Which product category receives the highest average discount?
-- ==================================================================
select 
	`Category`,
    round(avg(Discount),2) as Average_Discount
    
from orders
group by Category
order by Average_Discount desc

-- =====================================================================
	-- Query 30: Average Discount by Sub-Category
	-- Business Question:
	-- Which product sub-category receives the highest average discount?
-- ======================================================================
select 
	`Sub-Category`,
    round(avg(Discount),2) as Average_Discount
    
from orders
group by `Sub-Category`
order by Average_Discount desc

