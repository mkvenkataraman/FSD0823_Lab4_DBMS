-- Use the specific schema
use ecommerce_db;

-- Creating a table named 'supplier_pricing' if it does not already exist
CREATE TABLE IF NOT EXISTS supplier_pricing (

    -- 'PRICING_ID' column as an integer, not allowing NULL values
    PRICING_ID INT NOT NULL,

    -- 'PRO_ID' column as an integer, not allowing NULL values
    PRO_ID INT NOT NULL,

    -- 'SUPP_ID' column as an integer, not allowing NULL values
    SUPP_ID INT NOT NULL,

    -- 'SUPP_PRICE' column as an integer with a default value of 0
    SUPP_PRICE INT DEFAULT 0,

    -- Setting 'PRICING_ID' as the primary key of the table
    PRIMARY KEY (PRICING_ID),

    -- Creating a foreign key constraint for 'PRO_ID' referencing the 'PRODUCT' table
    FOREIGN KEY (PRO_ID) REFERENCES PRODUCT (PRO_ID),

    -- Creating a foreign key constraint for 'SUPP_ID' referencing the 'SUPPLIER' table
    FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID)
);
