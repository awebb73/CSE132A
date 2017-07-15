SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_Main_Table] (
		[ISBN]            [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[title_name]      [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[author_name]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[seller_id]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[book_id]         [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_Main_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Book_Main_Table_Book_Info_Table]
	FOREIGN KEY ([book_id]) REFERENCES [dbo].[Book_Info_Table] ([book_id])
ALTER TABLE [dbo].[Book_Main_Table]
	CHECK CONSTRAINT [FK_Book_Main_Table_Book_Info_Table]

GO
ALTER TABLE [dbo].[Book_Main_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Book_Main_Table_Seller_Info_Table]
	FOREIGN KEY ([seller_id]) REFERENCES [dbo].[Seller_Info_Table] ([seller_id])
ALTER TABLE [dbo].[Book_Main_Table]
	CHECK CONSTRAINT [FK_Book_Main_Table_Seller_Info_Table]

GO
ALTER TABLE [dbo].[Book_Main_Table] SET (LOCK_ESCALATION = TABLE)
GO
