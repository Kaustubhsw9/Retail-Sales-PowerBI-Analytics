-- ============================================================
		-- SECTION 7: DISCOUNT ANALYSIS
-- ============================================================

-- ============================================================
-- Query 47: Average Discount by Segment
-- Business Question:
-- Which customer segment receives the highest average discount?
-- ============================================================
use retail_sales_analysis;
select 
	`Segment`,
    round(avg(Discount),2) as Average_Discount
from orders
group by Segment
order by Average_Discount desc;
	
-- ============================================================
-- Query 48: Average Discount by State
-- Business Question:
-- Which states receive the highest average discount?
-- ============================================================

select 
	`State`,
    round(avg(Discount),2) as Average_Discount
from orders
group by State
order by Average_Discount desc;



-- ============================================================
-- Query 49: Average Discount by Ship Mode
-- Business Question:
-- Which shipping mode has the highest average discount?
-- ============================================================

select 
	`Ship Mode`,
    round(avg(Discount),2) as Average_Discount
from orders
group by `Ship Mode`
order by Average_Discount desc;



-- ============================================================
-- Query 50: Sales, Profit & Discount by Category
-- Business Question:
-- How do sales, profit, and discount vary across product categories?
-- ============================================================
select 
	Category,
    round(sum(Sales),2) as Total_Sales,
    round(sum(Profit),2) as Total_Profit,
    round(sum(Discount),2) as Total_Discount

from orders
group by Category;


-- ============================================================
-- Query 51: Products with High Discount but Negative Profit
-- Business Question:
-- Which products receive high discounts but still generate losses?
-- ============================================================
select 
	  `Product Name`,
       round(sum(Sales * Discount),2) as Total_Discount_Value,
       round(sum(Profit),2) as Net_Profit
	   
from orders
group by `Product Name`
Having sum(Profit)<0
order by Total_Discount_Value desc;


-- ============================================================
-- Query 52: Loss-making Orders
-- Business Question:
-- Which customer orders resulted in a financial loss?
-- ============================================================
select 
	`Order ID`,
    `Customer Name`,
	 round(sum(Profit),2) as Order_Profit
from orders
where Profit < 0
group by `Order ID`,`Customer Name`
order by Order_Profit asc;


-- ============================================================
-- Query 53: Discount Impact on Profit
-- Business Question:
-- How does discount affect business profitability?
-- ============================================================
SELECT 
    CASE 
        WHEN Discount = 0 THEN '0% (No Discount)'
        WHEN Discount > 0 AND Discount <= 0.2 THEN '1% - 20% Discount'
        WHEN Discount > 0.2 AND Discount <= 0.4 THEN '21% - 40% Discount'
        WHEN Discount > 0.4 AND Discount <= 0.6 THEN '41% - 60% Discount'
        ELSE 'Over 60% Discount'
    END AS Discount_Range,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percent
FROM 
    orders
GROUP BY 
    1 -- Tells 

