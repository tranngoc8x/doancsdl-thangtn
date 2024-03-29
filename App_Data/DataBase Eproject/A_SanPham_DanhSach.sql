set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[A_Sanpham_DanhSach]
	-- Add the parameters for the stored procedure here
	@order int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT dbo.SanPham.MaSP, dbo.SanPham.TenSP, CONVERT(varchar, CONVERT(money, dbo.SanPham.Dongia), 1) as DonGia, dbo.NhomSP.TenNSP
		FROM dbo.NhomSP INNER JOIN
		dbo.SanPham ON dbo.NhomSP.MaNSP = dbo.SanPham.MaNSP
		ORDER BY CASE WHEN @order = 0 THEN dbo.SanPham.TenSP
              WHEN @order = 1 THEN dbo.SanPham.DonGia
              WHEN @order = 2 THEN dbo.NhomSP.TenNSP
              END DESC
END

