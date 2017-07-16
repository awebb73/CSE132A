SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Distribution_Table] (
		[distribution_id]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[dist]                [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Distribution_Table]
		PRIMARY KEY
		CLUSTERED
		([distribution_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Distribution_Table] SET (LOCK_ESCALATION = TABLE)
GO
