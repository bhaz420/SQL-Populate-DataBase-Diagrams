CREATE TABLE tbl_library_branch (
		library_branch_BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		library_branch_BranchName VARCHAR(100) NOT NULL,
		library_branch_BranchAddress VARCHAR(200) NOT NULL,
	);