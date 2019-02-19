SELECT * FROM INFORMATION_SCHEMA.COLUMNS;

-- Insert rows into table 'LIBRARY_BRANCH' in schema '[dbo]'
INSERT INTO [dbo].[LIBRARY_BRANCH]
( -- Columns to insert data into
 [BranchName], [Address]
)
VALUES
( 
    'Central Library', '1045 W Main St, Seattle, WA 98190'
),
( 
    'Hermiston Library', '235 E Gladys Ave, Hermiston, OR 97838'
),
(
    'Brooklyn Public Library', '10 Grand Army Plaza, Brooklyn, NY 11238'
),
(
    'Boston Athenaeum', '10 1/2 Beacon St, Boston, MA 02108'
),
(
    'Library Of Congress - Thomas Jefferson Building', '10 First St SE, Washington, DC 20540'
),
(
    'Sharpstown Library', '111 First St SE, Pendleton, OR 97801'
),
(
    'Henry Madden Library', '5200 N Barton Ave, Fresno, CA 93740'
)
GO

SELECT * FROM LIBRARY_BRANCH;

-- We made it the wrong size
INSERT INTO [dbo].[PUBLISHER]
( -- Columns to insert data into
 [PublisherName], [Address], [Phone]
)
VALUES
(
    'Simon & Schuster', '1230 Avenue of the Americas, 10th F, New York, NY 10020', '(800) 223-2336'
),
( 
    'Bloomsbury Publishing Inc.', '1385 Broadway, 5th Floor New York, NY 10018', '(212) 419-5300'
),
( 
    'Penguin Random House', '1745 Broadway New York, NY 10019', '(212) 782-9000'
),
( 
    'Hachette Book Group', '185 N. Mt. Zion Rd. Lebanon, IN 46052', '(800) 759-0190'
),
( 
    'Harper Collins', '195 Broadway, New York, NY 10007', '(212) 207-7000'
),
( 
    'Macmillan', '16365 James Madison Highway, Gordonsville, VA 22942', '(888) 330-8477'
)
GO

ALTER TABLE BOOKS
    ALTER COLUMN Title varchar(200);
GO

SELECT * FROM PUBLISHER;

-- Insert rows into table 'BOOKS'[dbo]'
INSERT INTO [dbo].[BOOKS]
( -- Columns to insert data into
 [Title], [PublisherName]
)
VALUES
(  
    'The Lost Tribe', 'Macmillan'
),
( 
    'Black House', 'Penguin Random House'
),
( 
    'Under the Dome', 'Simon & Schuster'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', 'Simon & Schuster'
),
( 
    'Shoe Dog: A Memoir by the Creator of Nike', 'Simon & Schuster'
),
( 
    'My Own Words', 'Simon & Schuster'
),
( 
    'Sapiens: A Brief History of Humankind', 'Harper Collins'
),
( 
    'The Alchemist', 'Harper Collins'
),
( 
    'After Alice', 'Harper Collins'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', 'Harper Collins'
),
( 
    'Harry Potter and the Goblet of Fire', 'Bloomsbury Publishing Inc.'
),
( 
    'Harry Potter and the Philosophers Stone', 'Bloomsbury Publishing Inc.'
),
( 
    'Harry Potter and the Deathly Hallows', 'Bloomsbury Publishing Inc.'
),
( 
    'Harry Potter and the Order of the Phoenix', 'Bloomsbury Publishing Inc.'
),
( 
    'The House Next Door', 'Hachette Book Group'
),
( 
    'The Power', 'Hachette Book Group'
),
( 
    'The Wolf in the Whale', 'Hachette Book Group'
),
( 
    'The Cassandra', 'Macmillan'
),
( 
    'The Empire and the Five Kings', 'Macmillan'
),
( 
    'Downhill from Here', 'Macmillan'
),
( 
    'The Eating Instinct', 'Macmillan'
),
( 
    'Nine Pints', 'Macmillan'
)
-- Add more rows here
GO

SELECT * FROM BOOKS;
SELECT * FROM LIBRARY_BRANCH;

