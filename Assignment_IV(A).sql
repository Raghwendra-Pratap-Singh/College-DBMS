-- 1 Find out the names of all the customers.
SELECT
    fname,
    lname
FROM
    Cust;

-- 2 Print the entire customer table.
SELECT
    *
FROM
    Cust;

-- 3 Retrieve the list of fname and the area of all the customers.
SELECT
    fname,
    area
FROM
    Cust;

-- 4 List the various movie types available from the movie table.
SELECT DISTINCT
    type
FROM
    Movie;

-- 5 Print the information of invoice table in the following format for all records
--      (A) The Invoice No. of Customer Id. {cust _ id} is {inv _no} and Movie No. is {mv _no}.
SELECT
    CONCAT (
        'The Invoice No. of Customer Id. ',
        cust_id,
        ' is ',
        inv_no,
        ' and Movie No. is ',
        mv_no
    )
FROM
    Invoice;

--      (B){cust_id} has taken Movie No. {mv_no} on {issue-date} and will return on
--          (return_date).
SELECT
    CONCAT (
        cust_id,
        ' has taken Movie No. ',
        mv_no,
        ' on ',
        issue_date,
        ' and will return on ',
        return_date
    )
FROM
    Invoice;

-- 6 Change the telephone number of prarnada to 466389.
UPDATE Cust
SET
    phone_no = 466389
WHERE
    fname = 'Pramada';

-- 7 Change the issue - date of cust- id 'A01' to 24/07/93.
UPDATE Invoice
SET
    issue_date = '1993-07-24'
WHERE
    cust_id = 'a01';

-- 8 Change the price of 'gone with the wind' to Rs. 250. 00.
UPDATE Movie
SET
    price = 250.00
WHERE
    title = 'gone with the wind';

-- 9 Delete the record with invoice number'i08' from the invoice table.
DELETE FROM Invoice
WHERE
    inv_no = 'i08';

-- 10 Delete all the records having return date before 10th July'93
DELETE FROM Invoice
WHERE
    return_date < '1993-07-10';
