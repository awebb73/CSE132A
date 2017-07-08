SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_table] (
		[ISBN]               [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Title]              [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[pub_year]           [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[author_name]        [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[publisher_name]     [nchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[edition_id]         [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[cover_id]           [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[stores_id]          [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[age_rating_id]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[genre_id]           [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_table] SET (LOCK_ESCALATION = TABLE)
GO
