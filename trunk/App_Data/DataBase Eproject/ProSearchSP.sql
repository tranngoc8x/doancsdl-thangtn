-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SearchSP
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
