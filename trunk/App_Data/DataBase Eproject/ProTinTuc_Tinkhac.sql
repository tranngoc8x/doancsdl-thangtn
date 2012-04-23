Create PROCEDURE TinTuc_Tinkhac(@MaTin int)
AS 
select top 10 Matin,LEFT(Tieude,50) as Tieude
from TinTuc
where Matin <> @MaTin and Trangthai=1 ORDER BY Matin DESC
