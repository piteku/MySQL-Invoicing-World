use sql_store;
-- query 1 continued
select * from customers
where customer_id=1
order by first_name;
-- query 2
Select last_name, first_name, points, points +10 
from customers;
-- task 1
select last_name, first_name, points, (points +10)*100 as discount_factor 
from customers;
-- task 2
select name, unit_price, (unit_price *1.1) as new_price from products;

-- task 3
select * from customers
Where birth_date > '1990-01-01';
-- task 4 use sql inventory
use sql_inventory;
select name, quantity_in_stock from products
order by quantity_in_stock desc
limit 1;
-- task 5
-- use inventory sql_inventory
select * from products;
select name, unit_price from products
order by unit_price desc
limit 1;
use sql_store;
select * from customers;
-- task 6
-- use sql_store
select first_name, last_name, address, birth_date from customers
order by birth_date desc
limit 1;
