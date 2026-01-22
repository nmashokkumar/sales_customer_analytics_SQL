-- Run this script once

-- 1.Create seperate database for this project:
CREATE DATABASE if not exists sales_db;
USE sales_db;

-- 2. Drop if the table is already exists and create a new table:
-- 2.1 Create new table customer and set the Primary key as `customer_key`
drop table if exists customers;
Create table if not exists customers(
	customer_key Int primary key,
    customer_id int ,
	customer_number Varchar(20),
    first_name varchar(20),
    last_name varchar(20),
    country varchar(25),
    marital_status varchar(10),
    gender varchar (8),
    birth_date date,
    create_date date
);

-- 2.2. Create a new products table and set Primary key as `product_key`
Drop table if exists products;
Create table if not exists products(
	product_key int primary key,
    product_id int ,
    product_number varchar(15),
    product_name varchar(50),
    category_id varchar(5),
    category varchar(20),
    subcategory varchar(25),
    maintenance varchar(3),
    cost int,
    product_line varchar(15),
    start_date date
	);
    
-- 2.3. Create a sales tables and assing the constraints.
DROP table if exists sales;
Create table if not exists sales(
	order_number varchar(20),
    product_key int,
    customer_key int,
    order_date date not null,
    shipping_date date,
    due_date date,
    sales_amount int not null,
    quantity int,
    price int,
    Foreign key(customer_key) references customers(customer_key),
    Foreign key(product_key) references products(product_key)
);

-- Need to disable the foreign key for better data insertion
Set foreign_key_checks=0;
-- Enable local previlage to load data without error
SET GLOBAL local_infile = 1;


-- 4.Insert values in customers:

Load data local infile 'D:/Sql_projects/Sales&CustomerAnalytics/Data/dim_customers.csv'
into table customers
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
	customer_key,
    customer_id,
	customer_number,
    first_name,
    last_name,
    country,
    marital_status,
    gender,
    @birth_date,
    @create_date
)
Set 
birth_date = str_to_date(@birth_date, '%d-%m-%Y'),
create_date = str_to_date(@create_date, '%d-%m-%Y');


-- 5. Insert values in products

Load data local infile 'D:/Sql_projects/Sales&CustomerAnalytics/Data/dim_products.csv'
into table products
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
	product_key,
    product_id,
    product_number,
    product_name,
    category_id,
    category,
    subcategory,
    maintenance,
    cost,
    product_line,
    @start_date 
)
Set start_date = str_to_date(@start_date, '%d-%m-%Y');


-- 6. Insert values for sales table

Load data local infile 'D:/Sql_projects/Sales&CustomerAnalytics/Data/fact_sales.csv'
into table sales
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(
	order_number,
    product_key,
    customer_key,
    @order_date,
    @shipping_date,
    @due_date,
    sales_amount,
    quantity,
    price
)
set 
order_date = str_to_date(@order_date, '%d-%m-%Y'),
shipping_date = str_to_date(@shipping_date, '%d-%m-%Y'),
due_date = str_to_date(@due_date, '%d-%m-%Y');

-- Enable the foregin key 
Set foreign_key_checks=0;



