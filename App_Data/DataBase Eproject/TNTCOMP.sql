/****** Object:  ForeignKey [FK_Order Details_SanPham]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order Details_SanPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_Order Details_SanPham]
GO
/****** Object:  ForeignKey [FK_Order_Details_Orders]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Orders]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_Order_Details_Orders]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_SanPham_NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SanPham_NhomSP]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_NhomSP]
GO
/****** Object:  Check [CK_Discount]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
BEGIN
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [CK_Discount]

END
GO
/****** Object:  Check [CK_Quantity]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
BEGIN
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [CK_Quantity]

END
GO
/****** Object:  Check [CK_UnitPrice]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
BEGIN
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [CK_UnitPrice]

END
GO
/****** Object:  StoredProcedure [dbo].[A_LH_Detail]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_LH_Detail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_LH_Detail]
GO
/****** Object:  StoredProcedure [dbo].[A_Delete_LH]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Delete_LH]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_Delete_LH]
GO
/****** Object:  StoredProcedure [dbo].[A_DanhSach_Lienhe]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhSach_Lienhe]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_DanhSach_Lienhe]
GO
/****** Object:  StoredProcedure [dbo].[LienHe_Add]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LienHe_Add]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LienHe_Add]
GO
/****** Object:  StoredProcedure [dbo].[A_DoiMK]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DoiMK]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_DoiMK]
GO
/****** Object:  StoredProcedure [dbo].[A_Edit_User]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Edit_User]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_Edit_User]
GO
/****** Object:  StoredProcedure [dbo].[A_DanhSach_BaiViet]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhSach_BaiViet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_DanhSach_BaiViet]
GO
/****** Object:  StoredProcedure [dbo].[A_TinTuc_Add]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_TinTuc_Add]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_TinTuc_Add]
GO
/****** Object:  StoredProcedure [dbo].[Tintuc_Rand]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tintuc_Rand]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Tintuc_Rand]
GO
/****** Object:  StoredProcedure [dbo].[A_News_Delete]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_News_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_News_Delete]
GO
/****** Object:  StoredProcedure [dbo].[A_News_Edit_Select]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_News_Edit_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_News_Edit_Select]
GO
/****** Object:  StoredProcedure [dbo].[A_TinTuc_Sua]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_TinTuc_Sua]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_TinTuc_Sua]
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_DanhSach]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TinTuc_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_Moi]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_Moi]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TinTuc_Moi]
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_TinNoiBat]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_TinNoiBat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TinTuc_TinNoiBat]
GO
/****** Object:  StoredProcedure [dbo].[A_DanhsachCus]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhsachCus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_DanhsachCus]
GO
/****** Object:  StoredProcedure [dbo].[CusLogin]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CusLogin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CusLogin]
GO
/****** Object:  StoredProcedure [dbo].[Resgister]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resgister]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Resgister]
GO
/****** Object:  StoredProcedure [dbo].[A_Cus_Detail]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Cus_Detail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_Cus_Detail]
GO
/****** Object:  StoredProcedure [dbo].[A_CustomerDel]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_CustomerDel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_CustomerDel]
GO
/****** Object:  StoredProcedure [dbo].[Update_Cus]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Update_Cus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Update_Cus]
GO
/****** Object:  StoredProcedure [dbo].[Chitiet_Nguoimua]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chitiet_Nguoimua]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Chitiet_Nguoimua]
GO
/****** Object:  View [dbo].[VIEW_A_SanPham_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VIEW_A_SanPham_DanhSach]'))
DROP VIEW [dbo].[VIEW_A_SanPham_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Detail]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Detail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_NhomSP_Detail]
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Sua]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Sua]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_NhomSP_Sua]
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Them]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Them]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_NhomSP_Them]
GO
/****** Object:  View [dbo].[View_NhomSP_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_NhomSP_DanhSach]'))
DROP VIEW [dbo].[View_NhomSP_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[A_DanhmucSP_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhmucSP_DanhSach]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_DanhmucSP_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[A_Sanpham_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Sanpham_DanhSach]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_Sanpham_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Title_NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_Title_NhomSP]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SanPham_Title_NhomSP]
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Edit_Select]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Edit_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_NhomSP_Edit_Select]
GO
/****** Object:  StoredProcedure [dbo].[NhomSP_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhomSP_DanhSach]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[NhomSP_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[A_DanhmucSP_Xoa]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhmucSP_Xoa]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_DanhmucSP_Xoa]
GO
/****** Object:  StoredProcedure [dbo].[AddNewOrder]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewOrder]
GO
/****** Object:  StoredProcedure [dbo].[AddOrderDetails]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddOrderDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddOrderDetails]
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Edit_Select]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Edit_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_SanPham_Edit_Select]
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Edit]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Edit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_SanPham_Edit]
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Xoa]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Xoa]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_SanPham_Xoa]
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Them]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Them]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_SanPham_Them]
GO
/****** Object:  StoredProcedure [dbo].[Sanpham_Chitiet]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sanpham_Chitiet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Sanpham_Chitiet]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_DanhSach_NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_DanhSach_NhomSP]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SanPham_DanhSach_NhomSP]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham]') AND type in (N'U'))
DROP TABLE [dbo].[SanPham]
GO
/****** Object:  StoredProcedure [dbo].[LoginSys]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginSys]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoginSys]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Rand]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_Rand]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SanPham_Rand]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contacts]') AND type in (N'U'))
DROP TABLE [dbo].[Contacts]
GO
/****** Object:  StoredProcedure [dbo].[SearchSP]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchSP]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SearchSP]
GO
/****** Object:  StoredProcedure [dbo].[SanphamKhac]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanphamKhac]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SanphamKhac]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[A_PersonalInfor]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_PersonalInfor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[A_PersonalInfor]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc]') AND type in (N'U'))
DROP TABLE [dbo].[TinTuc]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhomSP]') AND type in (N'U'))
DROP TABLE [dbo].[NhomSP]
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_Chitiet]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_Chitiet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TinTuc_Chitiet]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_DanhSach]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SanPham_DanhSach]
GO
/****** Object:  StoredProcedure [dbo].[Sanpham_Moi]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sanpham_Moi]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Sanpham_Moi]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Top]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_Top]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SanPham_Top]
GO
/****** Object:  Default [DF_NhanVien_Trangthai]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_NhanVien_Trangthai]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
Begin
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [DF_NhanVien_Trangthai]

End
GO
/****** Object:  Default [DF_NhomSP_Trangthai]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_NhomSP_Trangthai]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhomSP]'))
Begin
ALTER TABLE [dbo].[NhomSP] DROP CONSTRAINT [DF_NhomSP_Trangthai]

End
GO
/****** Object:  Default [DF_Order_Details_UnitPrice]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
Begin
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [DF_Order_Details_UnitPrice]

End
GO
/****** Object:  Default [DF_Order_Details_Quantity]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
Begin
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [DF_Order_Details_Quantity]

End
GO
/****** Object:  Default [DF_Order_Details_Discount]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
Begin
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [DF_Order_Details_Discount]

End
GO
/****** Object:  Default [DF_Orders_Freight]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Orders_Freight]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
Begin
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF_Orders_Freight]

End
GO
/****** Object:  Default [DF_SanPham_Soluot]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SanPham_Soluot]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
Begin
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [DF_SanPham_Soluot]

End
GO
/****** Object:  Default [DF_SanPham_Trangthai]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SanPham_Trangthai]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
Begin
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [DF_SanPham_Trangthai]

End
GO
/****** Object:  Default [DF_TinTuc_Noibat]    Script Date: 04/30/2012 17:06:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_TinTuc_Noibat]') AND parent_object_id = OBJECT_ID(N'[dbo].[TinTuc]'))
Begin
ALTER TABLE [dbo].[TinTuc] DROP CONSTRAINT [DF_TinTuc_Noibat]

End
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Top]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_Top]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SanPham_Top]
 AS
select top 10 with ties MaSP, TenSP, MoTaSP,CONVERT(varchar, CONVERT(money, Dongia), 1) as DonGia, AnhSP
from SanPham
where Feature = 1
order by MaNSP

--Create procedure SanPham_Them
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sanpham_Moi]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sanpham_Moi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Sanpham_Moi]
	
	
AS
	select top 8 with ties MaSP, TenSP, MoTaSP,CONVERT(varchar, CONVERT(money, Dongia), 1) as DonGia, AnhSP FROM Sanpham ORDER BY MaSP DESC 
	RETURN

-- create Procedure Sanpham_Moi
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_DanhSach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SanPham_DanhSach]
AS 
Select MaSP, TenSP,MoTaSP,CONVERT(varchar, CONVERT(money, Dongia), 1) as DonGia,AnhSP,MaNSP
from SanPham
--Create PROCEDURE SanPham_DanhSach_NhomSP
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_Chitiet]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_Chitiet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[TinTuc_Chitiet] @id int
As
Select *
From TinTuc
where MaTin = @id

update Tintuc set Noibat = Noibat+1 where MaTin = @id
' 
END
GO
/****** Object:  Table [dbo].[NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhomSP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NhomSP](
	[MaNSP] [int] IDENTITY(1,1) NOT NULL,
	[TenNSP] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK__NhomSP__03317E3D] PRIMARY KEY CLUSTERED 
(
	[MaNSP] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[NhomSP] ON
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (1, N'Laptop', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (2, N'Desktop', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (3, N'Keyboard', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (4, N'Mouse', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (5, N'MainBoard', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (6, N'Printer', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (7, N'Scaner', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (8, N'Ram', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (9, N'HDD', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (10, N'CD/DVD', 1)
INSERT [dbo].[NhomSP] ([MaNSP], [TenNSP], [Trangthai]) VALUES (11, N'Điện Thoại 01', 0)
SET IDENTITY_INSERT [dbo].[NhomSP] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [nvarchar](24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[username] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Address], [Phone], [Email], [username], [password]) VALUES (1, N'TNT', N'BK', N'9876', N'9876', NULL, NULL)
INSERT [dbo].[Customers] ([CustomerID], [Fullname], [Address], [Phone], [Email], [username], [password]) VALUES (2, N'Trần Ngọc Thắng', N'Số nhà 19 ngõ 3 Phạm văn Đồng, Cầu Giấy,Hà Nội', N'0974234940', N'toi_loi_acon@yahoo.com', N'tranngoc8x', N'123456')
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[TinTuc]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TinTuc](
	[Matin] [int] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Tomtat] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Noidung] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Anh] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ngaydang] [smalldatetime] NULL,
	[Noibat] [int] NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK__MucTin__108B795B] PRIMARY KEY CLUSTERED 
(
	[Matin] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc]') AND name = N'IX_TinTuc')
CREATE NONCLUSTERED INDEX [IX_TinTuc] ON [dbo].[TinTuc] 
(
	[Matin] ASC
)WITH (IGNORE_DUP_KEY = OFF)
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON
INSERT [dbo].[TinTuc] ([Matin], [Tieude], [Tomtat], [Noidung], [Anh], [Ngaydang], [Noibat], [Trangthai]) VALUES (4, N'Màn hình Retina của New iPad “ngốn” pin kinh khủng ', N'(Dân trí) - Một loạt các cuộc kiểm tra do trang blog chuyên về màn hình Dot Color thực hiện nhận thấy công nghệ tạo màu sắc sặc sỡ của màn hình Retina trên máy tính bảng thế hệ mới New iPad ngốn nhiều pin từ 20-30% so với iPad 2.', N'Kể từ lúc Apple tung ra thị trường New iPad với cải tiến ấn tượng nhất là màn hình Retina thì ai cũng thừa hiểu rằng màn hình độ phân giải cao hơn nhiều lần so với HDTV sẽ ngốn rất nhiều điện năng. Tuy nhiên, một nghiên cứu mới nhất do Dot Color thực hiện phát hiện ra một điều khá thú vị cho thấy chức năng tiêu hao nhiều điện nhất chính là công nghệ tăng chất lượng màu sắc trên màn hình.', N'newipadnb_51dc0.jpg', CAST(0x9FCB02DC AS SmallDateTime), 10, 1)
INSERT [dbo].[TinTuc] ([Matin], [Tieude], [Tomtat], [Noidung], [Anh], [Ngaydang], [Noibat], [Trangthai]) VALUES (5, N'Xuất hiện Firefox 14 với nhiều tính năng mới ', N'(Dân trí) - Mặc dù chỉ mới xuất hiện ở dạng thử nghiệm đầu tiên, tuy nhiên phiên bản Firefox 14 vẫn cho thấy mức độ ổn định và tốc độ ấn tượng. Bên cạnh đó, phiên bản này còn được trang bị một vài tính năng mới và sự thay đổi về giao diện.', N'Không lâu sau khi Firefox 11 được chính thức lộ diện, Mozilla đã lại tiếp tục phát triển phiên bản Firefox 14, với bản thử nghiệm đầu tiên đã được ra mắt với khá nhiều sự thay đổi ấn tượng.', N'Firefox-14-av_8ad80.jpg', CAST(0x9FCB02DC AS SmallDateTime), 6, 1)
INSERT [dbo].[TinTuc] ([Matin], [Tieude], [Tomtat], [Noidung], [Anh], [Ngaydang], [Noibat], [Trangthai]) VALUES (6, N'Lộ hình ảnh Chrome book VAIO của Sony ', N'(Dân trí) - Chiếc máy tính xách tay chạy hệ điều hành Chrome của Google do Sony sản xuất vừa xuất hiện trên website của Ủy ban thương mại Mỹ FCC. Sản phẩm VAIO VCC111 đã được kiểm định từ 6 tháng trước nhưng đến thời điểm này, Sony chưa tung ra thị trường.', N'Trên trang web của FCC đăng tải một số hình ảnh kèm hướng dẫn sử dụng của Chromebook VAIO VCC111. Những hình ảnh này cho thấy FCC đã phê duyệt sản phẩm của Sony từ tháng 9 năm ngoái.', N'Vaio8_9ae51.jpg', CAST(0x9FCB02DC AS SmallDateTime), 2, 1)
INSERT [dbo].[TinTuc] ([Matin], [Tieude], [Tomtat], [Noidung], [Anh], [Ngaydang], [Noibat], [Trangthai]) VALUES (7, N'RIM tính kế "chiêu dụ" giới phát triển ứng dụng iOS ', N'(Dân trí) - Hãng sản xuất điện thoại di động RIM vừa đăng thông báo tuyển dụng lên LinkedIn nhằm tìm kiếm một nhà phát triển ứng dụng iOS, hệ điều hành di động của Apple. Yêu cầu của ứng viên là phải có 7 đến 10 năm kinh nghiệm trong lĩnh vực này.', N'Động thái của RIM được đánh giá là khá bất ngờ và khiến nhiều người cho rằng hãng này đang muốn đặt chân vào lãnh địa của Apple. Thông báo tuyển dụng của RIM nêu rõ công ty đang muốn tìm kiếm một "nhà phát triển di động iOS cao cấp". Theo đó, công việc của ứng viên sẽ "tạo ra các ứng dụng doanh nghiệp thú vị để phân phối trên nền tảng iOS" và phải biết cách xây dựng cũng như triển khai "các ứng dụng phức tạp cho các thiết bị iPhone và iPad". RIM còn yêu cầu các ứng viên dự tuyển phải trưng ra một vài ứng dụng mà họ đã phát triển và bán trên gian hàng ứng dụng App Store của Apple.', N'devicePlayBookAndBlackBerry_f5436.jpg', CAST(0x9FCB02DC AS SmallDateTime), 2, 1)
INSERT [dbo].[TinTuc] ([Matin], [Tieude], [Tomtat], [Noidung], [Anh], [Ngaydang], [Noibat], [Trangthai]) VALUES (8, N'BlackBerry đánh mất ngôi vị số 1 trên “sân nhà” ', N'(Dân trí) - Nhà sản xuất RIM đã bị đối thủ Apple hất cẳng khỏi vị trí số 1 trên thị trường di động ngay trên sân nhà là nước Canada. Đây là lần đầu tiên trong lịch sử RIM đánh mất vị thế của mình.', N'Blackberry 9900 là chiếc điện thoại cao cấp nhất của RIM hiện nay.', N'BB_b2055.jpg', CAST(0x9FCB02DC AS SmallDateTime), 3, 1)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
/****** Object:  StoredProcedure [dbo].[A_PersonalInfor]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_PersonalInfor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_PersonalInfor]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from NhanVien where MaNV = @id
END
' 
END
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HotenNV] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MatKhau] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DiaChi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tendangnhap] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Trangthai] [int] NULL,
	[Phone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ngaysinh] [smalldatetime] NULL,
 CONSTRAINT [PK__NhanVien__33D4B598] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[NhanVien] ([MaNV], [HotenNV], [Email], [MatKhau], [DiaChi], [Tendangnhap], [Trangthai], [Phone], [Ngaysinh]) VALUES (N'1  ', N'Trần Ngọc Thắng', N'tranngocthang89@gmail.com', N'123456', N'VIet Nam', N'tranngoc8x', 1, N'0974324940', CAST(0xA0B30000 AS SmallDateTime))
INSERT [dbo].[NhanVien] ([MaNV], [HotenNV], [Email], [MatKhau], [DiaChi], [Tendangnhap], [Trangthai], [Phone], [Ngaysinh]) VALUES (N'2  ', N'Tran Ngoc', N'toi_loi_acon@yahoo.com', N'123456', N'Viet Nam', N'toi_loi_acon', 1, N'0974324940', CAST(0x80010000 AS SmallDateTime))
/****** Object:  StoredProcedure [dbo].[SanphamKhac]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanphamKhac]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SanphamKhac]
	-- Add the parameters for the stored procedure here
	  @id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	DECLARE @manhom int;
	 SET @manhom = (SELECT MaNSP from Sanpham where MaSP=@id);
    -- Insert statements for procedure here
	SELECT MaSP,TenSP,AnhSP from Sanpham where MaNSP = @manhom and Trangthai =1 and MaSP != @id;
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[SearchSP]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchSP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchSP]
	-- Add the parameters for the stored procedure here
	@txtkey nvarchar(200),
	@type int,
	@pricefrom money,
	@priceto money
AS
BEGIN
	SET NOCOUNT ON;
	 
	if (@txtkey != '''')
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and Trangthai = 1
		END
	if(@txtkey != '''' and @type != 0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and Trangthai = 1
		END
	if(@txtkey != '''' and @type != 0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and Dongia >= @pricefrom and Trangthai = 1
		END
	 if(@txtkey != '''' and @type != 0 and @priceto !=0 )
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and Dongia <= @priceto and Trangthai = 1
		END
	 if(@txtkey != '''' and @type != 0 and @priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	if(@txtkey != '''' and @priceto !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and Dongia <= @priceto and Trangthai = 1
		END
	if(@txtkey != '''' and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and Dongia >= @pricefrom and Trangthai = 1
		END
	if(@txtkey != '''' and @priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	--end 1xxx
	--start 0xxx-------------------------------------------------
	if(@type != 0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and Trangthai = 1
		END
	if(@type != 0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and Dongia >= @pricefrom and Trangthai = 1
		END
	 if(@type != 0 and @priceto !=0 )
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and Dongia <= @priceto and Trangthai = 1
		END
	 if(@type != 0 and @priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and MaNSP=@type and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	if(@priceto !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and Dongia <= @priceto and Trangthai = 1
		END
	if(@pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and Dongia >= @pricefrom and Trangthai = 1
		END
	if(@priceto !=0 and @pricefrom !=0)
		BEGIN
			SELECT * FROM Sanpham where TenSP like ''%''+ @txtkey+''%'' and (Dongia BETWEEN @pricefrom and @priceto) and Trangthai = 1
		END
	ELSE
		BEGIN
			SELECT * FROM Sanpham where Trangthai = 1
		END
END' 
END
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contacts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contacts](
	[Contactid] [int] IDENTITY(1,1) NOT NULL,
	[Names] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contents] [nvarchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] [int] NULL,
	[Ngaygui] [datetime] NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Contactid] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON
INSERT [dbo].[Contacts] ([Contactid], [Names], [Phone], [Email], [Contents], [Address], [Status], [Ngaygui]) VALUES (2, N'Trần Ngọc Thắng', N'0974324940', N'toi_loi_acon@yahoo.com', N'Liên hệ
', N'P305,Số nhà 19, ngõ 3, Phạm Văn Đồng, Cầu Giấy, Hà Nội', 0, CAST(0x0000A0420118C802 AS DateTime))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
/****** Object:  StoredProcedure [dbo].[SanPham_Rand]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_Rand]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SanPham_Rand]
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  top 5 MaSP ,TenSP,AnhSP from Sanpham where Trangthai = 1 order by NEWID();
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoginSys]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginSys]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
CREATE PROCEDURE  [dbo].[LoginSys]
@user nvarchar(50), 
@pass nvarchar(50)
AS
BEGIN
	DECLARE @OutPut int
	DECLARE @KiemTraTenDangNhap int
	DECLARE @KiemTraMatKhau int
	DECLARE @Trangthai int 
	DECLARE @Hoten nvarchar(255) 
	DECLARE @sid nvarchar(255) 

	SELECT @KiemTraTenDangNhap=isnull(Count(nv.Tendangnhap),0) 
	FROM NhanVien nv 
	WHERE nv.Tendangnhap=@user


	SELECT @Trangthai = isnull(nv.Trangthai ,0)
	FROM NhanVien nv 
	WHERE nv.Tendangnhap=@user


	IF @KiemTraTenDangNhap=0 
		SET @OutPut=1 -- Sai TenDangNhap
	ELSE


	BEGIN
		SELECT @KiemTraMatKhau = isnull(count(*),0) 
		FROM NhanVien nv 
		WHERE nv.Tendangnhap=@user 
			AND nv.MatKhau=(@pass)
--DEPWDENCRIPT :: lấy ra
--pwdencrypt :: insert

		IF @KiemTraMatKhau=0
			SET @OutPut=1 -- Sai mật khẩu
		ELSE
			BEGIN
			   IF @Trangthai=0
					SET @OutPut=2-- TenDangNhap đang bị khóa 
			   ELSE
					SET @OutPut=0
					SET @Hoten =(SELECT HotenNV
								FROM NhanVien nv 
								WHERE nv.Tendangnhap=@user 
								AND nv.MatKhau=@pass)
					SET @sid  =(SELECT MaNV
								FROM NhanVien nv 
								WHERE nv.Tendangnhap=@user 
								AND nv.MatKhau=@pass)
			END
	END
	SELECT @OutPut AS result ,@sid as manv,@Hoten as hoten
END ' 
END
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AnhSP] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MoTaSP] [nvarchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DonGia] [money] NOT NULL,
	[MaNSP] [int] NOT NULL,
	[Feature] [tinyint] NULL,
	[Soluot] [int] NULL,
	[Trangthai] [int] NULL,
	[Soluong] [int] NULL,
	[Giamgia] [money] NULL,
	[Chitiet] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__SanPham__145C0A3F] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (3, N'Samsung SyncMaster 2053BW ', N'show_image_in_imgtag_008.jpg', N'Intel Core 2 Duo P8400 2.26GHz, 2GB RAM, 160GB HDD, VGA NVIDIA GeForce 9300M GS, 13.1 inch, Windows Vista Business. ', 100.0000, 1, 1, 57, 1, 1, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (4, N'HP Pavilion TX2510US 12.1', N'show_image_in_imgtag.jpg', N'Intel Core 2 Duo T8100 2.1GHz, 2GB RAM, 200GB HDD, VGA Intel GMA X3100, 14.1 inch, Windows Vista Home Premium.', 150.0000, 1, 0, 9, 1, 2, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (5, N'Microsoft SideWinder ', N'show_image_in_imgtag_010.jpg', N'Core 2 Duo T9300 (2*2.5GHz) -Penryn 45nm / 6MB Cache / 4.0GB (2x2Gb) Ram / VGA nVidia GeForce  9300M GS 256MB / 320GB HDD / DVD-RW DL / Fax / 12.1" WXGA Splendid TFT Display  / FingerPrin  /  0.3 MPs Camera Weight 1.6Kg / Pin 6 Cells  / Card Reader / Bluetooth  / Wireless 3G Antenna  - China - V? s?i Carbon ,khung  Titanium, Webcam b?c dá Sapphire , lót tay b?ng da', 200.0000, 2, 1, 9, 1, 3, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (6, N'HP Pavilion DV6910US 15.4 ', N'show_image_in_imgtag.jpg', N'Core 2 Duo 2.4GHz  / 3MB Cache / 2Gb RAM (2x1GB )/250GB HDD / VGA Intel 144MB Shared / DVDRW Nic Gigabit / Airport Extreme/ 13.3" TFT Display / Weight 2,0 Kg / OS  Mac ( tuong thích v?i Windows )', 250.0000, 2, 1, 12, 1, 4, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (7, N'HP W2408H 24 Widescreen ', N'show_image_in_imgtag_004.jpg', N'HP Mini-note 2133 -  KZ979PA#UUF  ( Win Vista Basic ) - không kèm c?p da CPU VIA C7-M ULV (1.2 GHz, 128 KB L2 cache,800 MHz FSB) / 1.0GB DDR2  Ram / 120GB SATA  HDD VGA VIA Chrome 9 upto 64 MB shared / 8.9" WXGA display (1280 x 768) / NIC 100/100TX Weight 1.27Kg /  Wireless 4311AG 802.11b/g   - Made in Singapo', 300.0000, 3, 1, 11, 1, 5, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (8, N'Logitech VX Nano Cordless ', N'show_image_in_imgtag_015.jpg', N'Intel Pentium 4 531, 3.0GHz, 1MB Cache, 256MB DDR2, 80GB HDD SATA, HP 17" CRT, Windows XP Pro', 350.0000, 3, 0, 8, 1, 6, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (10, N'HP W2207 22 Widescreen ', N'show_image_in_imgtag_013.jpg', N'- Intel Core 2 Duo E7200 2x 2.53GHz', 400.0000, 4, 1, 10, 1, 7, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (13, N'X2Gen 22 Widescreen ', N'show_image_in_imgtag_018.jpg', N'Hãng s?n xu?t: HP (Hewlett Packard) - Compaq / Ki?u máy: Ki?u Tower / Dòng CPU: Intel Core 2 Duo E4300 / T?c d? CPU: 1.8GHz / Cache L2 size: 2MB / Chipset Mainboard: Intel Q963 / ? quang (Optical drive): DVD-ROM / Dung lu?ng ? c?ng: 80GB / Giao ti?p ? c?ng: SATA / S? vòng quay ? c?ng: 7200RPM / Dung lu?ng RAM: 512MB / Lo?i RAM: DDR2 - 667MHz / Dung lu?ng RAM g?n t?i da: 4GB / Card màn hình: Onboard - - / Dung lu?ng b? nh? d? h?a: 128MB / Giao ti?p card hình: - / Card m?ng: 10/100/1000Mbps / Card', 450.0000, 4, 0, 9, 1, 8, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (14, N'HP W2408H 24 Widescreen ', N'show_image_in_imgtag_011.jpg', N'Hãng s?n xu?t: FPT Elead / Ki?u máy: Ki?u Tower / Dòng CPU: Intel Core Duo E2180 / T?c d? CPU: 2.0GHz / Cache L2 size: 1MB / Chipset Mainboard: Intel 945GC / ? quang (Optical drive): DVD-ROM / Dung lu?ng ? c?ng: 160GB / Giao ti?p ? c?ng: SATA2 / S? vòng quay ? c?ng: 7200RPM / Dung lu?ng RAM: 1GB / Lo?i RAM: DDR2 - 667MHz / Dung lu?ng RAM g?n t?i da: 4GB / Card màn hình: Onboard - Intel GMA950 / Dung lu?ng b? nh? d? h?a: 224MB / Giao ti?p card hình: Onboard / Card m?ng: 10/100Mbps / Card WIFI: Kh', 500.0000, 5, 1, 8, 1, 9, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (15, N'Logitech diNovo Edge ', N'show_image_in_imgtag_007.jpg', N'Ð?ng c?p chuyên nghi?p ( Ki?u dáng m?i )', 550.0000, 5, 0, 8, 1, 3, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (16, N'HP 2133-KR922UT 8.9 ', N'show_image_in_imgtag_017.jpg', N'Chua Ro Tuy Ban Lap', 600.0000, 6, 1, 15, 1, 7, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (18, N'Samsung SyncMaster 2253LW', N'show_image_in_imgtag_014.jpg', N'Chua Ro Tuy Ban Lap', 650.0000, 6, 0, 10, 1, 2, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (20, N'Toshiba Satellite A305 ', N'show_image_in_imgtag_012.jpg', N'Chua Ro Tuy Ban Lap', 700.0000, 7, 0, 21, 1, 3, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (21, N'Logitech V450 Cordless ', N'show_image_in_imgtag_009.jpg', N'Chua Ro Tuy Ban Lap', 750.0000, 7, 1, 14, 1, 2, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (22, N'MacBook MB403LL/A ', N'show_image_in_imgtag_003.jpg', N'Chua Ro Tuy Ban Lap', 800.0000, 8, 0, 8, 1, 4, 0.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (23, N'MacBook Pro MB166LL/A', N'show_image_in_imgtag_016.jpg', N'd? phân gi?i 400-800-1600-2000 dpi. Giao ti?p USB, kèm d?u chuy?n t? c?ng USB sang c?ng PS/2.  ', 850.0000, 8, 0, 8, 1, 5, 4.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (24, N'MacBook Pro MB133LL/A', N'show_image_in_imgtag_002.jpg', N'Chua Ro Tuy Ban Lap', 900.0000, 9, 1, 8, 1, 6, 3.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (26, N'MacBook MB404LL/A', N'show_image_in_imgtag_005.jpg', N'Hãng s?n xu?t: Genius / Lo?i: Chu?t Quang / Ki?u giao ti?p: USB, / Dành cho: Ngu?i thu?n tay trái ho?c tay ph?i / Ð? phân gi?i quang h?c: 1200 dpi / S? nút: 3 nút / Nút cu?n: D?c / Tr?ng lu?ng (g): 55 / Gói s?n ph?m: Chu?t, /', 950.0000, 9, 0, 10, 1, 7, 3.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (27, N'MacBook Pro 15', N'show_image_in_imgtag_macbook_apple.jpg', N'Chu?t Laser cho Laptop ( Không dây )', 1000.0000, 10, 0, 19, 1, 8, 2.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [AnhSP], [MoTaSP], [DonGia], [MaNSP], [Feature], [Soluot], [Trangthai], [Soluong], [Giamgia], [Chitiet]) VALUES (30, N'MacBook Pro 16', N'show_image_in_imgtag_017.jpg', N'NULLHãng s?n xu?t: Genius / Lo?i: Chu?t Quang / Ki?u giao ti?p: USB, / Dành cho: Ngu?i thu?n tay trái ho?c tay ph?i / Ð? phân gi?i quang h?c: 1200 dpi / S? nút: 3 nút / Nút cu?n: D?c / Tr?ng lu?ng (g): 55 / Gói s?n ph?m: Chu?t, /', 1100.0000, 10, 1, 25, 1, 8, 1.0000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Billtotal] [money] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [Billtotal]) VALUES (2, 1, CAST(0x0000A0390177C1CC AS DateTime), 900.0000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[MaSP] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_DanhSach_NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_DanhSach_NhomSP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SanPham_DanhSach_NhomSP](@MaNSP int)
AS 
Select MaSP, TenSP,MoTaSP,convert(int,DonGia) as DonGia,AnhSP,MaNSP,Soluot,Soluong
from SanPham
where MaNSP=@MaNSP
--Create PROCEDURE SanPham_DanhSach2

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sanpham_Chitiet]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sanpham_Chitiet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sanpham_Chitiet]
	-- Add the parameters for the stored procedure here
	 @MaSP int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select MaSP, TenSP,MoTaSP,convert(int,DonGia) as DonGia,AnhSP,MaNSP,Soluot,Chitiet,Soluong,convert(int,Giamgia) as Giamgia from SanPham where MaSP=@MaSP;
	update Sanpham set Soluot = Soluot +1 where MaSP = @MaSP
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Them]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Them]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_SanPham_Them]
	-- Add the parameters for the stored procedure here
	(
		@TenSP nvarchar(200)
       ,@AnhSP nvarchar(50)
       ,@MoTaSP nvarchar(2000)
       ,@DonGia money
       ,@MaNSP int
       ,@Feature tinyint
       ,@Trangthai int
       ,@Soluong int
       ,@Giamgia money
	   ,@Chitiet nvarchar(4000)
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


INSERT [TNTCOMPUTER].[dbo].[SanPham]
           ([TenSP] ,[AnhSP] ,[MoTaSP] ,[DonGia] ,[MaNSP],[Feature] ,[Soluot],[Trangthai],[Soluong] ,[Giamgia],[Chitiet])
     VALUES(@TenSP ,@AnhSP ,@MoTaSP,@DonGia ,@MaNSP ,@Feature,0,@Trangthai ,@Soluong,@Giamgia,@Chitiet)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Xoa]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Xoa]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_SanPham_Xoa]
	-- Add the parameters for the stored procedure here
(@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from SanPham where MaSP= @id
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Edit]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Edit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_SanPham_Edit]
	-- Add the parameters for the stored procedure here
	@id int,
	@TenSP nvarchar(200),
  @AnhSP nvarchar(50),
  @MoTaSP nvarchar(2000),
  @DonGia money,
  @MaNSP int,
  @Feature tinyint,
  @Trangthai int,
  @Soluong int,
  @Giamgia money,
  @Chitiet nvarchar(4000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [TNTCOMPUTER].[dbo].[SanPham]
	SET [TenSP] = @TenSP 
      ,[AnhSP] = @AnhSP 
      ,[MoTaSP] = @MoTaSP 
      ,[DonGia] = @DonGia 
      ,[MaNSP] = @MaNSP 
      ,[Feature] = @Feature 
      ,[Trangthai] = @Trangthai 
      ,[Soluong] = @Soluong 
      ,[Giamgia] = @Giamgia 
      ,[Chitiet] = @Chitiet
	WHERE MaSP = @id
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_SanPham_Edit_Select]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_SanPham_Edit_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_SanPham_Edit_Select]
	-- Add the parameters for the stored procedure here
	(@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [TenSP]
      ,[MoTaSP]
      ,[DonGia]
      ,[Soluong]
      ,[Giamgia]
	  ,[Chitiet]
from SanPham
where MaSP = @id
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddOrderDetails]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddOrderDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddOrderDetails] (
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewOrder]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddNewOrder] (
	 @makhach INT
	,@tongtien MONEY
	,@note VARCHAR(1000)
	

	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	 
	-- Insert statements for procedure here
	INSERT Orders (
		CustomerID
		,OrderDate
		,Billtotal
		,Notes
		)
	VALUES (
		@makhach
		,GETDATE()
		,@tongtien
		,@note
		)	
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_DanhmucSP_Xoa]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhmucSP_Xoa]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_DanhmucSP_Xoa]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE NhomSP where MaNSP = @id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[NhomSP_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhomSP_DanhSach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[NhomSP_DanhSach]
as
select * from NhomSP where Trangthai = 1;
--Create procedure NhomSP_Sua

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Edit_Select]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Edit_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_NhomSP_Edit_Select]
	-- Add the parameters for the stored procedure here
	(@id nvarchar(255))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @tennhom nvarchar(50)
    -- Insert statements for procedure here
SET @tennhom = ''tnt''
	 SELECT TenNSP from NhomSP where MaNSP = @id
	RETURN @tennhom
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Title_NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham_Title_NhomSP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SanPham_Title_NhomSP](@MaNSP int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TenNSP FROM NhomSP WHERE MaNSP=@MaNSP
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_Sanpham_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Sanpham_DanhSach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_Sanpham_DanhSach]
	-- Add the parameters for the stored procedure here
	--@order int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT  rank() OVER (ORDER BY dbo.SanPham.MaSP DESC) AS stt,  dbo.SanPham.MaSP, dbo.SanPham.TenSP, CONVERT(varchar, CONVERT(money, dbo.SanPham.Dongia), 1) as DonGia, dbo.NhomSP.TenNSP
		FROM dbo.NhomSP INNER JOIN
		dbo.SanPham ON dbo.NhomSP.MaNSP = dbo.SanPham.MaNSP ORDER BY dbo.SanPham.MaSP DESC

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_DanhmucSP_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhmucSP_DanhSach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_DanhmucSP_DanhSach](
	@name nvarchar(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if(@name != '''')
		Begin
			SELECT ROW_NUMBER() 
			OVER (ORDER BY MaNSP) AS stt,* from NhomSP where TenNSP like ''%''+@name+''%''
		end
	else
		begin
			select ROW_NUMBER() 
			OVER (ORDER BY MaNSP) AS stt,* from NhomSP
		end
END

' 
END
GO
/****** Object:  View [dbo].[View_NhomSP_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_NhomSP_DanhSach]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_NhomSP_DanhSach]
AS
SELECT     MaNSP, TenNSP, Trangthai
FROM         dbo.NhomSP
'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NhomSP"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 163
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1725
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'View_NhomSP_DanhSach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'View_NhomSP_DanhSach'
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Them]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Them]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_NhomSP_Them](
	-- Add the parameters for the stored procedure here
	@ten nvarchar(255),
	@trangthai int 
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @check int
		SELECT @check=isnull(Count(nsp.TenNSP),0) 
		FROM NhomSP nsp
		WHERE TenNSP = @ten;
	if(@check = 0)
	BEGIN
		INSERT NhomSP(TenNSP,Trangthai) VALUES(@ten,@trangthai)
	END
	else
		return 1
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Sua]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Sua]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_NhomSP_Sua](
	-- Add the parameters for the stored procedure here
	@id int,
	@name nvarchar(255),
	@trangthai int
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE NhomSP SET TenNSP=@name,Trangthai=@trangthai WHERE MaNSP = @id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_NhomSP_Detail]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_NhomSP_Detail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_NhomSP_Detail]
	-- Add the parameters for the stored procedure here
	(@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from NhomSP where MaNSP = @id
END
' 
END
GO
/****** Object:  View [dbo].[VIEW_A_SanPham_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VIEW_A_SanPham_DanhSach]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[VIEW_A_SanPham_DanhSach]
AS
SELECT     TOP (100) PERCENT dbo.SanPham.MaSP, dbo.SanPham.TenSP, dbo.SanPham.DonGia, dbo.NhomSP.TenNSP
FROM         dbo.NhomSP INNER JOIN
                      dbo.SanPham ON dbo.NhomSP.MaNSP = dbo.SanPham.MaNSP
ORDER BY dbo.SanPham.TenSP
'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NhomSP"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2745
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1035
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_A_SanPham_DanhSach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_A_SanPham_DanhSach'
GO
/****** Object:  StoredProcedure [dbo].[Chitiet_Nguoimua]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chitiet_Nguoimua]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Chitiet_Nguoimua](@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Customers where CustomerID =@id
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Update_Cus]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Update_Cus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Cus](
@id int,
@Fullname nvarchar(30),
@Address nvarchar(1000),
@Phone nvarchar(24),
@Email nvarchar(60)

)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Customers
   SET Fullname = @Fullname
      ,Address = @Address
      ,Phone = @Phone
      ,Email = @Email
    
 WHERE CustomerID = @id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_CustomerDel]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_CustomerDel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_CustomerDel]
	(@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete Customers where CustomerID = @id
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_Cus_Detail]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Cus_Detail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_Cus_Detail]
	-- Add the parameters for the stored procedure here
	(@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Customers where CustomerID = @id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Resgister]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resgister]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Resgister](
	@name nvarchar(30),
	@add nvarchar(1000),
	@phone nvarchar(24),
	@email nvarchar(60),
	@username nvarchar(30),
	@pass nvarchar(50)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert Customers(Fullname,Address,Phone,Email,Username,Password) VALUES(@name,@add,@phone,@email,@username,@pass)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CusLogin]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CusLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
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
CREATE PROCEDURE  [dbo].[CusLogin]
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_DanhsachCus]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhsachCus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_DanhsachCus]
	-- Add the parameters for the stored procedure here
(@name nvarchar(255))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if(@name != '''')
		Select ROW_NUMBER() OVER (ORDER BY CustomerID) AS stt,* from Customers where Fullname like ''%''+@name+''%''
	else
		Select ROW_NUMBER() OVER (ORDER BY CustomerID) AS stt,* from Customers
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_TinNoiBat]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_TinNoiBat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[TinTuc_TinNoiBat]
AS 
select top 3 with ties MaTin,Tieude,LEFT(Tomtat,100)+''...'' as Tomtat
from Tintuc
where Trangthai=''1'' order by Noibat DESC,MaTin desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_Moi]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_Moi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[TinTuc_Moi]
 AS
select top 6 with ties MaTin,LEFT(Tieude,22)+''...'' as Tieude
from Tintuc
where Trangthai=''1''
order by MaTin desc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TinTuc_DanhSach]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinTuc_DanhSach]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[TinTuc_DanhSach]
AS 
select MaTin,TieuDe,Left(Tomtat,1000) AS Tomtat,Anh,Ngaydang 
from TinTuc
where  Trangthai = 1

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_TinTuc_Sua]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_TinTuc_Sua]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_TinTuc_Sua](
	-- Add the parameters for the stored procedure here
	@id int,
	@tieude nvarchar(200),
	@tomtat nvarchar(1000),
	@noidung nvarchar(4000),
	@anh nvarchar(100),
	--@ngaydang datetime,
	@noibat int,
	@trangthai int
) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
 
	update TinTuc set  Tieude=@tieude,Tomtat=@tomtat,Noidung=@noidung,Anh=@anh,Ngaydang=GETDATE(),Noibat=@noibat,Trangthai=@trangthai where MaTin = @id
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_News_Edit_Select]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_News_Edit_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_News_Edit_Select](
@id int 
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	 SELECT Tieude,Tomtat,Noidung from TinTuc where MaTin = @id
	 
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_News_Delete]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_News_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_News_Delete]
	-- Add the parameters for the stored procedure here
	(@id int )
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from TinTuc where MaTin = @id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Tintuc_Rand]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tintuc_Rand]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Tintuc_Rand]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT top 10 MaTin,Tieude from Tintuc where Trangthai=1 order by NEWID(); 
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_TinTuc_Add]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_TinTuc_Add]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_TinTuc_Add](
	-- Add the parameters for the stored procedure here
	@tieude nvarchar(255),
	@tomtat nvarchar(1000),
	@noidung nvarchar(4000),
	@anh nvarchar(100),
	--@ngaydang datetime,
	@noibat int,
	@trangthai int
) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
 
	INSERT TinTuc(Tieude,Tomtat,Noidung,Anh,Ngaydang,Noibat,Trangthai) VALUES(@tieude,@tomtat,@noidung,@anh,GETDATE(),@noibat,@trangthai)
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_DanhSach_BaiViet]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhSach_BaiViet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_DanhSach_BaiViet] (
	-- Add the parameters for the stored procedure here
	@name nvarchar(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if(@name != '''')
	BEGIN
		SELECT Matin,LEFT(Tieude,50)+''...'' as Tieude,Ngaydang,Trangthai FROM TinTuc WHERE Tieude LIKE ''%''+@name+''%''
	END
	ELSE
	BEGIN
		SELECT Matin,LEFT(Tieude,50)+''...'' as Tieude,Ngaydang,Trangthai FROM Tintuc 
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_Edit_User]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Edit_User]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_Edit_User](
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_DoiMK]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DoiMK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_DoiMK](
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[LienHe_Add]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LienHe_Add]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LienHe_Add](
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
	INSERT Contacts(Names,Phone,Email,Contents,Address,Ngaygui,Status) VALUES(@name,@phone,@email,@noidung,@add,GETDATE(),0)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_DanhSach_Lienhe]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_DanhSach_Lienhe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_DanhSach_Lienhe]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER (ORDER BY Contactid) AS stt,* from Contacts order by Contactid desc
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_Delete_LH]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_Delete_LH]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_Delete_LH](@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Contacts where Contactid=@id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[A_LH_Detail]    Script Date: 04/30/2012 17:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[A_LH_Detail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[A_LH_Detail](@id int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Contacts where Contactid=@id
END
' 
END
GO
/****** Object:  Default [DF_NhanVien_Trangthai]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_NhanVien_Trangthai]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
Begin
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_Trangthai]  DEFAULT ((0)) FOR [Trangthai]

End
GO
/****** Object:  Default [DF_NhomSP_Trangthai]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_NhomSP_Trangthai]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhomSP]'))
Begin
ALTER TABLE [dbo].[NhomSP] ADD  CONSTRAINT [DF_NhomSP_Trangthai]  DEFAULT ((1)) FOR [Trangthai]

End
GO
/****** Object:  Default [DF_Order_Details_UnitPrice]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
Begin
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]

End
GO
/****** Object:  Default [DF_Order_Details_Quantity]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
Begin
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]

End
GO
/****** Object:  Default [DF_Order_Details_Discount]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
Begin
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]

End
GO
/****** Object:  Default [DF_Orders_Freight]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Orders_Freight]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
Begin
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Billtotal]

End
GO
/****** Object:  Default [DF_SanPham_Soluot]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SanPham_Soluot]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
Begin
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Soluot]  DEFAULT ((0)) FOR [Soluot]

End
GO
/****** Object:  Default [DF_SanPham_Trangthai]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SanPham_Trangthai]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
Begin
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Trangthai]  DEFAULT ((0)) FOR [Trangthai]

End
GO
/****** Object:  Default [DF_TinTuc_Noibat]    Script Date: 04/30/2012 17:06:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_TinTuc_Noibat]') AND parent_object_id = OBJECT_ID(N'[dbo].[TinTuc]'))
Begin
ALTER TABLE [dbo].[TinTuc] ADD  CONSTRAINT [DF_TinTuc_Noibat]  DEFAULT ((0)) FOR [Noibat]

End
GO
/****** Object:  Check [CK_Discount]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_Discount]
GO
/****** Object:  Check [CK_Quantity]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_Quantity]
GO
/****** Object:  Check [CK_UnitPrice]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitPrice]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_UnitPrice]
GO
/****** Object:  ForeignKey [FK_Order Details_SanPham]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order Details_SanPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
/****** Object:  ForeignKey [FK_Order_Details_Orders]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Orders]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
/****** Object:  ForeignKey [FK_SanPham_NhomSP]    Script Date: 04/30/2012 17:06:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SanPham_NhomSP]') AND parent_object_id = OBJECT_ID(N'[dbo].[SanPham]'))
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomSP] FOREIGN KEY([MaNSP])
REFERENCES [dbo].[NhomSP] ([MaNSP])
GO
