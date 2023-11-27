-- 8 Display the Id and Name of the Product ordered after “2021-10-05”.

-- Use the ecommerce database schema
use ecommerce_db;

select p.PRO_ID, p.PRO_NAME 
from product as p
inner join 
(
    -- Subquery to select orders and their corresponding product IDs after the specified date
    SELECT o.*, sp.PRO_ID 
    FROM `ORDER` AS o
    inner join 
    supplier_pricing as sp on sp.PRICING_ID = o.pricing_id and o.ord_date > "2021-10-05"
) as q 
on p.PRO_ID = q.PRO_ID;
