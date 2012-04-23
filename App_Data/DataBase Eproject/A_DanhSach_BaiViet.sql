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
CREATE PROCEDURE A_DanhSach_BaiViet (
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
	if(@name != '')
	BEGIN
		SELECT Matin,LEFT(Tieude,50) as Tieude,Ngaydang,Trangthai FROM TinTuc WHERE Tieude LIKE '%'+@name+'%'
	END
	if(@trangthai !='')
	BEGIN
		SELECT Matin,LEFT(Tieude,50) as Tieude,Ngaydang,Trangthai FROM Tintuc WHERE Trangthai = 1
	END
	if(@name != '' and @trangthai !='')
	BEGIN
		SELECT Matin,LEFT(Tieude,50) as Tieude,Ngaydang,Trangthai FROM Tintuc WHERE Trangthai = 1 AND  Tieude LIKE '%'+@name+'%'
	END
	ELSE
	BEGIN
		SELECT Matin,LEFT(Tieude,50) as Tieude,Ngaydang,Trangthai FROM Tintuc 
	END
END
GO




















