Use QLMT
--Create procedure Muc Tin
--Create procudure MucTin_ChiTiet
Go

Create PROCEDURE MucTin_ChiTiet (@MaMT nchar(7))
AS 
select a.*, b.HoNV + N' ' + b.TenNV AS HoTen
from MucTin a, NhanVien b
where a.MaNV=b.MaNV and MaMT=@MaMT
--Create procedure MucTin_DanhSach
Go
Create PROCEDURE MucTin_DanhSach(@MaNT nchar(2))
AS 
select a.*, b.HoNV + N' ' + b.TenNV AS HoTen, c.TenNT as TenNT
from MucTin a, NhanVien b, NhomTin c
where a.MaNV=b.MaNV and a.MaNT=@MaNT  and a.MaNT=c.MaNT
--Create  PROCEDURE MucTin_DanhSach1
Go
Create PROCEDURE MucTin_DanhSach1(@MaNT nchar(2))
AS 
select a.*, b.HoNV + N' ' + b.TenNV AS HoTen, c.TenNT as TenNT
from MucTin a, NhanVien b, NhomTin c
where a.MaNV=b.MaNV and a.MaNT=@MaNT and a.ChapNhan='1' and a.MaNT=c.MaNT

--Create PROCEDURE MucTin_HienThi
Go
Create PROCEDURE MucTin_HienThi(@MaNT nchar(2))
AS 
select a.*, b.TenNT as TenNT
from MucTin a, NhomTin b
where a.MaNT=@MaNT and ChapNhan='1' and a.MaNT=b.MaNT
--Create procedure MucTin_Moi
Go
Create procedure MucTin_Moi
 AS
select top 10 with ties *, b.TenNT as TenNT 
from MucTin a, NhomTin b
where a.ChapNhan='1' and a.MaNT=b.MaNT
order by NgayDang
--Create procedure MucTin_Sua
Go
Create procedure MucTin_Sua
@MaMT nchar (7),
@TieuDe nvarchar (200),
@TomTat nvarchar (1000),
@NoiDung nvarchar (4000),
@AnhMH nvarchar (50),
@TinNoiBat bit,
@ChapNhan bit,
@MaNT nchar (2),
@MaNV nchar (3)
as
update MucTin
set
TieuDe= @TieuDe,
TomTat = @TomTat,
NoiDung = @NoiDung,
AnhMH =@AnhMH,
TinNoiBat= @TinNoiBat ,
ChapNhan= @ChapNhan ,
MaNT = @MaNT,
MaNV= @MaNV

where MaMT=@MaMT

--Create Drop procedure MucTin_TinNoiBat
Go
Create procedure MucTin_TinNoiBat(@MaNT nchar(2))
AS 
select a.*, b.HoNV + N' ' + b.TenNV AS HoTen, c.TenNT as TenNT
from MucTin a, NhanVien b, NhomTin c
where a.MaNV=b.MaNV and a.MaNT=@MaNT and a.TinNoiBat='1' and a.MaNT=c.MaNT
--Create procedure MucTin_TinNoiBat_All
Go
Create procedure MucTin_TinNoiBat_All
AS 
select a.*, b.HoNV + N' ' + b.TenNV AS HoTen, c.TenNT as TenNT
from MucTin a, NhanVien b, NhomTin c
where a.MaNV=b.MaNV  and a.TinNoiBat='1' and a.MaNT=c.MaNT

--Create procedure MucTin_Them
Go
Create procedure MucTin_Them
@TieuDe nvarchar (200),
@TomTat nvarchar (1000),
@NoiDung nvarchar (4000),
@AnhMH nvarchar (50),
@TinNoiBat bit,
@ChapNhan bit,
@MaNT nchar (2),
@MaNV nchar (3)

AS 

Declare @NgayDang smalldatetime
Declare @MaMT nchar (7)
Declare @MaSoMT int
Declare @Thang nchar(2)
Declare @Nam nchar(2)

set @NgayDang=Getdate()

set @Thang=convert(nchar,month(@NgayDang))
if len(@Thang)=1 set @Thang='0'+@Thang
set @Nam=Right(convert(nchar(4),year(@NgayDang)),2)

select * from MucTin where convert(nchar,month(NgayDang))=convert(nchar,month(@NgayDang)) 
and convert(nchar,year(NgayDang))=convert(nchar,year(@NgayDang))
if @@rowcount=0 set @MaMT=@Thang+@Nam+ '001'
else
begin
  select @MaMT=max(MaMT) from MucTin where convert(nchar,month(NgayDang))=convert(nchar,month(@NgayDang)) 
    and convert(nchar,year(NgayDang))=convert(nchar,year(@NgayDang))

  set @MaSoMT=convert(int,right(@MaMT,3))+1
  if (@MaSoMT<10) set @MaMT= @Thang+@Nam+'00'+convert(nchar,@MaSoMT)
  else if (@MaSoMT<100) set @MaMT=@Thang+@Nam+'0'+convert(nchar,@MaSoMT)
  else set @MaMT=@Thang+@Nam+convert(nchar,@MaSoMT)
end 

insert into MucTin(MaMT,TieuDe ,TomTat ,NoiDung ,AnhMH ,NgayDang,TinNoiBat ,ChapNhan ,MaNT ,MaNV )
values (@MaMT,@TieuDe,@TomTat ,@NoiDung ,@AnhMH ,@NgayDang,@TinNoiBat ,@ChapNhan ,@MaNT ,@MaNV )

--Create procedure MucTin_Xoa
Go
Create procedure MucTin_Xoa(@MaMT nchar(7))
as
delete from MucTin where MaMT=@MaMT


--------------tot--------------------------