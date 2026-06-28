-- ============================================================
		-- SECTION 5: SHIPPING ANALYSIS
-- ============================================================

-- ============================================================
-- Query 31: Ship Mode-wise Sales
-- Business Question:
-- Which shipping mode generates the highest sales revenue?
-- ============================================================
select 
	`Ship Mode`,
    round(sum(Sales),2) as 'Total_Sales'

from orders

group by `Ship Mode`
order by Total_Sales desc;


-- ============================================================
-- Query 32: Ship Mode-wise Profit
-- Business Question:
-- Which shipping mode generates the highest profit?
-- ============================================================
select 
	`Ship Mode`,
    round(sum(Profit),2) as 'Total_Profit'

from orders

group by `Ship Mode`
order by Total_Profit desc;

-- ============================================================
-- Query 33: Ship Mode-wise Orders
-- Business Question:
-- Which shipping mode is used for the highest number of customer orders?
-- ============================================================
select 
	`Ship Mode`,
    (count(Distinct `Order ID`)) as Total_Orders
from orders
group by `Ship Mode`
order by Total_Orders desc;


-- ============================================================
-- Query 34: Ship Mode-wise Quantity Sold
-- Business Question:
-- Which shipping mode delivers the highest quantity of products?
-- ============================================================
select 
	`Ship Mode`,
    sum(Quantity) as 'Total_Quantity'

from orders

group by `Ship Mode`
order by Total_Quantity desc;

-- ============================================================
-- Query 35: Average Shipping Time by Ship Mode
-- Business Question:
-- What is the average delivery time for each shipping mode?
-- ============================================================
select
`Ship Mode`,
round(
		avg(
			DATEDIFF(
					STR_TO_DATE(`Ship Date`, '%d-%m-%Y'),
					STR_TO_DATE(`Order Date`,'%d-%m-%Y')
                    )
			),
		2
	) as Average_shipping_time_days
from orders
group by `Ship Mode`
order by Average_shipping_time_days desc;

-- ============================================================
-- Query 36: Maximum Shipping Time by Ship Mode
-- Business Question:
-- Which shipping mode has the longest delivery time?
-- ============================================================
select
`Ship Mode`,
round(
		max(
			DATEDIFF(
					STR_TO_DATE(`Ship Date`, '%d-%m-%Y'),
					STR_TO_DATE(`Order Date`,'%d-%m-%Y')
                    )
			),
		2
	) as Average_shipping_time_days
from orders
group by `Ship Mode`
order by Average_shipping_time_days desc;

-- ============================================================
-- Query 37: Minimum Shipping Time by Ship Mode
-- Business Question:
-- Which shipping mode has the shortest delivery time?
-- ============================================================
select
`Ship Mode`,
round(
		min(
			DATEDIFF(
					STR_TO_DATE(`Ship Date`, '%d-%m-%Y'),
					STR_TO_DATE(`Order Date`,'%d-%m-%Y')
                    )
			),
		2
	) as Average_shipping_time_days
from orders
group by `Ship Mode`
order by Average_shipping_time_days desc;

-- ============================================================
-- Query 38: Average Sales per Order by Ship Mode
-- Business Question:
-- Which shipping mode has the highest average sales per order?
-- ============================================================
select 
	`Ship Mode`,
	round(AVG(Order_Sales),2) as Average_Sales_Per_Order
from 
(
	select 
		`Order ID`,
        `Ship Mode`,
        SUM(Sales) AS Order_Sales
	from orders
    GROUP BY `Order ID`,`Ship Mode`
) as OrderSummary

group by `Ship Mode`
order by Average_Sales_Per_Order desc ;
