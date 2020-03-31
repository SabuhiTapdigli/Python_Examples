SELECT
    first_name,
    last_name,
    phone
from
    contacts
where
    last_name like 'St%'
order by
    last_name

select
    first_name,
    last_name,
    phone
from
    contacts
where last_name like 'Stoke%';

select
    first_name,
    last_name,
    phone
from
    contacts
where
    last_name like '%er';
    
select
    first_name,
    last_name,
    phone
from
    contacts
where first_name like 'Je_i';

select
    first_name,
    last_name,
    phone
from   
    contacts
where UPPER(last_name) like 'ST%';

select
    first_name,
    last_name,
    phone
from
    contacts
where lower(last_name) like 'st%';

select
    first_name,
    last_name,
    phone
from 
    contacts
where phone not like '+1%';