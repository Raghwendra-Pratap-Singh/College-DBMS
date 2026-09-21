-- 1. Find the movies whose price is greater than 150 and less than or equal to 200.
SELECT
    *
FROM
    Movie
WHERE
    price > 150
    AND price <= 200;

-- 2. Find the movies that cost more than 150 and also find the new cost as original cost * 15.
SELECT
    title,
    price,
    price * 15
FROM
    Movie
WHERE
    price > 150;

-- 3. Rename the new column in the above query as new-price.
SELECT
    title,
    price,
    price * 15 AS new_price
FROM
    Movie
WHERE
    price > 150;

-- 4. List the movies in sorted order of their titles.
SELECT
    *
FROM
    Movie
ORDER BY
    title ASC;

-- 5. Print the names and types of all the movie except horror movies.
SELECT
    title,
    type
FROM
    Movie
WHERE
    type != 'horror';

-- 6. Divide the cost of movie 'home alone' by difference between its price and 100.
SELECT
    title,
    price / (price - 100) AS result
FROM
    Movie
WHERE
    title = 'home alone';

-- 7. List the names, areas and cust _ id of customers without phone numbers.
SELECT
    lname,
    area,
    cust_id
FROM
    Cust
WHERE
    phone_no IS NULL;

-- 8. List the names of customers without lname.
SELECT
    fname
FROM
    Cust
WHERE
    lname IS NULL;

-- 9. List the mv - no, title, type of movies whose stars begin with letter 'm'.
SELECT
    mv_no,
    title,
    type
FROM
    Movie
WHERE
    star LIKE 'n%';

-- 10. List the mv-no and inv-no of customers having inv-no less than 'i05' from the Invoice
-- Transaction Table.
SELECT
    mv_no,
    inv_no
FROM
    Invoice
WHERE
    inv_no < 'i05';
