-- 5 Retrieve all orders along with product names for a customer with Customer_Id=2
-- Use the ecommerce schema
use ecommerce_db;

-- Select customer ID, customer name, order ID, and product name
select q.CUS_ID, 
       q.cus_name,
       q.ord_id, 
       product.pro_name 
from
(
    -- Select customer ID, customer name, order ID, order amount, and product ID
    select c.CUS_ID,
           c.CUS_NAME, 
           p.ord_id,
           p.ord_amount, 
           p.pro_id 
    from
    (
        -- Select all fields from ORDER table and product ID from supplier_pricing
        SELECT O.*, 
               sp.pro_id 
        FROM `ORDER` AS O
        inner join supplier_pricing as sp
        -- Join on pricing ID
        where o.PRICING_ID=sp.PRICING_ID
    ) as p
    inner join customer as c
    -- Filter for customer ID = 2
    where p.CUS_ID=c.CUS_ID and c.CUS_ID=2
) as q
-- Join with product table
inner join product
-- Join on product ID
on q.pro_id= product.pro_id;
