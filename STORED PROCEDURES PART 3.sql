CREATE PROC dbo.NoLoans
AS
SELECT Borrower.Name FROM Borrower
	WHERE NOT EXISTS
		(SELECT * FROM BookLoans
		WHERE BookLoans.CardNo = Borrower.CardNo)
GO
EXEC dbo.NoLoans