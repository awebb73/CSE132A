SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.InitializeNextTable

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Next_ID_Table VALUES ('Distribution_Table', 1);
	INSERT INTO Next_ID_Table VALUES ('Edition_Table', 1);
	INSERT INTO Next_ID_Table VALUES ('Format_Table', 1);
	INSERT INTO Next_ID_Table VALUES ('Language_Table', 1);
	INSERT INTO Next_ID_Table VALUES ('Publisher_Table', 1);
	INSERT INTO Next_ID_Table VALUES ('Year_Table', 1);
	INSERT INTO Next_ID_Table VALUES ('Seller_Info_Table', 1);
END
GO
