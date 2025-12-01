# Pizza-Sales-Analysis


# Pizza-Sales-Analysis

# 🍕 Pizza Sales Report Project  

## 📌 Project Overview  
This project focuses on performing data-driven analysis on a Pizza Sales dataset using SQL for backend data exploration and Power BI for visualization.
The purpose was to turn raw transactional sales data into actionable insights that help understand customer purchasing patterns, product performance, and revenue trends.

Using SQL, the dataset was cleaned, transformed, and analyzed to calculate key performance indicators (KPIs) such as total revenue, total orders, and average order value.
Then, with Power BI, these results were presented in an interactive dashboard that allows users to easily explore:

Which pizza categories and sizes generate the most sales

The busiest sales days and months

The top-performing pizzas by revenue and order count

The least popular items that may need to be discontinued or improved

Ultimately, this project demonstrates how integrating SQL for data analysis and Power BI for visualization can deliver valuable business intelligence insights — helping decision-makers optimize menu offerings, pricing strategies, and marketing efforts.
---

## 🎯 Objectives  
- Clean and prepare raw sales data using SQL.  
- Derive business KPIs such as **Total Revenue, Total Orders, and Avg Order Value**.  
- Visualize sales performance across **pizza categories, sizes, and time periods**.  
- Identify **top and bottom sellers** by revenue, quantity, and order count.  

---

## 🧰 Tools & Technologies  

| Tool / Technology | Purpose |
|--------------------|----------|
| **SQL Server** | Data cleaning, transformation & analysis |
| **Power BI** | Dashboard building & visualization |
| **DAX (Data Analysis Expressions)** | KPI calculations & measures |
| **Excel** | Initial data inspection & upload |
| **GitHub** | Version control & project showcase |

---

## 🧮 SQL Analysis Summary  

Key SQL queries were written to extract insights such as:  

```sql
-- 1️⃣ Total Revenue
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

-- 2️⃣ Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales;

-- 3️⃣ Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;

-- 4️⃣ Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value FROM pizza_sales;

-- 5️⃣ Daily & Monthly Trends
SELECT DATENAME(DW, order_date) AS Order_Day, SUM(total_price) AS Revenue
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);

SELECT DATENAME(MONTH, order_date) AS Month_Name, SUM(total_price) AS Revenue
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date);

-- 6️⃣ Sales by Category & Size
SELECT pizza_category, SUM(total_price) AS Revenue FROM pizza_sales GROUP BY pizza_category;
SELECT pizza_size, SUM(total_price) AS Revenue FROM pizza_sales GROUP BY pizza_size;

-- 7️⃣ Top & Bottom 5 Pizzas
SELECT TOP 5 pizza_name, SUM(total_price) AS Revenue FROM pizza_sales GROUP BY pizza_name ORDER BY Revenue DESC;
SELECT TOP 5 pizza_name, SUM(total_price) AS Revenue FROM pizza_sales GROUP BY pizza_name ORDER BY Revenue ASC;
```

---

## 📊 Power BI Dashboard  

### **Page 1 – Home Overview**  
**KPIs & Visuals:**  
- Total Revenue: ₹817.86K  
- Avg Order Value: ₹38.31  
- Total Pizza Sold: 49,574  
- Total Orders: 21,350  
- Avg Pizza per Order: 2.32  
- Daily & Monthly Trends of Orders  
- % Sales by Pizza Category and Size  
- Top categories: **Classic & Large Size Pizzas**  
- Busiest Days: **Weekends (Friday & Saturday)**  
- Busiest Months: **July and January**

---

### **Page 2 – Best/Worst Sellers Analysis**  
**KPIs & Visuals:**  
- Top 5 and Bottom 5 Pizzas by **Revenue, Quantity, and Total Orders**  
- **Best Seller:** Thai Chicken & Classic Deluxe  
- **Worst Seller:** Brie Carre Pizza  
- Clear ranking visuals with revenue and quantity bars  

---

## 🧠 DAX Measures Used  

```DAX
-- Total Revenue
Total Revenue = SUM(pizza_sales[total_price])

-- Total Orders
Total Orders = DISTINCTCOUNT(pizza_sales[order_id])

-- Total Pizza Sold
Total Pizza Sold = SUM(pizza_sales[quantity])

-- Avg Order Value
Avg Order Value = [Total Revenue] / [Total Orders]

-- Avg Pizza Per Order
Avg Pizza Per Order = [Total Pizza Sold] / [Total Orders]
```

---

## 📈 Key Insights  

- **Classic** pizzas contribute the highest revenue and orders.  
- **Large size pizzas** make up nearly **45% of total sales**.  
- **Weekends (Friday & Saturday)** have the highest order volume.  
- **July and January** are the busiest sales months.  
- **Thai Chicken Pizza** generated the highest revenue.  
- **Brie Carre Pizza** had the lowest performance across all metrics.  

---



---

## 🚀 Conclusion  

This project showcases the power of SQL + Power BI integration in transforming raw data into actionable business insights.
By combining SQL’s data querying and analytical capabilities with Power BI’s dynamic visualization tools, it delivers a clear view of key performance metrics such as revenue trends, product performance, and customer behavior.

The analysis helps businesses quickly identify top-performing pizzas, track sales growth patterns, and understand key revenue drivers through interactive dashboards.
Overall, this project highlights how data-driven decision-making using SQL and Power BI can enhance operational efficiency, strategic planning, and business profitability.
---

ScreenShots 
https://screenrec.com/share/fmvzxWI02i
https://screenrec.com/share/zDZhpTFQdw
Screenrecording
https://screenrec.com/share/de2kjBGT3U

👩‍💻 **Created by:** [Nuri Naz](https://www.linkedin.com/in/nuri-naz)  
