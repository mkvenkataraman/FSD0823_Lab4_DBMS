-- Use the specific schema
USE ecommerce_db;

-- Create a new table named 'customer' if it doesn't already exist
CREATE TABLE IF NOT EXISTS customer (

    -- Define 'CUS_ID' as an integer, and it cannot be NULL. It's the primary key.
    CUS_ID INT NOT NULL,

    -- Define 'CUS_NAME' as a variable character string with a max length of 20, cannot be NULL.
    CUS_NAME VARCHAR(20) NOT NULL,

    -- Define 'CUS_PHONE' as a variable character string with a max length of 10, cannot be NULL.
    CUS_PHONE VARCHAR(10) NOT NULL,

    -- Define 'CUS_CITY' as a variable character string with a max length of 30, cannot be NULL.
    CUS_CITY VARCHAR(30) NOT NULL,

    -- Define 'CUS_GENDER' as a single character. It can be NULL.
    CUS_GENDER CHAR,

    -- Specify 'CUS_ID' as the primary key of the table.
    PRIMARY KEY (CUS_ID)
);
