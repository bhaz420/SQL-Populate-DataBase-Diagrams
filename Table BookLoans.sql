SELECT * FROM tbl_borrower

	CREATE TABLE tbl_book_loans (
		book_loans_LoansID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		book_loans_BookID INT NOT NULL CONSTRAINT fk_book_id1 FOREIGN KEY REFERENCES tbl_book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		book_loans_BranchID INT NOT NULL CONSTRAINT fk_branch_id1 FOREIGN KEY REFERENCES tbl_library_branch(library_branch_BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
		book_loans_CardNo INT NOT NULL CONSTRAINT fk_cardno FOREIGN KEY REFERENCES tbl_borrower(borrower_CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
		book_loans_DateOut VARCHAR(50) NOT NULL,
		book_loans_DueDate VARCHAR(50) NOT NULL,
	);
