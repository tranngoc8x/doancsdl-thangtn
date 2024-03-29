set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[A_DoiMK](
	@pass nvarchar(50),
	@oldpass nvarchar(50),
	@id int

)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @curentpass nvarchar(50);
	DECLARE @output int
	SET @curentpass = (SELECT MatKhau from NhanVien where MaNV = @id);
	
	if(@curentpass != @oldpass)
		set @output = 0;
	else
		BEGIN
			UPDATE NhanVien SET MatKhau = @pass where MaNV = @id;
			SET @output = 1;
		END
	RETURN @output;
END

