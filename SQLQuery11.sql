select * from pizza_sales;

select sum(total_price) as Total_reveneau from pizza_sales;

select sum(total_price)/count(distinct order_id) as Avg_order_value from pizza_sales;

select sum(quantity) as Total_pizza_sold from pizza_sales;

select count(distinct order_id) as Total_order from pizza_sales;

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_pizza_per_order from pizza_sales;
select DATENAME(DW,order_date) as order_day ,COUNT(distinct order_id) as Total_order from pizza_sales
group by DATENAME(DW,order_date)

select DATENAME(MONTH,order_date) as Month_name,COUNT(distinct order_id) as Total_order from pizza_sales
group by DATENAME(MONTH,order_date)

order by DATENAME(MONTH,order_date) desc;
 
select pizza_category,SUM(total_price) as Total_sales,sum(total_price) * 100/ (select sum(total_price)from pizza_sales) as PCT
from pizza_sales group by pizza_category ;

select pizza_category,SUM(total_price) as Total_sales,sum(total_price) * 100/ (select sum(total_price)from pizza_sales where Month(order_date)=1 ) as PCT
from pizza_sales where Month(order_date)=1 group by pizza_category ;

select pizza_size,cast(SUM(total_price) as decimal(10,2)) as Total_sales ,cast(sum(total_price) * 100/ (select sum(total_price)from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales where DATEPART(quarter,order_date)=1 group by pizza_size 
order by PCT  desc;

select top 5 pizza_name,sum(total_price) as Total_revenue from pizza_sales group by pizza_name order by Total_revenue desc;

select top 5 pizza_name ,sum(total_price) as Total_revenue from pizza_sales  group by pizza_name order by Total_revenue asc;

select top 5 pizza_name,sum(quantity) as Total_quantity from pizza_sales group by pizza_name order by Total_quantity desc;
select top 5 pizza_name ,sum(quantity) as Total_quantity from pizza_sales  group by pizza_name order by Total_quantity asc;
select top 5 pizza_name,count(distinct order_id) as Total_order from pizza_sales group by pizza_name order by Total_order desc;
select top 5 pizza_name,count(distinct order_id) as Total_order from pizza_sales group by pizza_name order by Total_order asc;


SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'

GROUP BY pizza_name
ORDER BY Total_Orders ASC

