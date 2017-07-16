SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edition_Table] (
		[edition_id]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[edition_type]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[language_id]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Edition_Table]
		PRIMARY KEY
		CLUSTERED
		([edition_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Edition_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Edition_Table_Language_Table]
	FOREIGN KEY ([language_id]) REFERENCES [dbo].[Language_Table] ([language_id])
ALTER TABLE [dbo].[Edition_Table]
	CHECK CONSTRAINT [FK_Edition_Table_Language_Table]

GO
ALTER TABLE [dbo].[Edition_Table] SET (LOCK_ESCALATION = TABLE)
GO
