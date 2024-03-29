set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sanpham_Chitiet]
	-- Add the parameters for the stored procedure here
	 @MaSP int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select MaSP, TenSP,MoTaSP,convert(int,DonGia) as DonGia,AnhSP,MaNSP,Soluot from SanPham where MaSP=@MaSP and Trangthai = 1;
	update Sanpham set Soluot = Soluot +1 where MaSP = @MaSP
END


