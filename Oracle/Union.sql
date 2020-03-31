select
    first_name,
    last_name,
    email
from
    contacts
order by first_name,last_name;
    
Select
    first_name,
    last_name,
    email
from
    employees
order by first_name,last_name;
select
    first_name,
    last_name,
    email,
    'contact'
from
    contacts
Union Select
    first_name,
    last_name,
    email,
    'employee'
from
    employees;
    
select
    first_name,
    last_name,
    email,
    'contact'
from
    contacts
Union ALL Select
    first_name,
    last_name,
    email,
    'employee'
from
    employees;
--This is because the UNION ALL operator does not remove duplicate rows.
--A UNION places a result set on top another, meaning that it appends result sets vertically. 
--However, a join such as INNER JOIN or LEFT JOIN combines result sets horizontally.
