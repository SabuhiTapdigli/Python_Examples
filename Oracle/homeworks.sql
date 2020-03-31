select
    *
from
    orders
order by order_id;
select
    *
from
    order_items
order by
    order_id;

select
    *
from
    products
order by product_id;
--1.each client has how much orders
select
    customer_id,
    count(order_id)
from
    orders
group by customer_id
order by customer_id;
--2.each client has how much product

select
    customer_id,
    count(product_id)
from
    orders
inner join order_items using(order_id)
group by customer_id
order by customer_id;

--3.how much shiped order
select
    status,
    count(status)
from
    orders
where status='Shipped'
group by status;

--4.how much orders in 2017-2018
select
   extract(year from order_date) year,
   sum(order_id)
from orders
where extract(year from order_date) in (2016,2017)
GROUP by 
    extract(year from order_date);
--5.Her employee nin nece canceli olub?    
select
  customer_id,
  count(customer_id),
  'canceled'
from
    orders
where status='Canceled'
group by customer_id
order by customer_id;
--6.her customerin 2016-2017 ci ilde nece orderi olub
select
    extract(year from order_date) years,
    customer_id,
    count(order_id)
from
    orders
where extract(year from order_date) in(2016,2017)
group by customer_id,extract(year from order_date)
order by customer_id;

--7.credit limit <1000
select
    *
from
    customers
where credit_limit <1000;

--8.find max of credit
select
    customer_id,
    credit_limit
from
    customers
where customer_id=173
order by credit_limit desc; 

select
    max(credit_limit)
from
    customers;

select
    max(credit_limit)
from
    customers;
    
select
    *
from
    customers
where
       credit_limit=(
       select
            max(credit_limit)
        from
        customers);
        
--9. 10 customer yaradin null data ile

--values(320,'se',null,null,null);
--note name null yaza bilmediyimiz ucun not null u null a deyismek lazimdir
--delete
--from
--    customers
--where customer_id=320

Alter table customers modify name null;

insert into customers(customer_id,name,address,website,credit_limit)
values(320,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(321,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(322,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(323,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(324,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(325,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(326,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(327,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(328,null,null,null,null);
insert into customers(customer_id,name,address,website,credit_limit)
values(329,null,null,null,null);

select
    *
from
    customers
where name is not null
order by customer_id;

--10. S% herfi ile basdliyan

SELECT
    *
FROM
    customers
where name like 'S%';
--11. S% herfi ile biten

SELECT
    *
FROM
    customers
where name like '%s';

--12. %% between
SELECT
    *
FROM
    customers
where name like '%roc%';

--13. find average credit of customers
select
    avg(credit_limit)
from
    customers;
--14. select distict customers
select
    distinct
    *
from
    customers;
--15. alias
select
    customer_id as customer,
    name as fullname
from customers;
--16. today-order_date
select
    order_id,
    customer_id
    status,
    salesman_id,
    order_date,
    order_date-trunc(sysdate) as calculated_time
from
    orders;
    
select
    order_id,
    customer_id
    status,
    salesman_id,
    order_date,
    extract(day from order_date)-To_char(sysdate,'DD') as calculated_time
from
    orders;
