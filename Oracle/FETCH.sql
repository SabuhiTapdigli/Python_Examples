select 
    product_name,
    quantity
from
    inventories
inner join products
    using (product_id)
order by
    quantity desc
fetch next 10 rows only;

select 
    product_name,
    quantity
from
    inventories
inner join products
    using (product_id)
order by
    quantity desc
fetch next 10 rows with ties;

select 
    product_name,
    quantity
from
    inventories
inner join products
    using (product_id)
--order by
    --quantity desc
fetch next 10 rows with ties;

select 
    product_name,
    quantity
from
    inventories
inner join products
    using (product_id)
order by
    quantity desc
fetch NEXT 5 percent rows only; 

select 
    product_name,
    quantity
from
    inventories
inner join products
    using (product_id)
order by
    quantity desc
offset 10 rows
FETCH next 5 rows only 
