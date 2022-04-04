-- selecting rows containing two or more values
select * from customers
where last_name in ('Bluth','Taylor','Armstrong');

-- selecting rows not containing two or more values
select * from customers
where first_name not in ('Katie','George','John');

select * from orders;

-- selecting rows/ data which lie between a range of values
-- on dates
select product_id, customer_id, order_time from orders
where order_time between '2017-01-01' and '2017-01-07';
-- on numbers
select product_id, customer_id, order_time from orders
where customer_id between 5 and 10;

select * from customers;
-- on strings
select * from customers
where last_name between 'A' and 'L';

-- like/ pattern matching starting with a letter
select * from customers
where last_name like 'W%';
-- having the letter in it
select * from customers
where last_name like '%o%';
-- ending with a particular letter
select * from customers
where last_name like '%r';


-- Underscore represents exactly one character presceding or aafter the specified letter
select * from customers
where first_name like '_o_';

-- LIKE with numbers
select * from products;
select * from products
where price like '3%';

-- ordering the data
select * from products;

select * from products
order by price asc;

select * from products
order by price desc;
-- ORDER BY ON STRINGS
select * from customers;
select * from customers
order by last_name asc;

select * from customers
order by last_name desc;
-- ORDER BY ON DATE
select * from orders;
select * from orders
where customer_id=1
order by order_time asc;


select name,price from products
where coffee_origin in('columbia','indonesia')
order by name asc;

select * from orders_time between '2017-02-01'and '2017-02-28'
and 


select coffee_origin from products;
-- to select distinct / unique values
select distinct coffee_origin from products;
-- to get all the customers who ordered in feb without distinct
select customer_id from orders 
where order_time between '2017-02-01' and '2017-02-28';
-- to get the distinct customers in feb
select distinct customer_id from orders 
where order_time between '2017-02-01' and '2017-02-28';
-- you will get duplicate customers because they have orderd different products
select distinct customer_id, product_id from orders 
where order_time between '2017-02-01' and '2017-02-28';

-- LIMIT
select * from customers;
select * from customers
limit 5;

select * from customers
limit 10 offset 2;

select * from customers
order by last_name
limit 10;

-- COLUMN NAME ALIAS
select * from products;
select name, price, coffee_origin from products;
-- changing the column names only in the reslut set not the database
select name as Coffee, price, coffee_origin as Country from products;


select distinct last_name from customers
order by last_name asc;

select * from orders
where order_time between '20170101'and'20170228'
and customer_id=1
order by order_time asc
limit 3;

select name,price as retail_price,coffee_origin from products;

