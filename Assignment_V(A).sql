-- 1. Calculate the square root of the price of each movie.
SELECT
    SQRT(price)
FROM
    Movie;

-- 2. Count the total number of customers.
SELECT
    COUNT(*)
FROM
    Cust;

-- 3. Calculate the total price of all the movies.
SELECT
    SUM(price)
FROM
    Movie;

-- 4. Calculate the average price of all the movies.
SELECT
    AVG(price)
FROM
    Movie;

-- 5. Determine the maximum and minimum movie prices. Rename the title as max-price
-- and min_price respectively.
SELECT
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM
    Movie;

-- 6. Count the number of movies having price greater than or equal to 150.
SELECT
    COUNT(price)
FROM
    Movie
WHERE
    price >= 150;

-- 7. Print the type and average price of each movie.
SELECT
    type,
    AVG(price)
FROM
    Movie
GROUP BY
    type;

-- 8. Find the number of movies in each type.
SELECT
    type,
    COUNT(type)
FROM
    Movie
GROUP BY
    type;

-- 9. Count separately the number of movies in the 'comedy' and 'thriller' types.
SELECT
    type,
    COUNT(type)
FROM
    Movie
WHERE
    type IN ('comedy', 'thriller')
GROUP BY
    type;

-- 10. Calculate the average price for each type that has a maximum price of 150.00.
SELECT
    type,
    AVG(price)
FROM
    Movie
GROUP BY
    type
HAVING
    MAX(price) = 150;

-- 11. Calculate the average price of all movies where type is 'comedy' or 'thriller' and price is
-- greater than or equal to 150.00.
SELECT
    AVG(price)
FROM
    Movie
WHERE
    type IN ('comedy', 'thriller')
    AND price >= 150.00;

-- 12. Display the invoice number and day on which customers were issued movies.
SELECT
    inv_no,
    DAY (issue_date)
FROM
    Invoice;

-- 13. Display the month (in alphabets) in which customers are supposed to return the movies.
SELECT
    DATE_FORMAT (return_date, '%M')
FROM
    Invoice;

-- 14. Display the issue-date in the format 'dd-month-yy'.
-- For eg. 12-february-93.
SELECT
    DATE_FORMAT (issue_date, '%d-%M-%y')
FROM
    Invoice;

-- 15. Find current date.
SELECT
    CURDATE ();

-- 16. Find current date and time.
SELECT
    NOW ();

-- 17. Find the date, 15 days after the current date.
SELECT
    CURDATE (),
    DATE_ADD (CURDATE (), INTERVAL 15 DAY);

-- 18. Find the number of days elapsed between the current date and the return date of the
-- movie for all customers.
SELECT
    DATEDIFF (CURDATE (), return_date)
FROM
    Invoice;
