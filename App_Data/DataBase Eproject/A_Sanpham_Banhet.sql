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
alter PROCEDURE A_Sanpham_Banhet
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT      dbo.SanPham.MaSP, dbo.SanPham.TenSP, dbo.SanPham.AnhSP, dbo.SanPham.MoTaSP, dbo.SanPham.DonGia, dbo.SanPham.MaNSP, 
                      dbo.SanPham.Feature, dbo.SanPham.Soluot, dbo.SanPham.Trangthai, dbo.SanPham.Soluong, dbo.SanPham.Giamgia, dbo.SanPham.Chitiet, 
                      dbo.NhomSP.TenNSP
FROM         dbo.SanPham INNER JOIN
                      dbo.NhomSP ON dbo.SanPham.MaNSP = dbo.NhomSP.MaNSP
WHERE     (dbo.SanPham.Soluong = 0)
END
GO
