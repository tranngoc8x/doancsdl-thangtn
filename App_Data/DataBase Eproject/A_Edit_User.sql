set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[A_Edit_User](
	-- Add the parameters for the stored procedure here
	@id int,
	@HotenNV nvarchar(50),
    @Email nvarchar(50),
    @DiaChi nvarchar(50),
    @Phone nvarchar(50),
    @Ngaysinh nvarchar(50)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [TNTCOMPUTER].[dbo].[NhanVien]
	SET  
      [HotenNV] = @HotenNV
      ,[Email] = @Email
      ,[DiaChi] = @DiaChi
      ,[Phone] = @Phone
      ,[Ngaysinh] = convert(smalldatetime,@Ngaysinh)
 WHERE [MaNV] = @id
END

