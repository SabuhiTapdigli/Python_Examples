select
    *
from
    orders
inner join order_items using (order_id)
order by
    order_id asc;
--difference between using and main inner join is that it will show order_id_1 new column
select
    *
from
    orders
inner join order_items on orders.order_id=order_items.order_id;

select
    *
from
    orders
inner join order_items using (order_id)
inner join customers using (customer_id);

