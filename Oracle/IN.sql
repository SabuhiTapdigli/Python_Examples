select
    employee_id,
    first_name,
    last_name
from
    employees
where 
    employee_id in(
        Select
            distinct salesman_id
        from
            orders
        where
            status='Canceled'
            );
select
    *
from
    orders
SELECT * FROM employees