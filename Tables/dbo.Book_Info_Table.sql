SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_Info_Table] (
		[book_id]            [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[edition_number]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[format]             [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[language]           [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[pub_id]             [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Book_Info_Table]
		PRIMARY KEY
		CLUSTERED
		([book_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_Info_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Book_Info_Table_Publisher_Table]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[Publisher_Table] ([pub_id])
ALTER TABLE [dbo].[Book_Info_Table]
	CHECK CONSTRAINT [FK_Book_Info_Table_Publisher_Table]

GO
ALTER TABLE [dbo].[Book_Info_Table] SET (LOCK_ESCALATION = TABLE)
GO
