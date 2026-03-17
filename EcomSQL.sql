SELECT * FROM denabank.sales_records;

-- 1 
select sum(unit_price * quantity) as total_revenue
from sales_records
where product_category = 'Electronics';


-- 2
select customer_name, COUNT(order_id) as total_orders
from sales_records
group by customer_name
order by total_ordres DESC;

-- 3
SELECT shipping_region,  avg(unit_price * quantity) as avg_order_value
from sales_records
where shipping_region in ('North', 'West')
group by shipping_region
order by shipping_region asc;

-- 4
SELECT product_category, sum(quantity) AS total_quantity_sold
FROM sales_records
WHERE order_date BETWEEN '2024-01-15' AND '2024-01-21'
GROUP BY product_category
ORDER BY total_quantity_sold DESC;


-- 5
SELECT 
    AVG(quantity) AS avg_items_per_order,
    MAX(unit_price) AS most_expensive_item,
    MIN(unit_price) AS least_expensive_item
FROM sales_records
WHERE product_category = 'Apparel';

-- 6
SELECT payment_method, count('order_id') AS total_transactions
FROM sales_records
WHERE order_status IN ('Shipped', 'Delivered') 
GROUP BY payment_method
ORDER BY payment_method ASC;

-- 7
SELECT customer_name, SUM(unit_price * quantity) AS total_spending
FROM sales_records
WHERE product_category = 'Books'
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 3;

-- 8
SELECT product_category, SUM(unit_price * quantity ) AS total_revenue
FROM sales_records
WHERE unit_price > 100
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 9
SELECT sum(unit_price * quantity) AS total_revenue
FROM sales_records
WHERE shipping_region  = 'East' AND payment_method = 'Credit Card';

-- 10
SELECT order_date, 
	COUNT(order_id) AS total_orders,
	SUM(quantity) AS total_items_sold
FROM sales_records
WHERE order_date >= '2024-01-24'
GROUP BY order_date
ORDER BY order_date ASC;

-- 11
select 
count distinct from order_status AS unique_order_statuses
from sales_records;














