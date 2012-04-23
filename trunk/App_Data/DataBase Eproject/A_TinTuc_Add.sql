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
CREATE PROCEDURE A_TinTuc_Add(
	-- Add the parameters for the stored procedure here
	@tieude nvarchar(255),
	@tomtat nvarchar(1000),
	@noidung nvarchar(4000),
	@anh nvarchar(100),
	@ngaydang datetime,
	@noibat int,
	@trangthai int
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT TinTuc(Tieude,Tomtat,Noidung,Anh,Ngaydang,Noibat,Trangthai) VALUES(@tieude,@tomtat,@noidung,@anh,@ngaydang,@noibat,@trangthai)
END
GO
