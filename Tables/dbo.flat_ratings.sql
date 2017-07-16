SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[flat_ratings] (
		[User-ID]                 [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Location]                [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]                     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Book-Rating]             [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[ISBN]                    [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Book-Title]              [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Book-Author]             [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Year-Of-Publication]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Publisher]               [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Format]                  [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Edition]                 [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Language]                [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Seller]                  [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Distribution]            [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Street]                  [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]                    [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[State]                   [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Zip Code]                [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[flat_ratings] SET (LOCK_ESCALATION = TABLE)
GO
