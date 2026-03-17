SELECT * FROM denabank.sales_records;

-- Query 1 — Total Revenue from Electronics
select sum(unit_price * quantity) as total_revenue
from sales_records
where product_category = 'Electronics';


-- Query 2 — Order Count per Customer
select customer_name, COUNT(order_id) as total_orders
from sales_records
group by customer_name
order by total_ordres DESC;

-- Query 3 — Average Order Value by Region (North & West)
SELECT shipping_region,  avg(unit_price * quantity) as avg_order_value
from sales_records
where shipping_region in ('North', 'West')
group by shipping_region
order by shipping_region asc;

--Query 4 — Total Quantity Sold per Category (Jan 15–21, 2024)
SELECT product_category, sum(quantity) AS total_quantity_sold
FROM sales_records
WHERE order_date BETWEEN '2024-01-15' AND '2024-01-21'
GROUP BY product_category
ORDER BY total_quantity_sold DESC;


-- Query 5 — Apparel Statistics
SELECT 
    AVG(quantity) AS avg_items_per_order,
    MAX(unit_price) AS most_expensive_item,
    MIN(unit_price) AS least_expensive_item
FROM sales_records
WHERE product_category = 'Apparel';

-- Query 6 — Transactions by Payment Method (Shipped & Delivered)
SELECT payment_method, count('order_id') AS total_transactions
FROM sales_records
WHERE order_status IN ('Shipped', 'Delivered') 
GROUP BY payment_method
ORDER BY payment_method ASC;

-- Top 3 Spenders on Books
SELECT customer_name, SUM(unit_price * quantity) AS total_spending
FROM sales_records
WHERE product_category = 'Books'
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 3;

-- Query 8 — Revenue by Category for Premium Items (Price > 100)
SELECT product_category, SUM(unit_price * quantity ) AS total_revenue
FROM sales_records
WHERE unit_price > 100
GROUP BY product_category
ORDER BY total_revenue DESC;

--Query 9 — Revenue from East Region via Credit Card
SELECT sum(unit_price * quantity) AS total_revenue
FROM sales_records
WHERE shipping_region  = 'East' AND payment_method = 'Credit Card';

-- Query 10 — Daily Orders and Items Sold (From Jan 24, 2024)
SELECT order_date, 
	COUNT(order_id) AS total_orders,
	SUM(quantity) AS total_items_sold
FROM sales_records
WHERE order_date >= '2024-01-24'
GROUP BY order_date
ORDER BY order_date ASC;

-- Query 11 — Count of Distinct Order Statuses 
select 
count distinct from order_status AS unique_order_statuses
from sales_records;














