SELECT
    order_id,
    customer_id,
    status,
    order_date
from
    orders
where 
    (status='Pending' or status='Canceled') and extract(year from order_date)=2017 and extract(month from order_date)=2
order by
    order_date Desc;
    
select
    order_id,
    customer_id,
    status,
    salesman_id,
    order_date
from
    orders
where 
    salesman_id=60 or salesman_id=61 or salesman_id=62
order by
    order_date desc
    
select
    order_id,
    customer_id,
    status,
    salesman_id,
    order_date
from
    orders
where 
    salesman_id in(61,62,63)
order by
    order_date desc

    
