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
CREATE PROCEDURE A_Sanpham_DanhSach
	-- Add the parameters for the stored procedure here
	@order int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT dbo.SanPham.MaSP, dbo.SanPham.TenSP, dbo.SanPham.DonGia, dbo.NhomSP.TenNSP
		FROM dbo.NhomSP INNER JOIN
		dbo.SanPham ON dbo.NhomSP.MaNSP = dbo.SanPham.MaNSP
		ORDER BY CASE WHEN @order = 0 THEN SanPham.TenSP
              WHEN @order = 1 THEN SanPham.DonGia
              WHEN @order = 2 THEN NhomSP.TenNSP
              END ASC
END
GO
