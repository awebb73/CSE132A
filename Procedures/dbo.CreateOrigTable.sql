SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateOrigTable] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DROP TABLE IF EXISTS dbo.RejoinedTable;

	CREATE TABLE dbo.RejoinedTable([ISBN] varchar(15),
								   [Book-Title] varchar(200),
								   [Book-Author] varchar(200),
								   [Year-Of-Publication] int,
								   [Publisher] varchar(200),
								   [Format] varchar (200),
								   [Edition] varchar(200),
								   [Langauge] varchar(200),
								   [Seller] varchar(200),
								   [Distribution] varchar(200),
								   [Street] varchar(200),
								   [City] varchar(200),
								   [State] varchar(200),
								   [Zip Code] int)
	insert into RejoinedTable 
	select ISBN, title_name, author_name, year_num, publisher_name, format_type, edition_type, language_type, seller_name,
		   dist, street_address, city_name, state_name, zip_code 
	from 
		Book_Main_Table AS book_table
		left join Seller_Info_Table AS seller_table
	ON
		book_table.seller_id = seller_table.seller_id
		
		left join Distribution_Table AS dist_table
	ON
		seller_table.distribution_id = dist_table.distribution_id

		left join Publisher_Table AS pub_table
	ON
		book_table.pub_id = pub_table.pub_id

		left Join Year_Table AS year_2_table
	ON
		pub_table.year_id = year_2_table.year_id

		left join Format_Table AS form_table
	ON
		book_table.format_id = form_table.format_id

		left join Edition_Table AS edition_34_table
	ON
		form_table.edition_id = edition_34_table.edition_id
		
		left join Language_Table AS language_17_table
	ON
		edition_34_table.language_id = language_17_table.language_id
			
END
GO
