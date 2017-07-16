SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Next_ID_Table] (
		[table_name]        [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[next_id_value]     [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Next_ID_Table] SET (LOCK_ESCALATION = TABLE)
GO
