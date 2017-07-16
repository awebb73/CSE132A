SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_Main_Table] (
		[ISBN]            [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[title_name]      [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[author_name]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[seller_id]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[pub_id]          [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[format_id]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_Main_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Book_Main_Table_Format_Table]
	FOREIGN KEY ([format_id]) REFERENCES [dbo].[Format_Table] ([format_id])
ALTER TABLE [dbo].[Book_Main_Table]
	CHECK CONSTRAINT [FK_Book_Main_Table_Format_Table]

GO
ALTER TABLE [dbo].[Book_Main_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Book_Main_Table_Publisher_Table]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[Publisher_Table] ([pub_id])
ALTER TABLE [dbo].[Book_Main_Table]
	CHECK CONSTRAINT [FK_Book_Main_Table_Publisher_Table]

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
