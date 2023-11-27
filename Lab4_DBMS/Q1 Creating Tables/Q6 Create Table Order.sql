-- Select the ecommerce database to perform operations
use ecommerce_db;

-- Create a new table 'order' if it does not already exist
CREATE TABLE IF NOT EXISTS `order` (
    -- Define 'ORD_ID' as an integer and set it as a primary key
    ORD_ID INT NOT NULL,

    -- Define 'ORD_AMOUNT' as an integer to store the order amount
    ORD_AMOUNT INT NOT NULL,

    -- Define 'ORD_DATE' to store the date of the order
    ORD_DATE DATE,

    -- Define 'CUS_ID' as an integer, a foreign key reference to the CUSTOMER table
    CUS_ID INT NOT NULL,

    -- Define 'PRICING_ID' as an integer, a foreign key reference to the SUPPLIER_PRICING table
    PRICING_ID INT NOT NULL,

    -- Specify 'ORD_ID' as the primary key for the table
    PRIMARY KEY (ORD_ID),

    -- Create a foreign key relationship with the CUSTOMER table on 'CUS_ID'
    FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),

    -- Create a foreign key relationship with the SUPPLIER_PRICING table on 'PRICING_ID'
    FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);
