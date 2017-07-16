SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SetupTables]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DELETE FROM Book_Main_Table
	DELETE FROM Format_Table
	DELETE FROM Edition_Table
	DELETE FROM Language_Table
	DELETE FROM Seller_Info_Table
	DELETE FROM Distribution_Table
	DELETE FROM Publisher_Table
	DELETE FROM Year_Table
	DELETE FROM Next_ID_Table
	
	exec InitializeNextTable;
	
	DECLARE @VAR_userID		int,
			@VAR_location	varchar(200),
			@VAR_age		varchar(50), 
			@VAR_book_rating	int, 
			@VAR_isbn		varchar(14),
			@VAR_book_title varchar(200),
			@VAR_book_author	varchar(200),
			@VAR_pub_year	int,
			@VAR_pub		varchar(200),
			@VAR_format		varchar(50),
			@VAR_edition	varchar(50),
			@VAR_language	varchar(50),
			@VAR_seller		varchar(50),
			@VAR_distribution	varchar(50),
			@VAR_street		varchar(200),
			@VAR_city		varchar(200),
			@VAR_state		varchar(50),
			@VAR_zip		int,
			@VAR_seller_id	int, 
			@VAR_pub_id		int, 
			@VAR_format_id	int,
			@VAR_distribution_id int, 
			@VAR_year_id	int, 
			@VAR_edition_id	int, 
			@VAR_language_id	int,
			@VAR_correct_seller	int

	DECLARE curse1 CURSOR 
	FOR SELECT *
	FROM flat_ratings;
	OPEN curse1;

	FETCH NEXT FROM curse1 INTO @VAR_userID, @VAR_location, @VAR_age, @VAR_book_rating, @VAR_isbn, @VAR_book_title, @VAR_book_author,
								 @VAR_pub_year, @VAR_pub, @VAR_format, @VAR_edition, @VAR_language, @VAR_seller, @VAR_distribution, 
								 @VAR_street, @VAR_city, @VAR_state, @VAR_zip

	WHILE (@@FETCH_STATUS = 0)
	BEGIN 
	begin try
		--insert book if it doesnt exist 
		if (not exists (select * from Language_Table where language_type = @VAR_language)) 
		begin
			exec GetNextId 'Language_Table', @VAR_language_id output;  
			insert into Language_Table values (@VAR_language_id, @VAR_language)
		end

		if (not exists (select * from Edition_Table where edition_type = @VAR_edition and language_id = @VAR_language_id)) 
		begin
			exec GetNextId 'Edition_Table', @NextID = @Var_edition_id output;  
			insert into Edition_Table values (@VAR_edition_id, @VAR_edition, @VAR_language_id)
		end
		
		if (not exists (select * from Format_Table where format_type = @VAR_format and edition_id = @VAR_edition_id)) 
		begin
			exec GetNextId 'Format_Table', @NextID = @VAR_format_id output;  
			insert into Format_Table values (@VAR_format_id, @VAR_format, @VAR_edition_id)
		end
		
		if (not exists (select * from Distribution_Table where dist = @VAR_distribution))
		begin
			exec GetNextId 'Distribution_Table', @NextID = @Var_distribution_id output; 
			insert into Distribution_Table values (@VAR_distribution_id, @VAR_distribution)
		end

		if (not exists (select * from Seller_Info_Table where seller_name = @VAR_seller and distribution_id = @VAR_distribution_id)) 
		begin
			exec GetNextId 'Seller_Info_Table', @NextID = @VAR_seller_id output; 
			insert into Seller_Info_Table values (@VAR_seller_id, @VAR_seller, @VAR_street, @VAR_city, @VAR_zip, @VAR_state, @VAR_distribution_id)
		end
		
		if (not exists (select * from Year_Table where year_num = @VAR_pub_year)) 
		begin
			exec GetNextId 'Year_Table', @NextID = @VAR_year_id output;  
			insert into Year_Table values (@VAR_year_id, @VAR_pub_year)
		end

		if (not exists (select * from Publisher_Table where publisher_name = @VAR_pub and year_id = @VAR_year_id)) 
		begin
			exec GetNextId 'Publisher_Table', @NextID = @VAR_pub_id output; 
			insert into Publisher_Table values (@VAR_pub_id, @VAR_pub, @VAR_year_id)
		end
		
		if (not exists (select * from Book_Main_Table where isbn = @VAR_isbn))
		begin
			select 
				@VAR_correct_seller = seller_id
			from
				Seller_Info_Table, Distribution_Table 
			where
				seller_name = @VAR_seller and Seller_Info_Table.distribution_id = Distribution_Table.distribution_id and 
								Distribution_Table.dist = @VAR_distribution;
			print @Var_correct_seller;
			insert into Book_Main_Table values (@VAR_isbn, @VAR_book_title, @VAR_book_author, @VAR_correct_seller, @VAR_pub_id, @VAR_format_id)
		end
		FETCH NEXT FROM curse1 INTO @VAR_userID, @VAR_location, @VAR_age, @VAR_book_rating, @VAR_isbn, @VAR_book_title, @VAR_book_author,
								 @VAR_pub_year, @VAR_pub, @VAR_format, @VAR_edition, @VAR_language, @VAR_seller, @VAR_distribution, 
								 @VAR_street, @VAR_city, @VAR_state, @VAR_zip
	end try 
	begin catch
		rollback	 
	end catch 
	end

	close curse1
	deallocate curse1
END
GO
