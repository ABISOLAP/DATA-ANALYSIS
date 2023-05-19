
--Select all from the sales data to view
select * from SalesTable;

--DATA ANALYSIS USING SALES DATASET
SELECT count(*) AS Total_order FROM SalesTable;

--how many segment
SELECT  distinct Segment FROM SalesTable group by Segment ;

--how many Category
SELECT  distinct Category FROM SalesTable group by Category;

--What is the total ordered quantity
SELECT sum(quantity) as Total_quantity FROM SalesTable;

--What is the Total sales by segment
SELECT round(sum(Sales),0) as Total_sales, Segment FROM SalesTable GROUP BY Segment;

--What is the total sales
SELECT round(sum(Sales),0) as Total_sales FROM SalesTable

--Revenue from each Ship mode
SELECT round(sum(quantity * Sales), 0) as Revenue, SalesTable.[Ship Mode] FROM SalesTable 
group by SalesTable.[Ship Mode] order by revenue desc;

--What is the total profit
SELECT round(sum(profit),0) as Total_profit FROM SalesTable;

--What is the total Discount 
SELECT round(sum(Discount),0) as Total_Discount FROM SalesTable;


--Revenue from each segment
SELECT round(sum(quantity * Sales), 0) as Revenue, Segment FROM SalesTable group by Segment
order by revenue desc;

--Sales by Category
SELECT round(sum(Sales),0) as Total_sales, Category FROM SalesTable GROUP BY Category
order by Total_sales desc; 




