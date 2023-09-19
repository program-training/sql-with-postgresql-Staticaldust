//1
select category_id, product_name, product_id from products
where unit_price > 50
//2
select * from customers
where country = 'Germany'
//3
select * from orders
where customer_id = 'ALFKI'
//4
select sum (unit_price) as total_orders, customer_id from orders, order_details
group by customer_id
//5
select unit_price from products
order by unit_price desc limit 5
//6
select * from employees
where birth_date < '1960-01-01'
//7
select * from products
where units_in_stock = 0
//8
select avg (unit_price) from products
//9
select sum (unit_price * quantity) as duplicate, product_id from order_details
group by product_id
//10
select count (category_id) from products
//11
select * from products
where discontinued = 1

//12
select count (order_id) from orders
where extract (year from order_date) >= 1997
//13
select * from customers
where contact_title in ('Owner', 'CEO')
//14
select max(unit_price) from products
//15
select avg(2023 - (extract (year from birth_date))) from employees
//16
select * from customers
where phone like '%123%'
//17
select * from products
where units_in_stock < 10 and discontinued = 0
//18
select max(unit_price) as HighestPrice, min (unit_price) as LowestPrice from products
//19
select * from orders
where order_date >= '1997-05-05'
//20
select product_name, quantity_per_unit from products
//21
select product_id, product_name, unit_price from products
where unit_price > (
select avg (unit_price) from products)
//22
select count (employee_id), city from employees
group by city