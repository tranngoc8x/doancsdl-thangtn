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
/*Đầu vào:
		 TenDangNhap
		 MatKhau
	Đầu ra: 
		 - Neu =1 -> Sai tên đăng nhập-Sai mật khẩu
         - Neu =2 -> Tên đăng nhập đang bị khóa
         - Neu =0 -> Tiến hành đăng nhập
*/	
CREATE PROCEDURE  [dbo].LoginSys
@user nvarchar(50), 
@pass nvarchar(50)
AS
BEGIN
	DECLARE @OutPut int
	DECLARE @KiemTraTenDangNhap int
	DECLARE @KiemTraMatKhau int
	DECLARE @Trangthai int 

	SELECT @KiemTraTenDangNhap=isnull(Count(nv.Tendangnhap),0) 
		FROM NhanVien nv 
		WHERE nv.Tendangnhap=@user


	SELECT @Trangthai =isnull(nv.Trangthai ,0)
		FROM NhanVien nv 
		WHERE nv.Tendangnhap=@user


	IF @KiemTraTenDangNhap=0 
		SET @OutPut=1 -- Sai TenDangNhap
	ELSE


	BEGIN
		SELECT @KiemTraMatKhau =isnull(count(*),0) 
			FROM NhanVien nv 
		WHERE nv.Tendangnhap=@user 
			AND nv.MatKhau=@pass


		IF @KiemTraMatKhau=0
			SET @OutPut=1 -- Sai mật khẩu
		ELSE
			BEGIN
			   IF @Trangthai=0
					SET @OutPut=2-- TenDangNhap đang bị khóa 
			   ELSE
					SET @OutPut=0
			END
	END
	SELECT @OutPut AS KetQua
END 