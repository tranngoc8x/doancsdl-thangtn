set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

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
ALTER PROCEDURE  [dbo].[CusLogin]
@user nvarchar(50), 
@pass nvarchar(50)
AS
BEGIN
	DECLARE @OutPut int
	DECLARE @KiemTraTenDangNhap int
	DECLARE @KiemTraMatKhau int
	DECLARE @Hoten nvarchar(255) 
	DECLARE @sid nvarchar(255) 

	SELECT @KiemTraTenDangNhap=isnull(Count(cus.username),0) 
	FROM  Customers cus 
	WHERE cus.username=@user

	IF @KiemTraTenDangNhap=0 
		SET @OutPut=1 -- Sai TenDangNhap
	ELSE


	BEGIN
		SELECT @KiemTraMatKhau = isnull(count(*),0) 
		FROM Customers cus 
		WHERE cus.username=@user 
			AND cus.password=(@pass)
--DEPWDENCRIPT :: lấy ra
--pwdencrypt :: insert

		IF @KiemTraMatKhau=0
			SET @OutPut=1 -- Sai mật khẩu
		ELSE
			BEGIN
				SET @OutPut=0
				SET @Hoten =(SELECT Fullname
							FROM Customers cus 
							WHERE cus.username=@user 
							AND cus.password=@pass)
				SET @sid  =(SELECT CustomerID
							FROM Customers cus 
							WHERE cus.username=@user 
							AND cus.password=@pass)
			END
	END
	SELECT @OutPut AS result ,@sid as manv,@Hoten as hoten
END 