-- Insert rows into table 'BORROWER' in schema '[dbo]'
INSERT INTO [dbo].[BORROWER]
( -- Columns to insert data into
 [Name], [Addresss], [Phone]
)
VALUES
(
     'Germayne Stiggles', '8686 Drewry Place, Boston, Massachusetts, 02104', '(318) 221-2201'
),
( 
    'Jordan Spangenberg', '1045 W Nelson Ln, Hermiston, OR 97838', '(541) 720-2859'
),
( 
    'Ashley Sines', '1444 NE Oregon Trail Ct, Salem, OR 97305', '(541) 720-1998'
),
( 
    'John Doe', '798 N Sumner St, Portland, OR 97217', '(541) 215-1552'
),
( 
    'Jenny Tutone', '32405 Diagonal Rd, Hermiston, OR, 97838', '(541) 867-5309'
),
( 
    'Hugo Merton', '6 Scofield Plaza, Portland, OR 97201', '(503) 898-1017'
),
( 
    'Dottie Pargeter', '5 bonner Terrace, Vancouver, WA 98687', '(360) 320-2539'
),
( 
    'Fan Persehouse', '88403 Vera Parkway, Portland, OR 97240', '(971) 853-1838'
),
( 
    'Iain Toffel', '7 Karstens Circle, Seattle, WA 98109', '(360) 764-4072'
),
( 
    'Bertlett MQuharg', '828 Welch Lane, Tacoma, WA 98411', '(253) 732-0990'
),
( 
    'Zacharias Itzchaky', '7 Susan Court, Seattle, WA 98115', '(206) 211-9601'
)
GO

SELECT * FROM BORROWER;

INSERT INTO [dbo].[BOOK_COPIES]
( 
 [BookID], [BranchID], [Number_Of_Copies]
)
VALUES 
(  -- Hermiston Library
    9, '1', '2'
),
( 
    2, '1', '2'
),
( 
    20, '1', '2'
),
( 
    13, '1', '2'
),
( 
    11, '1', '4'
),
( 
    14, '1', '3'
),
( 
    12, '1', '4'
),
( 
    10, '1', '2'
),
( 
    6, '1', '2'
),
( 
    22, '1', '2'
),
( 
    4, '1', '2'
),
( 
    7, '1', '2'
),
( 
    5, '1', '2'
),
( 
    8, '1', '3'
),
( 
    18, '1', '3'
),
( 
    21, '1', '2'
),
( 
    19, '1', '2'
),
( 
    15, '1', '2'
),
( 
    1, '1', '2'
),
(
    16, '1', '2'
),
( 
    17, '1', '3'
),
( 
    3, '1', '3'
),
( -- Brooklyn Public Library
    9, '2', '2'
),
( 
    2, '2', '2'
),
( 
    13, '2', '2'
),
( 
    11, '2', '2'
),
( 
    14, '2', '2'
),
( 
    12, '2', '2'
),
( 
    6, '2', '2'
),
( 
    22, '2', '2'
),
( 
    4, '2', '2'
),
( 
    5, '2', '2'
),
( 
    8, '2', '2'
),
( 
    18, '2', '2'
),
( 
    21, '2', '2'
),
( 
    15, '2', '2'
),
( 
    1, '2', '2'
),
( 
    17, '2', '2'
),
( 
    3, '2', '2'
),
( -- Boston 
    9, '3', '3'
),
( 
    20, '3', '2'
),
( 
    13, '3', '3'
),
( 
    11, '3', '2'
),
( 
    14, '3', '2'
),
( 
    12, '3', '3'
),
( 
    10, '3', '2'
),
( 
    6, '3', '2'
),
( 
    22, '3', '3'
),
( 
    8, '3', '2'
),
( 
    18, '3', '2'
),
( 
    21, '3', '3'
),
( 
    19, '3', '2'
),
( 
    15, '3', '2'
),
( 
    1, '3', '2'
),
(
    16, '3', '3'
),
( 
    17, '3', '2'
),
( 
    3, '3', '2'
),
( -- Library of Congress
    9, '4', '2'
),
( 
    2, '4', '3'
),
( 
    20, '4', '2'
),
( 
    13, '4', '3'
),
( 
    11, '4', '2'
),
( 
    14, '4', '3'
),
( 
    12, '4', '3'
),
( 
    10, '4', '2'
),
( 
    6, '4', '3'
),
( 
    22, '4', '2'
),
( 
    4, '4', '3'
),
( 
    7, '4', '2'
),
( 
    5, '4', '2'
),
( 
    8, '4', '3'
),
( 
    18, '4', '2'
),
(
    16, '4', '2'
),
( 
    17, '4', '3'
),
( 
    3, '4', '2'
),
( -- Sharpstown
    9, '5', '3'
),
( 
    2, '5', '2'
),
( 
    20, '5', '3'
),
( 
    10, '5', '2'
),
( 
    6, '5', '3'
),
( 
    22, '5', '2'
),
( 
    4, '5', '3'
),
( 
    7, '5', '2'
),
( 
    5, '5', '3'
),
( 
    8, '5', '2'
),
( 
    18, '5', '2'
),
( 
    21, '5', '3'
),
( 
    19, '5', '2'
),
( 
    15, '5', '3'
),
( 
    1, '5', '2'
),
(
    16, '5', '2'
),
( 
    17, '5', '3'
),
( 
    3, '5', '2'
),
( -- Henry Madden
    9, '6', '2'
),
( 
    2, '6', '3'
),
( 
    20, '6', '2'
),
( 
    13, '6', '3'
),
( 
    11, '6', '3'
),
( 
    14, '6', '2'
),
( 
    12, '6', '3'
),
( 
    10, '6', '2'
),
( 
    6, '6', '3'
),
( 
    22, '6', '2'
),
( 
    4, '6', '3'
),
( 
    7, '6', '2'
),
( 
    5, '6', '3'
),
( 
    8, '6', '2'
),
( 
    18, '6', '3'
),
( 
    21, '6', '3'
),
( 
    19, '6', '2'
),
( 
    15, '6', '3'
),
( 
    1, '6', '2'
),
( -- Central Library
    9, '7', '3'
),
(
    2, 7, 2
),
( 
    13, '7', '2'
),
( 
    11, '7', '3'
),
( 
    14, '7', '2'
),
( 
    12, '7', '2'
),
( 
    10, '7', '3'
),
( 
    6, '7', '3'
),
( 
    22, '7', '2'
),
( 
    4, '7', '3'
),
( 
    7, '7', '2'
),
( 
    18, '7', '2'
),
( 
    21, '7', '3'
),
( 
    19, '7', '2'
),
( 
    15, '7', '3'
),
( 
    1, '7', '2'
),
(
    16, '7', '2'
),
( 
    17, '7', '3'
),
( 
    3, '7', '2'
)
GO

