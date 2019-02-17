-- Create a new stored procedure called 'getBranchID' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'getBranchID'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.getBranchID
GO
CREATE PROCEDURE dbo.getBranchID
    @branchName VARCHAR(200)
AS
    SELECT BranchID FROM LIBRARY_BRANCH WHERE LIBRARY_BRANCH.BranchName = @branchName
GO

EXECUTE dbo.getBranchID @branchName = 'Sharpstown Library'
GO

-- 1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
-- Create a new stored procedure called 'getBookCount' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'getBookCountAtBranch'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.getBookCountAtBranch
GO
CREATE PROCEDURE dbo.getBookCountAtBranch
    @branch VARCHAR(100), 
    @book VARCHAR(200) 

AS
    SELECT cop.Number_of_Copies as 'Branch Copies'
    FROM BOOK_COPIES as cop
    INNER JOIN LIBRARY_BRANCH as lb ON cop.BranchID = lb.BranchID
    WHERE lb.BranchName = @branch AND cop.BookID = @book
GO

EXEC dbo.getBookCountAtBranch @branch = 'Sharpstown Library', @book = 'The Lost Tribe';

-- 2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch?
-- Create a new stored procedure called 'getBookCount' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'getBookCount'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.getBookCount
GO
CREATE PROCEDURE dbo.getBookCount
    @book VARCHAR(200) 

AS
    SELECT  lb.BranchName as 'Library', cop.Number_of_Copies as 'Branch Copies'
    FROM BOOK_COPIES as cop
    INNER JOIN LIBRARY_BRANCH as lb ON cop.BranchID = lb.BranchID
    WHERE cop.BookID = @book
;
GO

EXECUTE dbo.getBookCount @book = 'The Lost Tribe'
GO


-- 3.) Retrieve the names of all borrowers who do not have any books checked out.
-- Create a new stored procedure called 'NoBooksCheckedOut' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'NoBooksCheckedOut'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.NoBooksCheckedOut
GO
CREATE PROCEDURE dbo.NoBooksCheckedOut
AS
    SELECT bor.Name 
    FROM BOOK_LOANS loan
    RIGHT JOIN BORROWER bor 
    ON loan.CardNo = bor.CardNo
    GROUP BY bor.Name, loan.CardNo
    HAVING COUNT(*) - 1 = 0
;
GO

EXECUTE dbo.NoBooksCheckedOut 
GO


-- 4.) For each book that is loaned out from the "Sharpstown" 
-- branch and whose DueDate is today, retrieve the book title, 
-- the borrower's name, and the borrower's address.
-- Create a new stored procedure called 'DueToday' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'DueToday'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.DueToday
GO
CREATE PROCEDURE dbo.DueToday
    @branch VARCHAR(100)
AS
    SELECT loan.BookID, bor.Name, bor.Addresss
    FROM BOOK_LOANS loan
    INNER JOIN BORROWER bor ON loan.CardNo = bor.CardNo
    INNER JOIN LIBRARY_BRANCH as lb ON loan.BranchID = lb.BranchID
    WHERE CONVERT(varchar(10), loan.DateDue, 102) 
        = CONVERT(varchar(10), GETDATE(), 102) 
        AND lb.BranchName = @branch
GO

EXECUTE dbo.DueToday 'Sharpstown Library'
GO

-- 5.) For each library branch, retrieve the branch name
-- and the total number of books loaned out from that branch.
-- Create a new stored procedure called 'BranchLoaned' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'BranchLoaned'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.BranchLoaned
GO
CREATE PROCEDURE dbo.BranchLoaned
AS
    SELECT lb.BranchName, COUNT(*)
    FROM LIBRARY_BRANCH lb
    INNER JOIN BOOK_LOANS bl ON lb.BranchID = bl.BranchID
    GROUP BY lb.BranchName


GO

EXECUTE dbo.BranchLoaned
GO

 -- 6.) Retrieve the names, addresses, and the number 
 -- of books checked out for all borrowers who have more 
 -- than five books checked out.

-- Create a new stored procedure called 'GetBorrowersWithNumCheckouts' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'GetBorrowersWithNumCheckouts'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.GetBorrowersWithNumCheckouts
GO
CREATE PROCEDURE dbo.GetBorrowersWithNumCheckouts
    @numCheckouts INT
AS
    SELECT br.Name, br.Addresss, COUNT(bl.CardNo) as 'Books Checked Out'
    FROM BORROWER br
    INNER JOIN BOOK_LOANS bl ON br.CardNo = bl.CardNo
    GROUP BY br.Name, br.Addresss, bl.CardNo
    HAVING COUNT(bl.CardNo) > @numCheckouts
    

GO

EXECUTE dbo.GetBorrowersWithNumCheckouts @numCheckouts = 5
GO

-- 7.) For each book authored (or co-authored) by "Stephen King",
-- retrieve the title and the number of copies owned by the 
-- library branch whose name is "Central".

-- Create a new stored procedure called 'BooksByAuthorAtBranch' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'BooksByAuthorAtBranch'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.BooksByAuthorAtBranch
GO
CREATE PROCEDURE dbo.BooksByAuthorAtBranch
    @author VARCHAR(50),
    @branch VARCHAR(100)
AS
    SELECT b.Title, bc.Number_Of_Copies as 'Copies'
    FROM BOOK_COPIES bc
    INNER JOIN BOOKS b ON b.Title = bc.BookID
    INNER JOIN BOOK_AUTHORS ba ON ba.BookID = b.BookID
    INNER JOIN LIBRARY_BRANCH lb ON lb.BranchID = bc.BranchID
    WHERE ba.AuthorName LIKE CONCAT('%', @author, '%') 
        AND lb.BranchName = @branch

GO

EXECUTE dbo.BooksByAuthorAtBranch 'Stephen King', 'Central Library'
GO

