CREATE PROC BookCopiesAtAllSharpstown 
(@bookTitle varchar(70) = 'The Lost Tribe', @branchName varchar(70) = 'Sharpstown')
AS
SELECT .BookCopies.BranchID AS [Branch ID], branch.library_branch_BranchName AS [Branch Name],
	   BookCopies. Number_Of_Copies AS [Number of Copies],
	   Books.Title AS [Book Title]
	   FROM BookCopies AS copies
			INNER JOIN Books AS book ON copies.Number_Of_Copies.branchId = book.BookID
			INNER JOIN tbl_library_branch AS branch ON BookCopies = branch.library_branch_BranchID
	   WHERE book.Title = @bookTitle AND branch.library_branch_BranchName = @branchName
GO
EXEC dbo.bookCopiesAtAllSharpstown 
