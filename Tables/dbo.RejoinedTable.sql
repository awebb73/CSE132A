SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RejoinedTable] (
		[ISBN]                    [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Book-Title]              [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Book-Author]             [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Year-Of-Publication]     [int] NULL,
		[Publisher]               [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Format]                  [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Edition]                 [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Langauge]                [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Seller]                  [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Distribution]            [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Street]                  [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]                    [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[State]                   [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Zip Code]                [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RejoinedTable] SET (LOCK_ESCALATION = TABLE)
GO
