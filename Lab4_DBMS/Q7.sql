-- 7 Selecting the least expensive product from each category
-- The query joins several tables and computes the minimum price for each category

-- Using the ecommerce_db schema for the query execution
use ecommerce_db;


-- Joining category with a subquery that includes products and their minimum prices
select 
    category.cat_id,
    category.cat_name, 
    min(t3.min_price) as Min_Price 
from 
    category 
inner join
    (
        -- Subquery to get each product's minimum price
        select 
            product.cat_id, 
            product.pro_name, 
            t2.* 
        from 
            product 
        inner join
            (
                -- Subquery to calculate minimum supplier pricing for each product
                select 
                    pro_id, 
                    min(supp_price) as Min_Price 
                from 
                    supplier_pricing 
                group by 
                    pro_id
            ) as t2 
        where 
            t2.pro_id = product.pro_id
    ) as t3 
where 
    t3.cat_id = category.cat_id 
group by 
    t3.cat_id;
