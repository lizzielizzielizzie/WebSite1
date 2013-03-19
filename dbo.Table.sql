CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Username] NCHAR(10) NOT NULL, 
    [Password] NCHAR(10) NOT NULL, 
    [RealName] NCHAR(10) NOT NULL, 
    [Email] NCHAR(10) NOT NULL, 
    [Messages] NCHAR(10) NOT NULL DEFAULT 0
)
