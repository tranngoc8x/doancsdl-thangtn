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
CREATE PROCEDURE AddOrderDetails (
	---biến của bảng details
	@masp INT
	,@price MONEY
	,@soluong INT
	,@giamgia MONEY
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	DECLARE @id INT

	SET @id = (
			SELECT MAX(OrderID)
			FROM Orders
			);

--insert vao bang order detail
	INSERT OrderDetails (
		OrderID
		,MaSP
		,UnitPrice
		,Quantity
		,Discount
		)
	VALUES (
		@id
		,@masp
		,@price
		,@soluong
		,@giamgia
		)
END
