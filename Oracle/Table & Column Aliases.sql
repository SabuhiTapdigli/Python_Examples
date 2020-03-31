select 
    first_name as ad,
    last_name as soyad
from
    employees;
    
select 
    first_name  ad,
    last_name  soyad
from
    employees;

select 
    first_name || ' ' || last_name
from
    employees;
select 
    first_name || ' ' || last_name as Fullname
from
    employees;
    
select
    product_name,
    list_price-standard_cost as gross
from
    products
order by
    gross asc;







    