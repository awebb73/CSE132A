SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seller_Info_Table] (
		[seller_id]           [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[seller_name]         [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[street_address]      [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city_name]           [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[zip_code]            [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[state_name]          [nchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[distribution_id]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Seller_Info_Table]
		PRIMARY KEY
		CLUSTERED
		([seller_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Seller_Info_Table]
	WITH CHECK
	ADD CONSTRAINT [FK_Seller_Info_Table_Distribution_Table]
	FOREIGN KEY ([distribution_id]) REFERENCES [dbo].[Distribution_Table] ([distribution_id])
ALTER TABLE [dbo].[Seller_Info_Table]
	CHECK CONSTRAINT [FK_Seller_Info_Table_Distribution_Table]

GO
ALTER TABLE [dbo].[Seller_Info_Table] SET (LOCK_ESCALATION = TABLE)
GO
