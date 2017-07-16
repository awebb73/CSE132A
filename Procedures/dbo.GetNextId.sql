SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.GetNextId
	@TableName varchar(256), 
	@NextId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select @NextId = -1;

	select 
		@NextId = next_id_value 
	FROM
		Next_ID_Table
	WHERE 
		table_name = @TableName;

	UPDATE 
		Next_ID_Table
	SET
		next_id_value = next_id_value + 1
	WHERE
		table_name = @TableName;
END
GO
