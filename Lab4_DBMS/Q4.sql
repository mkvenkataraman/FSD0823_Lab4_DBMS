-- 4 Display the total number of customers based on gender who have placed 
-- individual orders of worth at least Rs.3000.

-- Use the ecommerce_db schema
USE ecommerce_db;

-- Counting number of customers based on gender with a minimum order amount of 3000
SELECT 
    COUNT(T2.CUS_GENDER) AS No_Of_Customer,
    T2.CUS_GENDER AS Gender 
FROM 
(
    -- Selecting customer details with a minimum order amount of 3000
    SELECT 
        T1.CUS_ID,
        T1.CUS_GENDER,
        T1.ORD_AMOUNT,
        T1.CUS_NAME 
    FROM 
    (
        -- Joining order and customer tables and filtering orders >= 3000
        SELECT 
            o.*,
            c.CUS_NAME,
            c.CUS_GENDER 
        FROM 
            `order` AS o
        INNER JOIN 
            customer AS c
        ON 
            c.CUS_ID = o.CUS_ID 
        HAVING 
            o.ORD_AMOUNT >= 3000
    ) AS T1 
) AS T2 
GROUP BY 
    T2.CUS_GENDER;
