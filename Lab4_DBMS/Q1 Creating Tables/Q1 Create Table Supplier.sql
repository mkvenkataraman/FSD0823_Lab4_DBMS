-- Use the specific schema
USE ecommerce_db;

-- Create the 'supplier' table if it doesn't already exist
CREATE TABLE IF NOT EXISTS supplier(

    -- 'SUPP_ID' is an integer and is the primary key of the table
    SUPP_ID int PRIMARY KEY,

    -- 'SUPP_NAME' is a string with a maximum length of 50 characters and cannot be NULL
    SUPP_NAME varchar(50) NOT NULL,

    -- 'SUPP_CITY' is a string with a maximum length of 50 characters; it can be NULL
    SUPP_CITY varchar(50),

    -- 'SUPP_PHONE' is a string with a maximum length of 10 characters and cannot be NULL
    SUPP_PHONE varchar(10) NOT NULL
);
