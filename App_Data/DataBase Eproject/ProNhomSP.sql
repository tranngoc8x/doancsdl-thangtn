set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER procedure [dbo].[NhomSP_DanhSach]
as
select * from NhomSP where Trangthai = 1;
--Create procedure NhomSP_Sua