-- Replace the # of copies with a random # between 2 and 12
UPDATE BOOK_COPIES
SET Number_Of_Copies = (abs(CHECKSUM(NEWID()) % 10) + 2);


INSERT INTO [dbo].[BOOK_AUTHORS]
( 
 [BookID], [AuthorName]
)
VALUES
( 
    '9', 'Gregory Maguire'
),
( 
    '2', 'Stephen King'
),
( 
    '20', 'Katherine S. Newman'
),
( 
    '13', 'J.K. Rowling'
),
( 
    '11', 'J.K. Rowling'
),
( 
    '14', 'J.K. Rowling'
),
( 
    '12', 'J.K. Rowling'
),
( 
    '10', 'Chade-meng Tan'
),
( 
    '6', 'Ruth Bader Ginsburg'
),
( 
    '22', 'Rose George'
),
( 
    '4', 'Samin Nosrat'
),
( 
    '7', 'Yuval Noah Harari'
),
( 
    '5', 'Phil Knight'
),
( 
    '8', 'Paulo Coelho'
),
( 
    '18', 'Sharma Shields'
),
( 
    '21', 'Virginia Sole-Smith'
),
( 
    '19', 'Bernard-Henri Levy'
),
( 
    '15', 'James Patterson'
),
( 
    '1', 'Steven A Wilkens'
),
( 
    '16', 'Naomi Alderman'
),
( 
    '17', 'Jordanna Max Brodsky'
),
( 
    '3', 'Stephen King'
)
GO

