-- 1. Create the following Tables –
-- a. CUSTOMERS (CUST_ID(primary key), NAME, AGE, ADDRESS, SALARY)
CREATE TABLE
    customers (
        cust_id VARCHAR(30) PRIMARY KEY,
        name VARCHAR(30),
        age INT,
        address VARCHAR(30),
        salary DECIMAL(10, 2)
    );

-- b. SHIPEMENT(SHIPMENT_NO(primary key), CUST_ID, WEIGHT)
CREATE TABLE
    shipment (
        shipment_no VARCHAR(30) PRIMARY KEY,
        cust_id VARCHAR(30),
        weight INT
    );

-- c. Add the following constraints
-- ➢ SHIPMENT (CUST_ID) references CUSTOMERS (CUST_ID)
ALTER TABLE shipment ADD CONSTRAINT FOREIGN KEY (cust_id) REFERENCES customers (cust_id);

-- ➢ Declare NOT NULL : name
ALTER TABLE customers MODIFY name VARCHAR(30) NOT NULL;

-- d. Add new column START_CITY in SHIPMENT table.
ALTER TABLE shipment
ADD COLUMN start_city VARCHAR(30);

-- 2. a. Insert the following data into CUSTOMERS table.
INSERT INTO
    customers (cust_id, name, age, address, salary)
VALUES
    ("C001", "Ramesh", 32, "Ahmedabad", 12000.00),
    ("C002", "Khilan", 25, "Delhi", 14500.00),
    ("C003", "Kaushik", 23, "Kota", 18000.00),
    ("C004", "Muffy", 25, "Mumbai", 15000.00);

-- b. Insert the following data into SHIPMENT table.
INSERT INTO
    shipment (shipment_no, cust_id, weight, start_city)
VALUES
    ("S201", "C001", 120, "Indore"),
    ("S202", "C002", 210, "Kolkata"),
    ("S203", "C003", 320, "Mumbai");

-- 3. Write SQL statements to retrieve these query :
-- A. Describe customer and shipment table.
DESC customers;

DESC shipment;

-- B. Show the entire customer and shipment table.
SELECT
    *
FROM
    customers;

SELECT
    *
FROM
    shipment;

-- C. Find out the start_city of shipment table.
SELECT
    start_city
FROM
    shipment;

-- D. Change age of Kaushik to 35.
UPDATE customers
SET
    age = 35
WHERE
    cust_id = "C003";

-- E. Change salary of Ramesh to 15500.00.
UPDATE customers
SET
    salary = 15500.00
WHERE
    cust_id = "C001";

-- F. Delete data of S202 in Shipment table.
DELETE FROM shipment
WHERE
    shipment_no = "S202";
