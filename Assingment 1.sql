CREATE DATABASE Raghav_209;

USE Raghav_209;

CREATE TABLE
    employee (
        employee_id INT,
        employee_name VARCHAR(50),
        department VARCHAR(30),
        designation VARCHAR(30),
        salary DECIMAL(10, 2)
    );

INSERT INTO
    employee
VALUES
    (101, "Ankit Sharma", "IT", "Developer", 45000.00);

INSERT INTO
    employee
VALUES
    (102, "Priya Das", "HR", "Manager", 55000.00);

INSERT INTO
    employee
VALUES
    (103, "Rahul Sen", "IT", "Tester", 40000.00);

INSERT INTO
    employee
VALUES
    (
        104,
        "Sneha Roy",
        "Finance",
        "Accountant",
        48000.00
    );

INSERT INTO
    employee
VALUES
    (
        105,
        "Arjun Mehta",
        "Sales",
        "Executive",
        35000.00
    );

SELECT
    *
FROM
    employee;

SELECT
    employee_name,
    department
FROM
    employee;

SELECT
    *
FROM
    employee
WHERE
    department = "IT";
