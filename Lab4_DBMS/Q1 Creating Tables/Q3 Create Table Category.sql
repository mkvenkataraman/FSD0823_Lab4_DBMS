-- Use the specific schema
USE ecommerce_db;

-- Creating a new table 'category' if it does not exist
CREATE TABLE IF NOT EXISTS category (

    -- Column 'CAT_ID' as an integer and not null
    CAT_ID INT NOT NULL,

    -- Column 'CAT_NAME' as a varchar of 20 characters and not null
    CAT_NAME VARCHAR(20) NOT NULL,

    -- Setting 'CAT_ID' as the primary key of the table
    PRIMARY KEY (CAT_ID)
);
