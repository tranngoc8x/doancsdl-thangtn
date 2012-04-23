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
CREATE PROCEDURE A_SanPham_Edit
	-- Add the parameters for the stored procedure here
	@id int,
	@TenSP nvarchar(200),
  @AnhSP nvarchar(50),
  @MoTaSP nvarchar(2000),
  @DonGia money,
  @MaNSP int,
  @Feature tinyint,
  @Trangthai int,
  @Soluong int,
  @Giamgia money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [TNTCOMPUTER].[dbo].[SanPham]
	SET [TenSP] = @TenSP 
      ,[AnhSP] = @AnhSP 
      ,[MoTaSP] = @MoTaSP 
      ,[DonGia] = @DonGia 
      ,[MaNSP] = @MaNSP 
      ,[Feature] = @Feature 
      ,[Trangthai] = @Trangthai 
      ,[Soluong] = @Soluong 
      ,[Giamgia] = @Giamgia 
	WHERE MaSP = @id
END