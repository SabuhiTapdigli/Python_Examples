Select
    first_name,
    last_name
From
    contacts
order by
    first_name;

Select DISTINCT
    first_name
from
    contacts
order by
    first_name;

Select DISTINCT 
    product_id,quantity
from
    order_items
order by
    product_id;

Select DISTINCT
    state
from
    locations
order by
    state NULLS FIRST;
    
Select state
from
    locations
order by
    state NULLS FIRST;
    
