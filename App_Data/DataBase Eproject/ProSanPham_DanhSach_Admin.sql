USE [QLMT]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_DanhSach_Admin]    Script Date: 03/10/2012 19:27:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SanPham_DanhSach_Admin]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


SELECT     SanPham.MaSP, SanPham.TenSP, CONVERT(varchar, CONVERT(money, SanPham.DonGia), 1) as DonGia, NhomSP.TenNSP
FROM         SanPham INNER JOIN
             NhomSP ON SanPham.MaNSP = NhomSP.MaNSP
 END