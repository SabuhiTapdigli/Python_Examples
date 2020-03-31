select
    order_id,
    customer_id,
    status,
    salesman_id,
    order_date
from
    orders
order by customer_id asc;
SELECT
    *
FROM
    employees
order by employee_id asc;
    
select
    order_id,
    customer_id,
    status,
    salesman_id,
    order_date
from
    orders
inner join employees on customer_id=employee_id
order by order_id asc;

select 
    *
from
   table1;

select
    *
from
    table2;
    
select
    *
from
    table1
inner join table2 using(color);

select
    *
from
    table1
inner join table2 on table1.color=table2.color;

select
    *
from
    table1
left join table2 on table1.color=table2.color;

select
    order_id,
    name,
    status,
    first_name,
    last_name
from
    orders
left join employees on employee_id=salesman_id
left join customers on customer_id=customer_id;