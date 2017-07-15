SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publisher_Table] (
		[pub_id]             [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[publisher_name]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[year_id]            [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Publisher_Table]
		PRIMARY KEY
		CLUSTERED
		([pub_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Publisher_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Publisher_Table_Year_Table]
	FOREIGN KEY ([year_id]) REFERENCES [dbo].[Year_Table] ([year_id])
ALTER TABLE [dbo].[Publisher_Table]
	CHECK CONSTRAINT [FK_Publisher_Table_Year_Table]

GO
ALTER TABLE [dbo].[Publisher_Table] SET (LOCK_ESCALATION = TABLE)
GO
