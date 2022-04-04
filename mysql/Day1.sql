-- entering a row of data
insert into products(name,price,coffee_origin)
values('Espresso',2.50,'Brazil');
 
-- entering multiple rows of data

insert into products(name,price,coffee_origin)
values('Macchiato',3.00,'Brazil'),('Cappuccino',3.50,'Cost Rica'); 

insert into products(name,price,coffee_origin)
values('Latte',3.50,'Indonesia'),('Americano',3.00,'Brazil'),('Flat White',3.50,'Indonesia'),('Filter',3.00,'India');
select * from products;
-- updating the data 

update <table_name>
set <column_name>='value'
where <column_name>='value';

update products
set coffee_origin='Sri Lanka'
where name='Filter';

update products
set coffee_origin='Sri Lanka'
where id=7;

set sql_safe_updates=0;

-- changing the price and coffee_origin of Americano
update products
set price=3.25,coffee_origin='Ethiopia'
where name='Americano';

-- changing multiple rows of data 

update products
set coffee_origin='Columbia'
where coffee_origin='Brazil';
