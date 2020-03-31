SELECT  
    *
from
    orders
where
    salesman_id is Null
order by 
    order_date desc;
select
    *
from
    orders
where salesman_id is not null;