--similar to the UNION operator, you must follow these rules when using the INTERSECT operator:

--The number and the order of columns must be the same in the two queries.
--The data type of the corresponding columns must be in the same data type group such as numeric or character.

select
    last_name
from
    contacts
INTERSECT
SELECT
    last_name
from
    employees
order by last_name;