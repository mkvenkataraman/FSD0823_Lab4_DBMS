-- Select the schema
USE ecommerce_db;

-- Inserting a new product into the PRODUCT table with details and customer ID for 'GTA V'
INSERT INTO PRODUCT 
VALUES(1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 
       (SELECT CUS_ID FROM customer WHERE CUS_PHONE="9785463215"));

-- Inserting a new product into the PRODUCT table with details for 'TSHIRT'
INSERT INTO PRODUCT 
VALUES(2, "TSHIRT", "SIZE-L with Black, Blue and White variations", 5);

-- Inserting a new product into the PRODUCT table with details for 'ROG LAPTOP'
INSERT INTO PRODUCT 
VALUES(3, "ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD", 4);

-- Inserting a new product into the PRODUCT table with details for 'OATS'
INSERT INTO PRODUCT 
VALUES(4, "OATS", "Highly Nutritious from Nestle", 3);

-- Inserting a new product into the PRODUCT table with details for 'HARRY POTTER'
INSERT INTO PRODUCT 
VALUES(5, "HARRY POTTER", "Best Collection of all time by J.K Rowling", 1);

-- Inserting a new product into the PRODUCT table with details for 'MILK'
INSERT INTO PRODUCT 
VALUES(6, "MILK", "1L Toned MIlk", 3);

-- Inserting a new product into the PRODUCT table with details for 'Boat EarPhones'
INSERT INTO PRODUCT 
VALUES(7, "Boat EarPhones", "1.5Meter long Dolby Atmos", 4);

-- Inserting a new product into the PRODUCT table with details for 'Jeans'
INSERT INTO PRODUCT 
VALUES(8, "Jeans", "Stretchable Denim Jeans with various sizes and color", 5);

-- Inserting a new product into the PRODUCT table with details for 'Project IGI'
INSERT INTO PRODUCT 
VALUES(9, "Project IGI", "compatible with windows 7 and above", 2);

-- Inserting a new product into the PRODUCT table with details for 'Hoodie'
INSERT INTO PRODUCT 
VALUES(10, "Hoodie", "Black GUCCI for 13 yrs and above", 5);

-- Inserting a new product into the PRODUCT table with details for 'Rich Dad Poor Dad'
INSERT INTO PRODUCT 
VALUES(11, "Rich Dad Poor Dad", "Written by RObert Kiyosaki", 1);

-- Inserting a new product into the PRODUCT table with details for 'Train Your Brain'
INSERT INTO PRODUCT 
VALUES(12, "Train Your Brain", "By Shireen Stephen", 1);
