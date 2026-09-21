-- 1. (a) Create Customer master table: Cust
CREATE TABLE
    Cust (
        cust_id VARCHAR(3) PRIMARY KEY,
        lname VARCHAR(15),
        fname VARCHAR(15),
        area VARCHAR(2),
        phone_no INT
    );

-- (b) Create Movies master table : Movie
CREATE TABLE
    Movie (
        mv_no VARCHAR(2) PRIMARY KEY,
        title VARCHAR(25),
        type VARCHAR(10),
        star VARCHAR(25)
    );

-- (c) Invoice transaction table : Invoice
CREATE TABLE
    Invoice (
        inv_no VARCHAR(3) PRIMARY KEY,
        mv_no VARCHAR(2),
        cust_id VARCHAR(3),
        issue_date DATE,
        return_date DATE
    );

-- 2.Add the following constraints
--      (a)INVOICE(Cust_id) references CUST(Cust_id)
ALTER TABLE Invoice ADD CONSTRAINT FOREIGN KEY (cust_id) REFERENCES Cust (cust_id);

--      (b)INVOICE(Mv_no) references MOVIE(Mv_no)
ALTER TABLE Invoice ADD CONSTRAINT FOREIGN KEY (mv_no) REFERENCES Movie (mv_no);

--      (c)Declare NOT NULL : fname, title, type
ALTER TABLE Cust MODIFY fname VARCHAR(15) NOT NULL;

ALTER TABLE Movie MODIFY title VARCHAR(25) NOT NULL;

ALTER TABLE Movie MODIFY type VARCHAR(10) NOT NULL;

-- 3.Add a new column PRICE in Movie table with data type decimal(8,2)
ALTER TABLE Movie ADD price DECIMAL(8, 2);

-- 4. Insert the data into the respective tables 
--      1.Cust Table
INSERT INTO
    Cust (cust_id, lname, fname, area, phone_no)
VALUES
    ('a01', 'Bayross', 'Ivan', 'sa', 6125467),
    ('a02', 'Saitwal', 'Vandana', 'mu', 5560379),
    ('a03', 'Jaguste', 'Pramada', 'da', 4563891),
    ('a04', 'Navindgi', 'Basu', 'ba', 6125401),
    ('a05', 'Sreedharan', 'Ravi', 'va', NULL),
    ('a06', NULL, 'Rukmini', 'gh', 5125274);

--      2.Movie Table
INSERT INTO
    Movie (mv_no, title, type, star, price)
VALUES
    (
        '1',
        'bloody vengeance',
        'action',
        'jackie chan',
        180.95
    ),
    ('2', 'the firm', 'thriller', 'tom cruise', 200.00),
    (
        '3',
        'pretty woman',
        'romance',
        'richard gere',
        150.55
    ),
    (
        '4',
        'home alone',
        'comedy',
        'macaulay culkin',
        150.00
    ),
    (
        '5',
        'the fugitive',
        'thriller',
        'harisson ford',
        200.00
    ),
    (
        '6',
        'coma',
        'suspense',
        'michael douglas',
        100.00
    ),
    ('7', 'dracula', 'horror', 'gary oldman', 150.25),
    (
        '8',
        'quick change',
        'comedy',
        'bill muray',
        100.00
    ),
    (
        '9',
        'gone with the wind',
        'drama',
        'clarke gable',
        200.00
    ),
    (
        '10',
        'carry on doctor',
        'comedy',
        'leslie phillips',
        100.00
    );

--      3.Invoice Table
INSERT INTO
    Invoice (inv_no, mv_no, cust_id, issue_date, return_date)
VALUES
    ('i01', '4', 'a01', '1993-07-23', '1993-07-25'),
    ('i02', '3', 'a02', '1993-08-12', '1993-08-15'),
    ('i03', '1', 'a02', '1993-08-15', '1993-08-18'),
    ('i04', '6', 'a03', '1993-09-10', '1993-09-12'),
    ('i05', '7', 'a04', '1993-08-05', '1993-08-08'),
    ('i06', '2', 'a06', '1993-09-18', '1993-09-21'),
    ('i07', '9', 'a05', '1993-07-07', '1993-07-10'),
    ('i08', '9', 'a01', '1993-08-11', '1993-08-14'),
    ('i09', '5', 'a03', '1993-07-06', '1993-07-07'),
    ('i10', '8', 'a06', '1993-09-03', '1993-09-06');
