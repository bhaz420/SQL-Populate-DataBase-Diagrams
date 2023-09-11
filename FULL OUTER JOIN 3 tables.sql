Select * From ((BookLoans Full OUTER JOIN Borrower ON BookLoans.CardNo = Borrower.CardNo) 

Full OUTER JOIN Books ON BookLoans.BookID = Books.BookID) 