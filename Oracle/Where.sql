Select 
    product_name,
    description,
    list_price,
    category_id
from
    products
where product_name='Kingston'
order by
    list_price;

select
    product_name,
    list_price
from
    products
where list_price>500 and product_name='Kingston';

select
    product_name,
    list_price
from
    products
where 
    list_price BETWEEN 650 and 680
order by
    list_price;

select
    product_name,
    list_price
from
    products
where
    list_price >= 650 and list_price <=680;
    
select 
    product_name,
    category_id
from
    products
where
    category_id in(1,4);

select DISTINCT
    category_id,
    product_name
from
    products
where
    category_id in(1,4); 

select
    product_name,
    list_price
from
    products
where
    product_name like 'Asus%';