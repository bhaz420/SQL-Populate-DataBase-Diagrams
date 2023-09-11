USE [Library_records]
GO

INSERT INTO [dbo].[Borrower]
           ([CardNo]
           ,[Name]
           ,[Phone]
           ,[Address])
     VALUES
           (<CardNo, int,>
           ,<Name, varchar(255),>
           ,<Phone, varchar(255),>
           ,<Address, varchar(255),>)
GO


