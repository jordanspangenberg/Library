-- Create a new database called 'LibrarySystem'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'LibrarySystem'
)
CREATE DATABASE LibrarySystem
GO

USE LibrarySystem

IF OBJECT_ID('[dbo].[LIBRARY_BRANCH]', 'U') IS NOT NULL
DROP TABLE [dbo].[LIBRARY_BRANCH]
GO
CREATE TABLE [dbo].[LIBRARY_BRANCH]
(
    [BranchID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), -- Primary Key column
    [BranchName] VARCHAR(50) NOT NULL,
    [Address] VARCHAR(50) NOT NULL
);
GO


-- Create a new table called '[PUBLISHER]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[PUBLISHER]', 'U') IS NOT NULL
DROP TABLE [dbo].[PUBLISHER]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[PUBLISHER]
(
    [PublisherName] VARCHAR(50) NOT NULL PRIMARY KEY, -- Primary Key column
    [Address] VARCHAR(150) NOT NULL,
    [Phone] VARCHAR(15) NOT NULL
);
GO

-- Create a new table called '[BOOKS]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BOOKS]', 'U') IS NOT NULL
DROP TABLE [dbo].[BOOKS]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BOOKS]
(
    [BookID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), -- Primary Key column
    [Title] VARCHAR(200) NOT NULL ,
    [PublisherName] VARCHAR(50) NOT NULL CONSTRAINT fk_PublisherName FOREIGN KEY REFERENCES PUBLISHER(PublisherName) ON UPDATE CASCADE ON DELETE CASCADE
);
GO


-- Create a new table called '[BORROWER]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BORROWER]', 'U') IS NOT NULL
DROP TABLE [dbo].[BORROWER]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BORROWER]
(
    [CardNo] INT NOT NULL PRIMARY KEY IDENTITY (1,1), -- Primary Key column
    [Name] VARCHAR(50) NOT NULL,
    [Addresss] VARCHAR(100) NOT NULL,
    [Phone] VARCHAR(15) NOT NULL
);
GO


-- Create a new table called '[BOOK_COPIES]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BOOK_COPIES]', 'U') IS NOT NULL
DROP TABLE [dbo].[BOOK_COPIES]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BOOK_COPIES]
(
    [BookID] INT NOT NULL CONSTRAINT fk_BookID FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE, -- Primary Key column
    [BranchID] INT NOT NULL CONSTRAINT fk_BranchID FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
    [Number_Of_Copies] INT NOT NULL
);
GO


-- Create a new table called '[BOOK_LOANS]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BOOK_LOANS]', 'U') IS NOT NULL
DROP TABLE [dbo].[BOOK_LOANS]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BOOK_LOANS]
(
    [BookID] INT NOT NULL CONSTRAINT fk_LoanTitle FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
    [BranchID] INT NOT NULL CONSTRAINT fk_Loan_BranchID FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
    [CardNo] INT NOT NULL CONSTRAINT fk_CardNo FOREIGN KEY REFERENCES BORROWER(CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
    [DateOut] DATE NOT NULL,
    [DateDue] DATE NOT NULL
);
GO


-- Create a new table called '[BOOK_AUTHORS]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BOOK_AUTHORS]', 'U') IS NOT NULL
DROP TABLE [dbo].[BOOK_AUTHORS]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BOOK_AUTHORS]
(
    [BookID] INT NOT NULL PRIMARY KEY CONSTRAINT fk_Author_BookID FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE, -- Primary Key column
    [AuthorName] VARCHAR(50) NOT NULL
);
GO

SELECT * FROM INFORMATION_SCHEMA.COLUMNS