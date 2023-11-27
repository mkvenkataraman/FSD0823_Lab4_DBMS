-- 6 Display the details of suppliers who are supplying more than three products in the ecommerce schema
-- Select the schema
USE ecommerce_db;

SELECT SUP.* 
FROM supplier AS SUP 
WHERE SUP.SUPP_ID IN
    (
        -- Subquery to select supplier IDs who supply more than three products
        SELECT SP.SUPP_ID 
        FROM supplier_pricing AS SP 
        GROUP BY SP.SUPP_ID 
        HAVING COUNT(SP.SUPP_ID) > 3
    );
