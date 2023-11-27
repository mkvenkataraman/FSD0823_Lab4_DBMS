-- 9 Display customer name and gender whose names start or end with character 'A'.

-- Using the ecommerce_db schema to perform operations
use ecommerce_db;

select 
    customer.cus_name, 
    customer.cus_gender 
from 
    customer 
where 
    customer.cus_name like 'A%' 
    or customer.cus_name like '%A';

-- Note: The query uses the LIKE operator to match patterns in customer names
