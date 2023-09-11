CREATE PROC dbo.bookCopiesAtAllBranches 
(@bookTitle varchar(70) = 'The Lost Tribe')
AS
SELECT copies.book_copies_BranchID AS [Branch ID], branch.library_branch_BranchName AS [Branch Name],
	   copies.book_copies_No_Of_Copies AS [Number of Copies],
	   book.book_Title AS [Book Title]
	   FROM tbl_book_copies AS copies
			INNER JOIN tbl_book AS book ON copies.book_copies_BookID = book.book_BookID
			INNER JOIN tbl_library_branch AS branch ON book_copies_BranchID = branch.library_branch_BranchID
	   WHERE book.book_Title = @bookTitle 
GO
EXEC dbo.bookCopiesAtAllBranches