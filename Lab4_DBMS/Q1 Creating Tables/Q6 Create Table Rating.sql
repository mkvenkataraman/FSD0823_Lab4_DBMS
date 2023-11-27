-- Switch to the ecommerce database
USE ecommerce_db;

-- Create a new table 'rating' if it does not exist
CREATE TABLE IF NOT EXISTS rating (

  -- Define 'RAT_ID' as an integer and not nullable, to be used as a primary key
  RAT_ID INT NOT NULL,

  -- Define 'ORD_ID' as an integer and not nullable, to create a relationship with the 'order' table
  ORD_ID INT NOT NULL,

  -- Define 'RAT_RATSTARS' as an integer to store the rating stars, not nullable
  RAT_RATSTARS INT NOT NULL,

  -- Set 'RAT_ID' as the primary key of the table
  PRIMARY KEY (RAT_ID),

  -- Establish a foreign key relationship with the 'order' table using 'ORD_ID'
  FOREIGN KEY (ORD_ID) REFERENCES `order`(ORD_ID)
);
