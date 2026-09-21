-- ASSIGNMENT IV B
-- 11. Change the area of cust_id 'a05' to 'vs'.
UPDATE Cust
SET
    area = 'vs'
WHERE
    cust_id = 'a05';

-- 12. Change the return date of invoice number 'i07' to 16-08-93.
UPDATE Invoice
SET
    return_date = "1993-08-16"
WHERE
    inv_no = 'i07';

-- 13. Find the names of all customers having 'a' as the second letter in their names.
SELECT
    fname
FROM
    Cust
WHERE
    fname LIKE "_a%";

-- 14. Find the names of all customers that begin with 's' or 'j'.
SELECT
    lname
FROM
    Cust
WHERE
    lname LIKE 's%'
    OR lname LIKE 'j%';

-- 15. Find out the customers who stay in an area whose second letter is 'a'.
SELECT
    *
FROM
    Cust
WHERE
    area LIKE '_a';

-- 16. Find the list of all customers who stay in area 'da' or area 'mu' or area 'gh'.
SELECT
    *
FROM
    Cust
WHERE
    area IN ('da', 'mu', 'gh');

-- 17. Print the list of employees whose phone numbers are greater than the value 555000.
SELECT
    *
FROM
    Cust
WHERE
    phone_no > 5550000;

-- 18. Print the information from the invoice table of customers
-- who have been issued movies in the month of September.
SELECT
    *
FROM
    Invoice
WHERE
    issue_date LIKE '%09%';

-- 19. Display the invoice table information for cust_id 'A01' and 'A02'.
SELECT
    *
FROM
    Invoice
WHERE
    cust_id IN ('a01', 'a02');

-- 20. Find the movies of type 'action' and 'comedy'.
SELECT
    *
FROM
    Movie
WHERE
    type = 'action'
    OR type = 'comedy';
