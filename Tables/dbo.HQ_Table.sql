SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HQ_Table] (
		[hq_id]             [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[street_number]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[street_name]       [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city_zip]          [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city_name]         [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[state_name]        [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_HQ_Table]
		PRIMARY KEY
		CLUSTERED
		([hq_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HQ_Table] SET (LOCK_ESCALATION = TABLE)
GO
