show databases;

use data1;

select * from customers;
select * from orders;
select * from order_items;




#1 
select 
    order_id,
    order_date,
    EXTRACT(month from order_date) as order_month
from orders;

#2
select 
    order_id,
    order_date,
    MONTHNAME(order_date) AS month_name
from orders;


#3
select 
    EXTRACT(year from order_date) as order_year,
    EXTRACT(month from order_date) as order_month,
    COUNT(*) as total_orders
from orders
group by  order_year, order_month
order by  order_year, order_month;


#4
select 
    EXTRACT(year from order_date) as order_year,
    EXTRACT(month from order_date) as order_month,
    sum(total_price) as total_price,
    count(*) as total_price
from orders
group by  order_year, order_month
order by  order_year, order_month;


#5
 select 
	COUNT(distinct order_id) as total_orders
from orders
order by  total_orders;


#6
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS order_date,
    SUM(total_price) AS total_price,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY order_date
ORDER BY order_date;


#7
SELECT 
    customers.first_name,
    customers.last_name,
    orders.order_date,
    orders.total_price
FROM
    customers
        INNER JOIN
    orders ON orders.customer_id = customers.customer_id;
    
    
#8
select 
order_items.product_id,
order_items.quantity,
orders.total_price
from 
order_items
left join
orders on order_items.order_id = orders.order_id;


#9
select sum(total_price) from orders;

#10
select * from customers where First_Name like "J%";











    


