SELECT Title FROM BOOKS;
Select BranchID, BranchName FROM LIBRARY_BRANCH;
SELECT CardNo, Name from BORROWER;

INSERT INTO [dbo].[BOOK_LOANS]
( -- Columns to insert data into
 [BookID], [BranchID], [CardNo], [DateOut], [DateDue]
) -- BookID = BOOKS.Title, BranchID = LIBRARY_BRANCH.BranchID, CardNo = BORROWER.CardNo, Date format YYYY-MM-DD
VALUES
(18, 5, 1, '2018-12-16', '2019-02-17'),
(9,7,4,'2018-09-12','2018-12-11'),
(15,7,8,'2018-09-19','2018-12-18'),
(20,7,2,'2018-04-06','2018-07-05'),
(18,3,10,'2018-11-23','2019-02-21'),
(22,3,1,'2018-11-03','2019-02-01'),
(18,3,6,'2018-08-26','2018-11-24'),
(19,6,5,'2018-04-06','2018-07-05'),
(3,4,1,'2018-06-02','2018-08-31'),
(11,4,5,'2018-03-18','2018-06-16'),
(11,6,10,'2018-06-11','2018-09-09'),
(18,7,8,'2018-05-30','2018-08-28'),
(13,1,4,'2018-01-09','2018-04-09'),
(1,6,6,'2018-08-18','2018-11-16'),
(20,4,4,'2019-01-17','2019-04-17'),
(19,4,2,'2018-09-30','2018-12-29'),
(6,7,5,'2018-04-21','2018-07-20'),
(10,6,8,'2018-08-21','2018-11-19'),
(2,1,1,'2018-05-25','2018-08-23'),
(1,5,4,'2018-04-02','2018-07-01'),
(12,3,8,'2018-12-22','2019-03-22'),
(14,5,6,'2018-11-12','2019-02-10'),
(19,7,5,'2018-09-26','2018-12-25'),
(16,2,2,'2018-10-23','2019-01-21'),
(19,3,9,'2019-02-12','2019-05-13'),
(2,3,4,'2018-11-09','2019-02-07'),
(16,2,4,'2018-09-08','2018-12-07'),
(2,3,10,'2018-09-27','2018-12-26'),
(6,1,8,'2018-01-09','2018-04-09'),
(12,5,10,'2018-03-06','2018-06-04'),
(15,7,7,'2018-06-28','2018-09-26'),
(9,6,3,'2018-12-01','2019-03-01'),
(17,3,7,'2018-05-04','2018-08-02'),
(14,5,8,'2018-09-20','2018-12-19'),
(7,1,6,'2018-07-25','2018-10-23'),
(18,3,7,'2018-01-22','2018-04-22'),
(2,3,4,'2018-05-07','2018-08-05'),
(14,7,7,'2019-02-15','2019-05-16'),
(12,2,3,'2019-01-13','2019-04-13'),
(17,2,2,'2018-09-12','2018-12-11'),
(19,7,4,'2018-10-17','2019-01-15'),
(7,5,3,'2018-07-02','2018-09-30'),
(8,5,7,'2018-05-09','2018-08-07'),
(20,1,1,'2018-12-21','2019-03-21'),
(17,7,2,'2018-04-15','2018-07-14'),
(1,4,5,'2018-11-19','2019-02-17'),
(11,7,4,'2019-01-18','2019-04-18'),
(11,6,9,'2018-07-18','2018-10-16'),
(1,2,5,'2018-08-21','2018-11-19'),
(6,7,10,'2018-10-27','2019-01-25'),
(22,3,1,'2019-02-12','2019-05-13'),
(20,7,4,'2018-12-22','2019-03-22'),
(9,3,1,'2018-02-27','2018-05-28'),
(14,6,4,'2019-01-10','2019-04-10'),
(6,2,4,'2018-01-12','2018-04-12'),
(4,4,4,'2018-10-18','2019-01-16'),
(15,7,6,'2019-01-09','2019-04-09'),
(19,6,10,'2018-07-23','2018-10-21'),
(20,3,2,'2018-09-23','2018-12-22'),
(8,3,10,'2018-12-23','2019-03-23'),
(22,2,9,'2018-11-29','2019-02-27')
GO

