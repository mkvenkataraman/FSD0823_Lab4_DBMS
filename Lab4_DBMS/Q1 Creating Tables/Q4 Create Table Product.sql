-- Use the specific schema
USE ecommerce_db;

-- Creating the 'product' table if it does not already exist
CREATE TABLE IF NOT EXISTS product (

    -- Defining 'PRO_ID' as an integer and setting it as a not nullable field
    PRO_ID INT NOT NULL,
    
    -- Defining 'PRO_NAME' as a variable character string with a maximum length of 20, not nullable, and defaulting to "Dummy" if no value is provided
    PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
    
    -- Defining 'PRO_DESC' as a variable character string with a maximum length of 60, nullable
    PRO_DESC VARCHAR(60),
    
    -- Defining 'CAT_ID' as an integer and setting it as a not nullable field
    CAT_ID INT NOT NULL,
    
    -- Setting 'PRO_ID' as the primary key of the table
    PRIMARY KEY (PRO_ID),
    
    -- Establishing a foreign key relationship with 'CAT_ID' referencing the 'CAT_ID' column in the 'CATEGORY' table
    FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID)
);
