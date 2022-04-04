use coffee_str;
select * from products;
select * from orders;
select * from customers;

-- JOINS
-- INNER JOIN
-- product name field from products table and order_time from the orders table
/*select <table1>.column,<table2>.column from <table1>
inner join <table2> on <table1>.column=<table2>.column;
inner join <table3> on <table3>.colummn=<table2>.column */

select products.name,orders.order_time from orders
inner join products on products.id=orders.product_id;

select products.name,orders.order_time from orders
inner join products on products.id=orders.product_id
where products.name='Filter'
and orders.order_time between '2017-01-14' and '2017-01-31'
order by orders.order_time;


select p.name,p.price,o.order_time from orders o
join products p on p.id=o.product_id
order by o.order_time asc;

select p.name,p.price,o.order_time from orders o
join products p on p.id=o.product_id
where p.id=5
order by order_time asc;

select * from orders;

update orders
set customer_id=null
where id=1;
-- left join
-- Orders LEFT JOIN ON customers
select o.id,c.last_name,c.phone_number,o.order_time from orders o
left join customers c on o.customer_id=c.id
order by o.order_time
limit 10;

-- by inter changining the table-1 and table-2 positions
select o.id,c.last_name,c.phone_number,o.order_time from customers c
left join orders o on c.id=o.customer_id
order by o.order_time
limit 10;

-- RIGHT JOIN
-- Customers RIGHT JOIN on Orders
select o.id,c.last_name,c.phone_number,o.order_time from customers c
right join orders o on c.id=o.customer_id
order by o.order_time
limit 10;

select o.id,c.last_name,c.phone_number,o.order_time from  orders o
right join customers c on o.customer_id=c.id
order by o.order_time
limit 10;

update orders
set customer_id=1
where id=1;

-- all the tables join
select * from orders;
select * from customers;
select * from products;


select p.name,p.price,c.first_name,c.last_name,o.order_time from products p
join orders o on p.id=o.product_id
join customers c on o.customer_id=c.id;

select p.name,p.price,c.first_name,c.last_name,o.order_time from products p
join orders o on p.id=o.product_id
join customers c on o.customer_id=c.id
where c.last_name='Martin'
order by o.order_time;