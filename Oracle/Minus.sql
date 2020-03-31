--The Oracle MINUS operator compares two queries and returns distinct rows from the first query that are not output by the second query. 
--In other words, the MINUS operator subtracts one result set from another.
--Similar to the UNION and INTERSECT operators, the queries above must conform with the following rules:

--The number of columns and their orders must match.
--The data type of the corresponding columns must be in the same data type group such as numeric or character.


SELECT
    last_name
FROM
    contacts
MINUS
SELECT
    last_name
FROM
    employees
ORDER BY
    last_name;