select
    order_id,
    customer_id,
    status,
    order_date
from
    orders
where status='Pending' and customer_id=2
order by
    order_date;

select
    order_id,
    customer_id,
    status,
    order_date
from
    orders
where
    status='Shipped' and salesman_id=60 and extract(month from order_date)=2;

SELECT
    order_id,
    customer_id,
    status,
    salesman_id,
    order_date
From
    orders
where
    (Status='Canceled' or status='Pending') and customer_id=44
order by
    order_date