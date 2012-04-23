CREATE PROCEDURE SanPham_Title_NhomSP(@MaNSP int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TenNSP FROM NhomSP WHERE MaNSP=@MaNSP
END
