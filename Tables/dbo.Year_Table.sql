SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Year_Table] (
		[year_id]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[year]        [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_Year_Table]
		PRIMARY KEY
		CLUSTERED
		([year_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Year_Table] SET (LOCK_ESCALATION = TABLE)
GO
