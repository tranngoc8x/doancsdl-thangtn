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
alter PROCEDURE LienHe_Add(
	-- Add the parameters 
	@name nvarchar(50),
	@phone nvarchar(20),
	@email nvarchar(50),
	@add nvarchar(200),
	@noidung nvarchar(2000)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT Contacts(Names,Phone,Email,Contents,Address,Ngaygui) VALUES(@name,@phone,@email,@noidung,@add,GETDATE())
END