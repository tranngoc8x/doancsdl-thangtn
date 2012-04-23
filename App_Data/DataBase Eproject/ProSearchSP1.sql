set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SearchSP]
	-- Add the parameters for the stored procedure here
	@txtkey nvarchar(255),
	@type int,
	@pricefrom int,
	@priceto int
AS
BEGIN
	SET NOCOUNT ON;
	if (@txtkey != '')
		BEGIN
			Select * From Sanpham where OBJECT_DEFINITION(TenSP) like '%'+ @txtkey+'%' and Trangthai = 1;
		END
END

