SELECT 
    NAME
FROM
customers
Order BY
    NAME ASC;

SELECT CREDIT_LIMIT FROM CUSTOMERS
ORDER BY credit_limit DESC;

Select 
    country_id,
    city,
    state
from 
    locations
order by 
    state asc nulls first;

Select
    country_id,
    city,
    state
from
    locations
order by
    state
asc Nulls last;

select
    customer_id,
    name
From
customers
order by 
    upper(name);

select 
    order_id,
    customer_id,
    status,
    order_date
from
    orders
order by
    order_date desc;