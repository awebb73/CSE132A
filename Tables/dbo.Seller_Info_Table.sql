SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seller_Info_Table] (
		[seller_id]             [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[seller_name]           [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[distribution_type]     [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[hq_id]                 [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_Seller_Info_Table]
		PRIMARY KEY
		CLUSTERED
		([seller_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Seller_Info_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Seller_Info_Table_HQ_Table]
	FOREIGN KEY ([hq_id]) REFERENCES [dbo].[HQ_Table] ([hq_id])
ALTER TABLE [dbo].[Seller_Info_Table]
	CHECK CONSTRAINT [FK_Seller_Info_Table_HQ_Table]

GO
ALTER TABLE [dbo].[Seller_Info_Table] SET (LOCK_ESCALATION = TABLE)
GO
