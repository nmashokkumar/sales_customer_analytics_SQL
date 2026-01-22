
-- 1.Who are our most valuable customers over time (not just total)?
with dataset_end as (
select
	max(order_date) as last_date
from
	sales
)
select 
	c.customer_key,
	concat(c.first_name, " ", c.last_name) as customer_name,
    year(s.order_date) as years,
    datediff(max(de.last_date) ,max(s.order_date)) as recency,
    sum(sales_amount) as monetary,
    count(s.customer_key) as frequency
from 
	customers c
join sales s
	ON c.customer_key = s.customer_key
cross join dataset_end de
group by c.customer_key, customer_name, years
order by recency asc, frequency desc, monetary desc;


	