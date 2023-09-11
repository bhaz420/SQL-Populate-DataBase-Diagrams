CREATE TABLE tbl_book (
		book_BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		book_Title VARCHAR(100) NOT NULL,
		book_PublisherName VARCHAR(100) NOT NULL CONSTRAINT fk_publisher_name1 FOREIGN KEY REFERENCES tbl_publisher(publisher_PublisherName) ON UPDATE CASCADE ON DELETE CASCADE,
	);