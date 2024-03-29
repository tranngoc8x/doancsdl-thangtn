set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[A_DanhSach_BaiViet] (
	-- Add the parameters for the stored procedure here
	@name nvarchar(255),
	@trangthai int
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if(@name != ' ')
	BEGIN
		SELECT Matin,LEFT(Tieude,50)+'...' as Tieude,Ngaydang,Trangthai FROM TinTuc WHERE Tieude LIKE '%'+@name+'%'
	END
	if(@trangthai !=0)
	BEGIN
		SELECT Matin,LEFT(Tieude,50)+'...' as Tieude,Ngaydang,Trangthai FROM Tintuc WHERE Trangthai = 1
	END
	if(@name != ' ' and @trangthai !=0)
	BEGIN
		SELECT Matin,LEFT(Tieude,50)+'...' as Tieude,Ngaydang,Trangthai FROM Tintuc WHERE Trangthai = 1 AND  Tieude LIKE '%'+@name+'%'
	END
	ELSE
	BEGIN
		SELECT Matin,LEFT(Tieude,50)+'...' as Tieude,Ngaydang,Trangthai FROM Tintuc 
	END
END

