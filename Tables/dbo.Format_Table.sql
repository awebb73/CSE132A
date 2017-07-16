SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Format_Table] (
		[format_id]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[format_type]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[edition_id]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Book_Info_Table]
		PRIMARY KEY
		CLUSTERED
		([format_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Format_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Format_Table_Edition_Table]
	FOREIGN KEY ([edition_id]) REFERENCES [dbo].[Edition_Table] ([edition_id])
ALTER TABLE [dbo].[Format_Table]
	CHECK CONSTRAINT [FK_Format_Table_Edition_Table]

GO
ALTER TABLE [dbo].[Format_Table] SET (LOCK_ESCALATION = TABLE)
GO
