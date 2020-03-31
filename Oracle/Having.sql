select
    order_id,
    sum(unit_price*quantity) order_value
from
    order_items
group by
    order_id
order by order_value desc;
--To find the orders whose values are greater that 1 million you add having cluase:

select
    order_id,
    sum(unit_price*quantity) order_value
from
    order_items
group by
    order_id
having
    sum(unit_price*quantity) > 1000000
order by
    order_value desc;
    
select
    order_id,
    count(item_id) item_count,
    sum(unit_price*quantity) total
from
    order_items
group by
    order_id
having
    sum(unit_price * quantity ) >500000 and count (item_id) between 10 and 12
order by
    total desc,
    item_count desc;