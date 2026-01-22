-- Join Sales with Customer (Fact → Dimension)
-- Can I attach customer attributes to each sale without changing row counts?
select 
    s.order_number,
    s.order_date,
    s.sales_amount,
    s.quantity,
    c.customer_key,
    c.first_name,
    c.last_name,
    c.country
from 
	sales s
inner join customers c
    ON s.customer_key = c.customer_key
limit 10;

-- 2.Join Sales with Product (Fact → Dimension)
-- Can I attach product details to each sales line?

select 
    s.order_number,
    s.order_date,
    s.sales_amount,
    s.quantity,
    p.product_key,
    p.product_name,
    p.category,
    p.subcategory
from 
	sales s
inner join products p
    ON s.product_key = p.product_key
limit 10;

-- 3. Full Star Schema Join (Sales + Customer + Product)

select
    s.order_number,
    s.order_date,
    s.shipping_date,
    s.due_date,
    s.sales_amount,
    s.quantity,
    s.price,
    c.customer_key,
    c.first_name,
    c.last_name,
    c.country,
    c.gender,
    p.product_key,
    p.product_name,
    p.category,
    p.subcategory,
    p.product_line
from 
	sales s
inner join  customers c
    ON s.customer_key = c.customer_key
inner join products p
    ON s.product_key = p.product_key;
    
    
SELECT
    (SELECT COUNT(*) FROM sales) AS sales_rows,
    (SELECT COUNT(*) 
     FROM sales s
     JOIN customers c ON s.customer_key = c.customer_key
     JOIN products p ON s.product_key = p.product_key) AS joined_rows;

