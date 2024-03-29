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
	@txtkey nvarchar(200),
	@type int,
	@pricefrom money,
	@priceto money
AS
BEGIN
	SET NOCOUNT ON;
	
	if (@txtkey != '')
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and Trangthai = 1
		END
	if(@txtkey != '' and @type != 0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and MaNSP=@type and Trangthai = 1
		END
	if(@txtkey != '' and @type != 0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and MaNSP=@type and Dongia >= @pricefrom and Trangthai = 1
		END
	 if(@txtkey != '' and @type != 0 and @priceto !=0 )
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and MaNSP=@type and Dongia <= @priceto and Trangthai = 1
		END
	 if(@txtkey != '' and @type != 0 and @priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and MaNSP=@type and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	if(@txtkey != '' and @priceto !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and Dongia <= @priceto and Trangthai = 1
		END
	if(@txtkey != '' and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and Dongia >= @pricefrom and Trangthai = 1
		END
	if(@txtkey != '' and @priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like '%'+ @txtkey+'%' and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	--end 1xxx
	--start 0xxx-------------------------------------------------
	if(@type != 0)
		BEGIN
			SELECT * FROM Sanpham where MaNSP=@type and Trangthai = 1
		END
	if(@type != 0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where MaNSP=@type and Dongia >= @pricefrom and Trangthai = 1
		END
	 if(@type != 0 and @priceto !=0 )
		BEGIN
			SELECT * FROM Sanpham where MaNSP=@type and Dongia <= @priceto and Trangthai = 1
		END
	 if(@type != 0 and @priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where MaNSP=@type and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	if(@priceto !=0)
		BEGIN
			SELECT * FROM Sanpham where Dongia <= @priceto and Trangthai = 1
		END
	if(@pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where Dongia >= @pricefrom and Trangthai = 1
		END
	if(@priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	ELSE
		BEGIN
			SELECT * FROM Sanpham where Trangthai = 1
		END
END