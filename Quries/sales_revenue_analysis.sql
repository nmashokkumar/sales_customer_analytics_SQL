
-- 1.How much revenue are we generating overall?

select 
    sum(quantity) as total_quantity_sold,
    sum(sales_amount) as total_revenue
from 
	sales;
    
-- 2.How is revenue trending over time?

select 
	year(order_date) as years,
	month(order_date) as months,
    sum(sales_amount) as total_revenue
from 
	sales
group by 
	years,months
order by 
	years,months;

-- 3.Which products and categories drive most revenue?

select 	
    p.product_name,
    p.category,
    sum(sales_amount) as revenue
from 
	sales s
join products p 
	ON s.product_key = p.product_key
group by p.product_name, p.category
order by revenue desc
limit 5;

-- 4. Are we selling more units or just charging higher prices?

select 
	year(order_date) as years,
    month(order_date) as months,
    sum(quantity) as total_quantity,
    round(sum(sales_amount)/sum(quantity),2) as average_price
from
	sales
group by years,months
order by years, months asc;

-- 5.Who are our highest-value customers (revenue-wise)?

select
	c.customer_key,
	concat(c.first_name, " ", c.last_name) as customer_name,
	sum(s.sales_amount) as total_revenue
from
	sales s
join customers c 
	ON s.customer_key = c.customer_key
group by customer_key
order by total_revenue desc
limit 10; 