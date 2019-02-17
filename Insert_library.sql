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
    'After Alice', '1', '2'
),
( 
    'Black House', '1', '2'
),
( 
    'Downhill from Here', '1', '2'
),
( 
    'Harry Potter and the Deathly Hallows', '1', '2'
),
( 
    'Harry Potter and the Goblet of Fire', '1', '4'
),
( 
    'Harry Potter and the Order of the Phoenix', '1', '3'
),
( 
    'Harry Potter and the Philosophers Stone', '1', '4'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', '1', '2'
),
( 
    'My Own Words', '1', '2'
),
( 
    'Nine Pints', '1', '2'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', '1', '2'
),
( 
    'Sapiens: A Brief History of Humankind', '1', '2'
),
( 
    'Shoe Dog: A Memoir by the Creator of Nike', '1', '2'
),
( 
    'The Alchemist', '1', '3'
),
( 
    'The Cassandra', '1', '3'
),
( 
    'The Eating Instinct', '1', '2'
),
( 
    'The Empire and the Five Kings', '1', '2'
),
( 
    'The House Next Door', '1', '2'
),
( 
    'The Lost Tribe', '1', '2'
),
(
    'The Power', '1', '2'
),
( 
    'The Wolf in the Whale', '1', '3'
),
( 
    'Under the Dome', '1', '3'
),
( -- Brooklyn Public Library
    'After Alice', '2', '2'
),
( 
    'Black House', '2', '2'
),
( 
    'Harry Potter and the Deathly Hallows', '2', '2'
),
( 
    'Harry Potter and the Goblet of Fire', '2', '2'
),
( 
    'Harry Potter and the Order of the Phoenix', '2', '2'
),
( 
    'Harry Potter and the Philosophers Stone', '2', '2'
),
( 
    'My Own Words', '2', '2'
),
( 
    'Nine Pints', '2', '2'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', '2', '2'
),
( 
    'Shoe Dog: A Memoir by the Creator of Nike', '2', '2'
),
( 
    'The Alchemist', '2', '2'
),
( 
    'The Cassandra', '2', '2'
),
( 
    'The Eating Instinct', '2', '2'
),
( 
    'The House Next Door', '2', '2'
),
( 
    'The Lost Tribe', '2', '2'
),
( 
    'The Wolf in the Whale', '2', '2'
),
( 
    'Under the Dome', '2', '2'
),
( -- Boston 
    'After Alice', '3', '3'
),
( 
    'Downhill from Here', '3', '2'
),
( 
    'Harry Potter and the Deathly Hallows', '3', '3'
),
( 
    'Harry Potter and the Goblet of Fire', '3', '2'
),
( 
    'Harry Potter and the Order of the Phoenix', '3', '2'
),
( 
    'Harry Potter and the Philosophers Stone', '3', '3'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', '3', '2'
),
( 
    'My Own Words', '3', '2'
),
( 
    'Nine Pints', '3', '3'
),
( 
    'The Alchemist', '3', '2'
),
( 
    'The Cassandra', '3', '2'
),
( 
    'The Eating Instinct', '3', '3'
),
( 
    'The Empire and the Five Kings', '3', '2'
),
( 
    'The House Next Door', '3', '2'
),
( 
    'The Lost Tribe', '3', '2'
),
(
    'The Power', '3', '3'
),
( 
    'The Wolf in the Whale', '3', '2'
),
( 
    'Under the Dome', '3', '2'
),
( -- Library of Congress
    'After Alice', '4', '2'
),
( 
    'Black House', '4', '3'
),
( 
    'Downhill from Here', '4', '2'
),
( 
    'Harry Potter and the Deathly Hallows', '4', '3'
),
( 
    'Harry Potter and the Goblet of Fire', '4', '2'
),
( 
    'Harry Potter and the Order of the Phoenix', '4', '3'
),
( 
    'Harry Potter and the Philosophers Stone', '4', '3'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', '4', '2'
),
( 
    'My Own Words', '4', '3'
),
( 
    'Nine Pints', '4', '2'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', '4', '3'
),
( 
    'Sapiens: A Brief History of Humankind', '4', '2'
),
( 
    'Shoe Dog: A Memoir by the Creator of Nike', '4', '2'
),
( 
    'The Alchemist', '4', '3'
),
( 
    'The Cassandra', '4', '2'
),
(
    'The Power', '4', '2'
),
( 
    'The Wolf in the Whale', '4', '3'
),
( 
    'Under the Dome', '4', '2'
),
( -- Sharpstown
    'After Alice', '5', '3'
),
( 
    'Black House', '5', '2'
),
( 
    'Downhill from Here', '5', '3'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', '5', '2'
),
( 
    'My Own Words', '5', '3'
),
( 
    'Nine Pints', '5', '2'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', '5', '3'
),
( 
    'Sapiens: A Brief History of Humankind', '5', '2'
),
( 
    'Shoe Dog: A Memoir by the Creator of Nike', '5', '3'
),
( 
    'The Alchemist', '5', '2'
),
( 
    'The Cassandra', '5', '2'
),
( 
    'The Eating Instinct', '5', '3'
),
( 
    'The Empire and the Five Kings', '5', '2'
),
( 
    'The House Next Door', '5', '3'
),
( 
    'The Lost Tribe', '5', '2'
),
(
    'The Power', '5', '2'
),
( 
    'The Wolf in the Whale', '5', '3'
),
( 
    'Under the Dome', '5', '2'
),
( -- Henry Madden
    'After Alice', '6', '2'
),
( 
    'Black House', '6', '3'
),
( 
    'Downhill from Here', '6', '2'
),
( 
    'Harry Potter and the Deathly Hallows', '6', '3'
),
( 
    'Harry Potter and the Goblet of Fire', '6', '3'
),
( 
    'Harry Potter and the Order of the Phoenix', '6', '2'
),
( 
    'Harry Potter and the Philosophers Stone', '6', '3'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', '6', '2'
),
( 
    'My Own Words', '6', '3'
),
( 
    'Nine Pints', '6', '2'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', '6', '3'
),
( 
    'Sapiens: A Brief History of Humankind', '6', '2'
),
( 
    'Shoe Dog: A Memoir by the Creator of Nike', '6', '3'
),
( 
    'The Alchemist', '6', '2'
),
( 
    'The Cassandra', '6', '3'
),
( 
    'The Eating Instinct', '6', '3'
),
( 
    'The Empire and the Five Kings', '6', '2'
),
( 
    'The House Next Door', '6', '3'
),
( 
    'The Lost Tribe', '6', '2'
),
( -- Central Library
    'After Alice', '7', '3'
),
(
    'Black House', 7, 2
),
( 
    'Harry Potter and the Deathly Hallows', '7', '2'
),
( 
    'Harry Potter and the Goblet of Fire', '7', '3'
),
( 
    'Harry Potter and the Order of the Phoenix', '7', '2'
),
( 
    'Harry Potter and the Philosophers Stone', '7', '2'
),
( 
    'Joy on Demand: The Art of Discerning the Happiness Within', '7', '3'
),
( 
    'My Own Words', '7', '3'
),
( 
    'Nine Pints', '7', '2'
),
( 
    'Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking', '7', '3'
),
( 
    'Sapiens: A Brief History of Humankind', '7', '2'
),
( 
    'The Cassandra', '7', '2'
),
( 
    'The Eating Instinct', '7', '3'
),
( 
    'The Empire and the Five Kings', '7', '2'
),
( 
    'The House Next Door', '7', '3'
),
( 
    'The Lost Tribe', '7', '2'
),
(
    'The Power', '7', '2'
),
( 
    'The Wolf in the Whale', '7', '3'
),
( 
    'Under the Dome', '7', '2'
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
('The Cassandra', 5, 1, '2018-12-16', '2019-02-17'),
('After Alice',7,4,'2018-09-12','2018-12-11'),
('The House Next Door',7,8,'2018-09-19','2018-12-18'),
('Downhill from Here',7,2,'2018-04-06','2018-07-05'),
('The Cassandra',3,10,'2018-11-23','2019-02-21'),
('Nine Pints',3,1,'2018-11-03','2019-02-01'),
('The Cassandra',3,6,'2018-08-26','2018-11-24'),
('The Empire and the Five Kings',6,5,'2018-04-06','2018-07-05'),
('Under the Dome',4,1,'2018-06-02','2018-08-31'),
('Harry Potter and the Goblet of Fire',4,5,'2018-03-18','2018-06-16'),
('Harry Potter and the Goblet of Fire',6,10,'2018-06-11','2018-09-09'),
('The Cassandra',7,8,'2018-05-30','2018-08-28'),
('Harry Potter and the Deathly Hallows',1,4,'2018-01-09','2018-04-09'),
('The Lost Tribe',6,6,'2018-08-18','2018-11-16'),
('Downhill from Here',4,4,'2019-01-17','2019-04-17'),
('The Empire and the Five Kings',4,2,'2018-09-30','2018-12-29'),
('My Own Words',7,5,'2018-04-21','2018-07-20'),
('Joy on Demand: The Art of Discerning the Happiness Within',6,8,'2018-08-21','2018-11-19'),
('Black House',1,1,'2018-05-25','2018-08-23'),
('The Lost Tribe',5,4,'2018-04-02','2018-07-01'),
('Harry Potter and the Philosophers Stone',3,8,'2018-12-22','2019-03-22'),
('Harry Potter and the Order of the Phoenix',5,6,'2018-11-12','2019-02-10'),
('The Empire and the Five Kings',7,5,'2018-09-26','2018-12-25'),
('The Power',2,2,'2018-10-23','2019-01-21'),
('The Empire and the Five Kings',3,9,'2019-02-12','2019-05-13'),
('Black House',3,4,'2018-11-09','2019-02-07'),
('The Power',2,4,'2018-09-08','2018-12-07'),
('Black House',3,10,'2018-09-27','2018-12-26'),
('My Own Words',1,8,'2018-01-09','2018-04-09'),
('Harry Potter and the Philosophers Stone',5,10,'2018-03-06','2018-06-04'),
('The House Next Door',7,7,'2018-06-28','2018-09-26'),
('After Alice',6,3,'2018-12-01','2019-03-01'),
('The Wolf in the Whale',3,7,'2018-05-04','2018-08-02'),
('Harry Potter and the Order of the Phoenix',5,8,'2018-09-20','2018-12-19'),
('Sapiens: A Brief History of Humankind',1,6,'2018-07-25','2018-10-23'),
('The Cassandra',3,7,'2018-01-22','2018-04-22'),
('Black House',3,4,'2018-05-07','2018-08-05'),
('Harry Potter and the Order of the Phoenix',7,7,'2019-02-15','2019-05-16'),
('Harry Potter and the Philosophers Stone',2,3,'2019-01-13','2019-04-13'),
('The Wolf in the Whale',2,2,'2018-09-12','2018-12-11'),
('The Empire and the Five Kings',7,4,'2018-10-17','2019-01-15'),
('Sapiens: A Brief History of Humankind',5,3,'2018-07-02','2018-09-30'),
('The Alchemist',5,7,'2018-05-09','2018-08-07'),
('Downhill from Here',1,1,'2018-12-21','2019-03-21'),
('The Wolf in the Whale',7,2,'2018-04-15','2018-07-14'),
('The Lost Tribe',4,5,'2018-11-19','2019-02-17'),
('Harry Potter and the Goblet of Fire',7,4,'2019-01-18','2019-04-18'),
('Harry Potter and the Goblet of Fire',6,9,'2018-07-18','2018-10-16'),
('The Lost Tribe',2,5,'2018-08-21','2018-11-19'),
('My Own Words',7,10,'2018-10-27','2019-01-25'),
('Nine Pints',3,1,'2019-02-12','2019-05-13'),
('Downhill from Here',7,4,'2018-12-22','2019-03-22'),
('After Alice',3,1,'2018-02-27','2018-05-28'),
('Harry Potter and the Order of the Phoenix',6,4,'2019-01-10','2019-04-10'),
('My Own Words',2,4,'2018-01-12','2018-04-12'),
('Salt, Fat, Acid, Heat: Mastering the Elements of Good Cooking',4,4,'2018-10-18','2019-01-16'),
('The House Next Door',7,6,'2019-01-09','2019-04-09'),
('The Empire and the Five Kings',6,10,'2018-07-23','2018-10-21'),
('Downhill from Here',3,2,'2018-09-23','2018-12-22'),
('The Alchemist',3,10,'2018-12-23','2019-03-23'),
('Nine Pints',2,9,'2018-11-29','2019-02-27')
GO

